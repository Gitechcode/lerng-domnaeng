import 'package:flutter/material.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import '../../courses/domain/course_model.dart';
import '../../courses/data/course_catalog_data.dart';

class BookmarksScreen extends StatefulWidget {
  const BookmarksScreen({super.key});

  @override
  State<BookmarksScreen> createState() => _BookmarksScreenState();
}

class _BookmarksScreenState extends State<BookmarksScreen> {
  // Pre-loaded bookmark items for demo & local persistence
  final List<CourseModel> _bookmarkedCourses = [
    CourseCatalogData.allCourses[0], // Workplace Communication
    CourseCatalogData.allCourses[2], // Team Leader Delegation
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAF8),
      appBar: AppBar(
        title: const Text('មេរៀនដែលបានចំណាំ (Bookmarks)'),
        elevation: 0.5,
      ),
      body: _bookmarkedCourses.isEmpty
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.primaryGreen.withValues(alpha: 0.1),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.bookmark_border_rounded, size: 48, color: AppColors.primaryGreen),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'មិនទាន់មានមេរៀនដែលបានចំណាំទុកទេ',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: AppColors.charcoal),
                  ),
                  const SizedBox(height: 6),
                  const Text(
                    'អ្នកអាចចុចលើ Icon Bookmark ពេលកំពុងរៀនដើម្បីរក្សាទុក',
                    style: TextStyle(fontSize: 12.5, color: AppColors.subtleGray),
                  ),
                ],
              ),
            )
          : ListView.separated(
              padding: const EdgeInsets.all(16),
              itemCount: _bookmarkedCourses.length,
              separatorBuilder: (_, __) => const SizedBox(height: 12),
              itemBuilder: (context, index) {
                final course = _bookmarkedCourses[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: const Color(0xFFE5ECE8)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.02),
                        blurRadius: 8,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(16),
                    leading: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        color: AppColors.primaryGreen.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(Icons.school_rounded, color: AppColors.primaryGreen),
                    ),
                    title: Text(
                      course.titleKh,
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 6.0),
                      child: Text(
                        '${course.targetLevel.khLabel} • ${course.totalLessons} មេរៀន',
                        style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray),
                      ),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.bookmark_remove_outlined, color: AppColors.error),
                      tooltip: 'ដកចេញពី Bookmark',
                      onPressed: () {
                        setState(() {
                          _bookmarkedCourses.removeAt(index);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('បានដកចេញពី Bookmark រួចរាល់!')),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
    );
  }
}
