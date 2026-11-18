import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';
import '../domain/course_model.dart';
import '../../auth/domain/user_model.dart';

import 'course_catalog_data.dart';

class CourseRepository {
  final FirebaseFirestore _firestore;

  CourseRepository(this._firestore);

  Stream<List<CourseModel>> getCoursesStream({CareerLevel? level, String? category}) {
    Query query = _firestore.collection('courses').where('isPublished', isEqualTo: true);

    if (level != null) {
      query = query.where('targetLevel', isEqualTo: level.name);
    }
    if (category != null && category.isNotEmpty) {
      query = query.where('category', isEqualTo: category);
    }

    return query.snapshots().map((snapshot) {
      if (snapshot.docs.isNotEmpty) {
        return snapshot.docs.map((doc) {
          return CourseModel.fromMap(doc.data() as Map<String, dynamic>, doc.id);
        }).toList();
      }
      // Return comprehensive rich catalogue data if Firestore collection is empty
      var list = CourseCatalogData.allCourses;
      if (level != null) {
        list = list.where((c) => c.targetLevel == level).toList();
      }
      return list;
    });
  }

  Future<CourseModel?> getCourseById(String courseId) async {
    final doc = await _firestore.collection('courses').doc(courseId).get();
    if (doc.exists && doc.data() != null) {
      return CourseModel.fromMap(doc.data()!, doc.id);
    }
    return CourseCatalogData.allCourses.firstWhere(
      (c) => c.id == courseId,
      orElse: () => CourseCatalogData.allCourses.first,
    );
  }

  Stream<List<LessonModel>> getLessonsStream(String courseId) {
    return _firestore
        .collection('lessons')
        .where('courseId', isEqualTo: courseId)
        .where('isPublished', isEqualTo: true)
        .orderBy('orderIndex')
        .snapshots()
        .map((snapshot) {
      if (snapshot.docs.isNotEmpty) {
        return snapshot.docs.map((doc) {
          return LessonModel.fromMap(doc.data(), doc.id);
        }).toList();
      }
      return CourseCatalogData.detailedLessons[courseId] ??
          CourseCatalogData.detailedLessons['course-intern-comm'] ??
          [];
    });
  }
}

final courseRepositoryProvider = Provider<CourseRepository>((ref) {
  return CourseRepository(FirebaseFirestore.instance);
});

final coursesStreamProvider = StreamProvider<List<CourseModel>>((ref) {
  final syncData = ref.watch(appDataSyncProvider);
  return Stream.value(syncData.courses.where((c) => c.isPublished).toList());
});

final courseLessonsProvider = StreamProvider.family<List<LessonModel>, String>((ref, courseId) {
  final syncData = ref.watch(appDataSyncProvider);
  final lessons = syncData.courseLessons[courseId] ??
      CourseCatalogData.detailedLessons[courseId] ??
      CourseCatalogData.detailedLessons['course-intern-comm'] ??
      [];
  return Stream.value(lessons);
});
