import '../../auth/domain/user_model.dart';

enum LessonType {
  text,
  video,
  story,
  quiz,
  worksheet,
}

class QuestionModel {
  final String id;
  final String promptKh;
  final String promptEn;
  final List<String> optionsKh;
  final List<String> optionsEn;
  final int? correctOptionIndex; // Only available on server or instructors
  final String? explanationKh;
  final String? explanationEn;

  const QuestionModel({
    required this.id,
    required this.promptKh,
    required this.promptEn,
    required this.optionsKh,
    required this.optionsEn,
    this.correctOptionIndex,
    this.explanationKh,
    this.explanationEn,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'promptKh': promptKh,
      'promptEn': promptEn,
      'optionsKh': optionsKh,
      'optionsEn': optionsEn,
      if (correctOptionIndex != null) 'correctOptionIndex': correctOptionIndex,
      if (explanationKh != null) 'explanationKh': explanationKh,
      if (explanationEn != null) 'explanationEn': explanationEn,
    };
  }

  factory QuestionModel.fromMap(Map<String, dynamic> map, String id) {
    return QuestionModel(
      id: id,
      promptKh: map['promptKh'] ?? '',
      promptEn: map['promptEn'] ?? '',
      optionsKh: List<String>.from(map['optionsKh'] ?? []),
      optionsEn: List<String>.from(map['optionsEn'] ?? []),
      correctOptionIndex: map['correctOptionIndex'],
      explanationKh: map['explanationKh'],
      explanationEn: map['explanationEn'],
    );
  }
}

class LessonModel {
  final String id;
  final String courseId;
  final String moduleId;
  final String titleKh;
  final String titleEn;
  final LessonType type;
  final int orderIndex;
  
  // 9-part structured curriculum format
  final String? learningObjectives;
  final String? shortExplanation;
  final String? workplaceStory;
  final String? practicalExample;
  final String? practicalExercise;
  final String? reflection;
  final String? workplaceAction;

  // Media
  final String? videoUrl;
  final int? videoDurationSeconds;
  final String? videoTranscript;
  final List<QuestionModel> quizQuestions;
  final bool isPublished;

  const LessonModel({
    required this.id,
    required this.courseId,
    required this.moduleId,
    required this.titleKh,
    required this.titleEn,
    required this.type,
    required this.orderIndex,
    this.learningObjectives,
    this.shortExplanation,
    this.workplaceStory,
    this.practicalExample,
    this.practicalExercise,
    this.reflection,
    this.workplaceAction,
    this.videoUrl,
    this.videoDurationSeconds,
    this.videoTranscript,
    this.quizQuestions = const [],
    this.isPublished = true,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'courseId': courseId,
      'moduleId': moduleId,
      'titleKh': titleKh,
      'titleEn': titleEn,
      'type': type.name,
      'orderIndex': orderIndex,
      'learningObjectives': learningObjectives,
      'shortExplanation': shortExplanation,
      'workplaceStory': workplaceStory,
      'practicalExample': practicalExample,
      'practicalExercise': practicalExercise,
      'reflection': reflection,
      'workplaceAction': workplaceAction,
      'videoUrl': videoUrl,
      'videoDurationSeconds': videoDurationSeconds,
      'videoTranscript': videoTranscript,
      'quizQuestions': quizQuestions.map((q) => q.toMap()).toList(),
      'isPublished': isPublished,
    };
  }

  factory LessonModel.fromMap(Map<String, dynamic> map, String id) {
    return LessonModel(
      id: id,
      courseId: map['courseId'] ?? '',
      moduleId: map['moduleId'] ?? '',
      titleKh: map['titleKh'] ?? '',
      titleEn: map['titleEn'] ?? '',
      type: LessonType.values.firstWhere(
        (e) => e.name == map['type'],
        orElse: () => LessonType.text,
      ),
      orderIndex: map['orderIndex'] ?? 0,
      learningObjectives: map['learningObjectives'],
      shortExplanation: map['shortExplanation'],
      workplaceStory: map['workplaceStory'],
      practicalExample: map['practicalExample'],
      practicalExercise: map['practicalExercise'],
      reflection: map['reflection'],
      workplaceAction: map['workplaceAction'],
      videoUrl: map['videoUrl'],
      videoDurationSeconds: map['videoDurationSeconds'],
      videoTranscript: map['videoTranscript'],
      quizQuestions: (map['quizQuestions'] as List<dynamic>? ?? [])
          .map((item) => QuestionModel.fromMap(item as Map<String, dynamic>, item['id'] ?? ''))
          .toList(),
      isPublished: map['isPublished'] ?? true,
    );
  }
}

class CourseModel {
  final String id;
  final String titleKh;
  final String titleEn;
  final String descriptionKh;
  final String descriptionEn;
  final CareerLevel targetLevel;
  final String category;
  final String thumbnailUrl;
  final String instructorName;
  final int totalLessons;
  final int estimatedMinutes;
  final bool isPublished;
  final bool isFeatured;
  final List<String> tags;
  final DateTime? createdAt;

  const CourseModel({
    required this.id,
    required this.titleKh,
    required this.titleEn,
    required this.descriptionKh,
    required this.descriptionEn,
    required this.targetLevel,
    required this.category,
    required this.thumbnailUrl,
    required this.instructorName,
    required this.totalLessons,
    required this.estimatedMinutes,
    this.isPublished = true,
    this.isFeatured = false,
    this.tags = const [],
    this.createdAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titleKh': titleKh,
      'titleEn': titleEn,
      'descriptionKh': descriptionKh,
      'descriptionEn': descriptionEn,
      'targetLevel': targetLevel.name,
      'category': category,
      'thumbnailUrl': thumbnailUrl,
      'instructorName': instructorName,
      'totalLessons': totalLessons,
      'estimatedMinutes': estimatedMinutes,
      'isPublished': isPublished,
      'isFeatured': isFeatured,
      'tags': tags,
      'createdAt': createdAt?.toIso8601String(),
    };
  }

  factory CourseModel.fromMap(Map<String, dynamic> map, String id) {
    return CourseModel(
      id: id,
      titleKh: map['titleKh'] ?? '',
      titleEn: map['titleEn'] ?? '',
      descriptionKh: map['descriptionKh'] ?? '',
      descriptionEn: map['descriptionEn'] ?? '',
      targetLevel: CareerLevel.values.firstWhere(
        (e) => e.name == map['targetLevel'],
        orElse: () => CareerLevel.junior,
      ),
      category: map['category'] ?? 'Workplace Skills',
      thumbnailUrl: map['thumbnailUrl'] ?? '',
      instructorName: map['instructorName'] ?? 'គ្រូជំនាញ',
      totalLessons: map['totalLessons'] ?? 0,
      estimatedMinutes: map['estimatedMinutes'] ?? 45,
      isPublished: map['isPublished'] ?? true,
      isFeatured: map['isFeatured'] ?? false,
      tags: List<String>.from(map['tags'] ?? []),
      createdAt: map['createdAt'] != null
          ? DateTime.tryParse(map['createdAt']) ?? DateTime.now()
          : DateTime.now(),
    );
  }
}
