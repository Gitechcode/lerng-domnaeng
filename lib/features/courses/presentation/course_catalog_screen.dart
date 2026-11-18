import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/features/auth/domain/user_model.dart';
import 'package:lerng_domnaeng/features/courses/domain/course_model.dart';

class CourseCatalogScreen extends ConsumerStatefulWidget {
  const CourseCatalogScreen({super.key});

  @override
  ConsumerState<CourseCatalogScreen> createState() => _CourseCatalogScreenState();
}

class _CourseCatalogScreenState extends ConsumerState<CourseCatalogScreen> {
  CareerLevel? selectedLevel;
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    final syncData = ref.watch(appDataSyncProvider);

    // Filter courses based on selected level and search query from live syncData
    final courses = syncData.courses.where((c) => c.isPublished).where((c) {
      final matchesLevel = selectedLevel == null || c.targetLevel == selectedLevel;
      final matchesQuery = searchQuery.isEmpty ||
          c.titleKh.toLowerCase().contains(searchQuery.toLowerCase()) ||
          c.descriptionKh.toLowerCase().contains(searchQuery.toLowerCase()) ||
          c.category.toLowerCase().contains(searchQuery.toLowerCase());
      return matchesLevel && matchesQuery;
    }).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFF7FAF8),
      appBar: AppBar(
        title: const Text('កាតាឡុកវគ្គសិក្សា (Course Catalog)'),
        elevation: 0.5,
      ),
      body: Column(
        children: [
          // Search Bar
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 10),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'ស្វែងរកវគ្គសិក្សា ជំនាញ ឬប្រធានបទ...',
                prefixIcon: const Icon(Icons.search, color: Color(0xFF0F5A47)),
                suffixIcon: searchQuery.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () => setState(() => searchQuery = ''),
                      )
                    : null,
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(color: Color(0xFFE5ECE8)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(14),
                  borderSide: const BorderSide(color: Color(0xFFE5ECE8)),
                ),
              ),
              onChanged: (val) {
                setState(() => searchQuery = val);
              },
            ),
          ),

          // Career Level Horizontal Filters
          SizedBox(
            height: 42,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildFilterChip('ទាំងអស់', selectedLevel == null, () {
                  setState(() => selectedLevel = null);
                }),
                ...CareerLevel.values.map((lvl) {
                  return _buildFilterChip(lvl.khLabel, selectedLevel == lvl, () {
                    setState(() => selectedLevel = lvl);
                  });
                }),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // Course List
          Expanded(
            child: courses.isEmpty
                ? const Center(
                    child: Text(
                      'ពុំមានវគ្គសិក្សាស្របតាមការស្វែងរកនេះទេ',
                      style: TextStyle(color: AppColors.subtleGray, fontSize: 13),
                    ),
                  )
                : ListView.separated(
                    padding: const EdgeInsets.all(16),
                    itemCount: courses.length,
                    separatorBuilder: (_, __) => const SizedBox(height: 14),
                    itemBuilder: (context, index) {
                      final course = courses[index];
                      return _buildCourseCard(context, course);
                    },
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label, bool isSelected, VoidCallback onSelected) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: FilterChip(
        label: Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? Colors.white : AppColors.charcoal,
          ),
        ),
        selected: isSelected,
        selectedColor: const Color(0xFF0F5A47),
        backgroundColor: Colors.white,
        side: BorderSide(color: isSelected ? const Color(0xFF0F5A47) : const Color(0xFFE5ECE8)),
        checkmarkColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onSelected: (_) => onSelected(),
      ),
    );
  }

  Widget _buildCourseCard(BuildContext context, CourseModel course) {
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
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () => context.push('/lesson/${course.id}/1'),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 58,
                  height: 58,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF0F5A47), Color(0xFF1E8268)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(Icons.school_rounded, color: Colors.white, size: 28),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        course.titleKh,
                        style: const TextStyle(
                          fontSize: 14.5,
                          fontWeight: FontWeight.bold,
                          color: AppColors.charcoal,
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        course.descriptionKh,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 12, color: Color(0xFF6B7280), height: 1.35),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                            decoration: BoxDecoration(
                              color: const Color(0xFFEFF5F2),
                              borderRadius: BorderRadius.circular(6),
                            ),
                            child: Text(
                              course.targetLevel.khLabel,
                              style: const TextStyle(fontSize: 10.5, color: Color(0xFF0F5A47), fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            '• ${course.totalLessons} មេរៀន (${course.estimatedMinutes} នាទី)',
                            style: const TextStyle(fontSize: 11, color: AppColors.subtleGray),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
