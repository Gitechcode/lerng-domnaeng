import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lerng_domnaeng/core/services/app_data_sync_service.dart';
import 'package:lerng_domnaeng/core/theme/app_theme.dart';
import 'package:lerng_domnaeng/features/courses/data/course_catalog_data.dart';
import 'package:lerng_domnaeng/features/courses/domain/course_model.dart';

class LessonDetailScreen extends ConsumerStatefulWidget {
  final String courseId;
  final String lessonId;

  const LessonDetailScreen({
    super.key,
    required this.courseId,
    required this.lessonId,
  });

  @override
  ConsumerState<LessonDetailScreen> createState() => _LessonDetailScreenState();
}

class _LessonDetailScreenState extends ConsumerState<LessonDetailScreen> {
  int currentLessonIndex = 0;
  int? selectedOption;
  bool isSubmitted = false;
  final TextEditingController _noteController = TextEditingController();
  final Map<String, String> _savedNotes = {};

  @override
  void initState() {
    super.initState();
    final lessons = CourseCatalogData.detailedLessons[widget.courseId] ?? [];
    final targetIndex = int.tryParse(widget.lessonId);
    if (targetIndex != null && targetIndex >= 1 && targetIndex <= lessons.length) {
      currentLessonIndex = targetIndex - 1;
    } else {
      final foundIndex = lessons.indexWhere((l) => l.id == widget.lessonId);
      if (foundIndex != -1) {
        currentLessonIndex = foundIndex;
      }
    }
    _loadNoteForCurrentLesson();
  }

  void _loadNoteForCurrentLesson() {
    final lessons = CourseCatalogData.detailedLessons[widget.courseId] ?? [];
    if (currentLessonIndex < lessons.length) {
      final lessonId = lessons[currentLessonIndex].id;
      _noteController.text = _savedNotes[lessonId] ?? '';
    }
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Retrieve course and list of lessons
    final course = CourseCatalogData.allCourses.firstWhere(
      (c) => c.id == widget.courseId,
      orElse: () => CourseCatalogData.allCourses.first,
    );

    final lessons = CourseCatalogData.detailedLessons[widget.courseId] ??
        CourseCatalogData.detailedLessons['course-intern-comm']!;

    final currentLesson = (currentLessonIndex < lessons.length)
        ? lessons[currentLessonIndex]
        : lessons.first;

    final QuestionModel? activeQuiz = currentLesson.quizQuestions.isNotEmpty
        ? currentLesson.quizQuestions.first
        : null;

    return Scaffold(
      backgroundColor: const Color(0xFFF7FAF8),
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.titleKh,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Text(
              'មេរៀនទី ${currentLessonIndex + 1} នៃ ${lessons.length}',
              style: const TextStyle(fontSize: 11, color: AppColors.subtleGray),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.restrainedGold.withValues(alpha: 0.2),
              ),
              child: const Icon(Icons.psychology, color: AppColors.restrainedGold, size: 20),
            ),
            tooltip: 'សួរគ្រូ AI (Ask AI Coach)',
            onPressed: () {
              context.push(
                '/ai-coach',
                extra: 'ខ្ញុំកំពុងរៀនវគ្គ «${course.titleKh}» មេរៀន «${currentLesson.titleKh}»។ សូមជួយពន្យល់សង្ខេបពីគន្លឹះសំខាន់ និងរបៀបយកទៅអនុវត្តក្នុងការងារជាក់ស្តែងនៅកម្ពុជា!',
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.bookmark_border_rounded),
            tooltip: 'ចំណាំទុក',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('បានរក្សាទុកមេរៀនក្នុង Bookmark រួចរាល់!'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.edit_note_rounded),
            tooltip: 'កត់ត្រាផ្ទាល់ខ្លួន',
            onPressed: () => _showNotesDialog(context, currentLesson.id),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Lesson Indicator Tabs
            SizedBox(
              height: 40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: lessons.length,
                separatorBuilder: (_, __) => const SizedBox(width: 8),
                itemBuilder: (context, idx) {
                  final isCurrent = idx == currentLessonIndex;
                  return ChoiceChip(
                    label: Text(
                      'មេរៀន ${idx + 1}',
                      style: TextStyle(
                        fontSize: 12.5,
                        fontWeight: isCurrent ? FontWeight.bold : FontWeight.w500,
                        color: isCurrent ? Colors.white : AppColors.charcoal,
                      ),
                    ),
                    selected: isCurrent,
                    selectedColor: const Color(0xFF0F5A47),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    side: BorderSide(
                      color: isCurrent ? const Color(0xFF0F5A47) : const Color(0xFFE5ECE8),
                    ),
                    onSelected: (_) {
                      setState(() {
                        currentLessonIndex = idx;
                        selectedOption = null;
                        isSubmitted = false;
                        _loadNoteForCurrentLesson();
                      });
                    },
                  );
                },
              ),
            ),

            const SizedBox(height: 16),

            // Lesson Header Box
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(18),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFEFF5F2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: Text(
                          course.targetLevel.khLabel,
                          style: const TextStyle(
                            color: Color(0xFF0F5A47),
                            fontWeight: FontWeight.bold,
                            fontSize: 11.5,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Icon(Icons.timer_outlined, size: 14, color: AppColors.subtleGray),
                          const SizedBox(width: 4),
                          Text(
                            '~${course.estimatedMinutes ~/ lessons.length} នាទី',
                            style: const TextStyle(fontSize: 11.5, color: AppColors.subtleGray),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Text(
                    currentLesson.titleKh,
                    style: const TextStyle(
                      fontSize: 17.5,
                      fontWeight: FontWeight.bold,
                      color: AppColors.charcoal,
                      height: 1.4,
                    ),
                  ),
                  if (currentLesson.titleEn.isNotEmpty) ...[
                    const SizedBox(height: 4),
                    Text(
                      currentLesson.titleEn,
                      style: const TextStyle(
                        fontSize: 12.5,
                        color: AppColors.subtleGray,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 16),

            // Part 1: Learning Objectives
            if (currentLesson.learningObjectives != null &&
                currentLesson.learningObjectives!.isNotEmpty) ...[
              _buildSectionCard(
                title: '១. គោលបំណងនៃការរៀន (Learning Objectives)',
                icon: Icons.flag_outlined,
                content: currentLesson.learningObjectives!,
                badgeColor: const Color(0xFFEFF5F2),
                iconColor: const Color(0xFF0F5A47),
              ),
              const SizedBox(height: 14),
            ],

            // Part 2: Short Explanation
            if (currentLesson.shortExplanation != null &&
                currentLesson.shortExplanation!.isNotEmpty) ...[
              _buildSectionCard(
                title: '២. សេចក្តីពន្យល់សង្ខេប (Short Explanation)',
                icon: Icons.menu_book_outlined,
                content: currentLesson.shortExplanation!,
                badgeColor: const Color(0xFFFBF4E4),
                iconColor: AppColors.restrainedGold,
              ),
              const SizedBox(height: 14),
            ],

            // Part 3: Workplace Story (Cambodian Context)
            if (currentLesson.workplaceStory != null &&
                currentLesson.workplaceStory!.isNotEmpty) ...[
              _buildStorySectionCard(
                title: '៣. រឿងរ៉ាវជាក់ស្ដែងនៅកន្លែងធ្វើការ (Workplace Story)',
                content: currentLesson.workplaceStory!,
              ),
              const SizedBox(height: 14),
            ],

            // Part 4: Practical Example & Dialogue Scripts
            if (currentLesson.practicalExample != null &&
                currentLesson.practicalExample!.isNotEmpty) ...[
              _buildSectionCard(
                title: '៤. ឧទាហរណ៍ជាក់ស្តែង & គំរូសន្ទនា (Practical Example & Scripts)',
                icon: Icons.check_circle_outline,
                content: currentLesson.practicalExample!,
                badgeColor: const Color(0xFFEFF5F2),
                iconColor: const Color(0xFF0F5A47),
              ),
              const SizedBox(height: 14),
            ],

            // Part 5: Practical Exercise
            if (currentLesson.practicalExercise != null &&
                currentLesson.practicalExercise!.isNotEmpty) ...[
              _buildSectionCard(
                title: '៥. លំហាត់អនុវត្តជាក់ស្ដែង (Practical Exercise)',
                icon: Icons.edit_road_outlined,
                content: currentLesson.practicalExercise!,
                badgeColor: const Color(0xFFEBF1F5),
                iconColor: const Color(0xFF2C6B9E),
              ),
              const SizedBox(height: 14),
            ],

            // Part 6: Scenario Quiz & Assessment
            if (activeQuiz != null) ...[
              _buildQuizCard(activeQuiz, currentLesson.id),
              const SizedBox(height: 14),
            ],

            // Part 7: Reflection
            if (currentLesson.reflection != null &&
                currentLesson.reflection!.isNotEmpty) ...[
              _buildSectionCard(
                title: '៧. ការត្រិះរិះពិចារណា (Self-Reflection)',
                icon: Icons.psychology_outlined,
                content: currentLesson.reflection!,
                badgeColor: const Color(0xFFFDF0F0),
                iconColor: const Color(0xFFD32F2F),
              ),
              const SizedBox(height: 14),
            ],

            // Part 8: Workplace Action Card (Daily 3-5 min action)
            if (currentLesson.workplaceAction != null &&
                currentLesson.workplaceAction!.isNotEmpty) ...[
              _buildActionCard(
                title: '៨. សកម្មភាពអនុវត្តនៅកន្លែងធ្វើការ (Workplace Action Card)',
                content: currentLesson.workplaceAction!,
              ),
              const SizedBox(height: 14),
            ],

            // Part 8.5: AI Coach Assistant Card for this lesson
            _buildLessonAiAssistantCard(context, course.titleKh, currentLesson.titleKh),
            const SizedBox(height: 14),

            // Part 9: Private Notes Section
            _buildNotesInlineSection(context, currentLesson.id),

            const SizedBox(height: 24),

            // Navigation Buttons (Previous / Next)
            Row(
              children: [
                if (currentLessonIndex > 0)
                  Expanded(
                    child: OutlinedButton.icon(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        side: const BorderSide(color: Color(0xFF0F5A47)),
                      ),
                      icon: const Icon(Icons.arrow_back, color: Color(0xFF0F5A47)),
                      label: const Text(
                        'មេរៀនមុន',
                        style: TextStyle(color: Color(0xFF0F5A47), fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        setState(() {
                          currentLessonIndex--;
                          selectedOption = null;
                          isSubmitted = false;
                          _loadNoteForCurrentLesson();
                        });
                      },
                    ),
                  ),
                if (currentLessonIndex > 0) const SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF0F5A47),
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                    icon: Icon(
                      currentLessonIndex < lessons.length - 1 ? Icons.arrow_forward : Icons.check_circle,
                    ),
                    label: Text(
                      currentLessonIndex < lessons.length - 1 ? 'មេរៀនបន្ទាប់' : 'បញ្ចប់វគ្គសិក្សា 🎉',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      // Sync completion progress to Backend
                      ref.read(appDataSyncProvider.notifier).recordLessonCompletion(
                        courseId: widget.courseId,
                        lessonId: currentLesson.id,
                        notes: _noteController.text.isNotEmpty ? _noteController.text : null,
                      );

                      if (currentLessonIndex < lessons.length - 1) {
                        setState(() {
                          currentLessonIndex++;
                          selectedOption = null;
                          isSubmitted = false;
                          _loadNoteForCurrentLesson();
                        });
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('🎉 សូមអបអរសាទរ! អ្នកបានបញ្ចប់វគ្គសិក្សានេះដោយជោគជ័យ!'),
                            behavior: SnackBarBehavior.floating,
                            backgroundColor: AppColors.primaryGreen,
                          ),
                        );
                        context.pop();
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 28),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    required IconData icon,
    required String content,
    required Color badgeColor,
    required Color iconColor,
  }) {
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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: badgeColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(icon, color: iconColor, size: 18),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: AppColors.charcoal,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 13.5,
              height: 1.55,
              color: AppColors.charcoal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStorySectionCard({
    required String title,
    required String content,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFF9FBF9),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFFCCE2D7)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.02),
            blurRadius: 8,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F5A47).withValues(alpha: 0.12),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.history_edu_outlined, color: Color(0xFF0F5A47), size: 18),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF0F5A47),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            content,
            style: const TextStyle(
              fontSize: 13.5,
              height: 1.6,
              color: Color(0xFF1F2937),
              fontStyle: FontStyle.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionCard({
    required String title,
    required String content,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFDF5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.restrainedGold.withValues(alpha: 0.6), width: 1.2),
        boxShadow: [
          BoxShadow(
            color: AppColors.restrainedGold.withValues(alpha: 0.06),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: AppColors.goldLight.withValues(alpha: 0.35),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.bolt, color: AppColors.restrainedGold, size: 20),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF7A5E0B),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            content,
            style: const TextStyle(
              fontSize: 13.5,
              height: 1.55,
              color: Color(0xFF4A3E1C),
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuizCard(QuestionModel quiz, String lessonId) {
    final isCorrect = selectedOption != null && selectedOption == quiz.correctOptionIndex;

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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: const Color(0xFFEFF5F2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Icon(Icons.quiz_outlined, color: Color(0xFF0F5A47), size: 18),
              ),
              const SizedBox(width: 10),
              const Text(
                '៦. លំហាត់សាកល្បង (Scenario Quiz)',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            quiz.promptKh,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              height: 1.45,
              color: AppColors.charcoal,
            ),
          ),
          const SizedBox(height: 12),

          // Options List
          ...List.generate(quiz.optionsKh.length, (index) {
            final isChosen = selectedOption == index;
            Color borderColor = const Color(0xFFE5ECE8);
            Color bgColor = Colors.white;

            if (isSubmitted) {
              if (index == quiz.correctOptionIndex) {
                borderColor = AppColors.success;
                bgColor = AppColors.success.withValues(alpha: 0.08);
              } else if (isChosen) {
                borderColor = AppColors.error;
                bgColor = AppColors.error.withValues(alpha: 0.08);
              }
            } else if (isChosen) {
              borderColor = const Color(0xFF0F5A47);
              bgColor = const Color(0xFFEFF5F2);
            }

            return Container(
              margin: const EdgeInsets.only(bottom: 8),
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: borderColor, width: isChosen ? 1.4 : 1.0),
              ),
              child: RadioListTile<int>(
                value: index,
                groupValue: selectedOption,
                title: Text(
                  quiz.optionsKh[index],
                  style: TextStyle(
                    fontSize: 13,
                    height: 1.4,
                    color: AppColors.charcoal,
                    fontWeight: isChosen ? FontWeight.w600 : FontWeight.normal,
                  ),
                ),
                activeColor: const Color(0xFF0F5A47),
                contentPadding: const EdgeInsets.symmetric(horizontal: 8),
                onChanged: isSubmitted
                    ? null
                    : (val) {
                        setState(() {
                          selectedOption = val;
                        });
                      },
              ),
            );
          }),

          const SizedBox(height: 10),

          if (!isSubmitted)
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0F5A47),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                ),
                onPressed: selectedOption == null
                    ? null
                    : () {
                        setState(() {
                          isSubmitted = true;
                        });

                        final isCorrect = selectedOption == quiz.correctOptionIndex;
                        ref.read(appDataSyncProvider.notifier).recordQuizSubmission(
                          courseId: widget.courseId,
                          lessonId: lessonId,
                          question: quiz.promptKh,
                          selectedOptionIndex: selectedOption!,
                          selectedOptionText: quiz.optionsKh[selectedOption!],
                          isCorrect: isCorrect,
                          explanation: quiz.explanationKh,
                          notes: _noteController.text.isNotEmpty ? _noteController.text : null,
                        );
                      },
                child: const Text('ផ្ទៀងផ្ទាត់ចម្លើយ (Submit Answer)', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ),

          // Results & In-Depth Explanation
          if (isSubmitted) ...[
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: isCorrect
                    ? AppColors.success.withValues(alpha: 0.1)
                    : AppColors.error.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isCorrect ? AppColors.success : AppColors.error,
                  width: 1.2,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(
                        isCorrect ? Icons.check_circle : Icons.cancel,
                        color: isCorrect ? AppColors.success : AppColors.error,
                        size: 20,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        isCorrect ? '✅ ត្រឹមត្រូវល្អណាស់!' : '❌ មិនទាន់ត្រឹមត្រូវទេ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: isCorrect ? AppColors.success : AppColors.error,
                        ),
                      ),
                    ],
                  ),
                  if (quiz.explanationKh != null) ...[
                    const SizedBox(height: 8),
                    Text(
                      quiz.explanationKh!,
                      style: const TextStyle(fontSize: 13, height: 1.5, color: AppColors.charcoal),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildNotesInlineSection(BuildContext context, String lessonId) {
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
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFF5F2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Icon(Icons.edit_note_rounded, color: Color(0xFF0F5A47), size: 18),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '៩. កំណត់ត្រាផ្ទាល់ខ្លួន (Private Notes)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ],
              ),
              TextButton.icon(
                icon: const Icon(Icons.save_outlined, size: 16, color: Color(0xFF0F5A47)),
                label: const Text('រក្សាទុក', style: TextStyle(color: Color(0xFF0F5A47), fontSize: 12)),
                onPressed: () {
                  setState(() {
                    _savedNotes[lessonId] = _noteController.text;
                  });
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('បានរក្សាទុកកំណត់ត្រាដោយជោគជ័យ!'),
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(height: 8),
          TextField(
            controller: _noteController,
            maxLines: 3,
            decoration: InputDecoration(
              hintText: 'សរសេរការយល់ឃើញ ឬមេរៀនដែលទទួលបានពីការអនុវត្តជាក់ស្ដែងនៅទីនេះ...',
              hintStyle: const TextStyle(fontSize: 12.5, color: AppColors.subtleGray),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Color(0xFFE5ECE8)),
              ),
              filled: true,
              fillColor: const Color(0xFFFBFDFB),
            ),
          ),
        ],
      ),
    );
  }

  void _showNotesDialog(BuildContext context, String lessonId) {
    final tempController = TextEditingController(text: _savedNotes[lessonId] ?? _noteController.text);
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('កត់ត្រាផ្ទាល់ខ្លួន (Private Note)'),
        content: TextField(
          controller: tempController,
          maxLines: 5,
          decoration: const InputDecoration(
            hintText: 'សរសេរការយល់ឃើញ ឬមេរៀនដែលទទួលបានពីការអនុវត្តជាក់ស្ដែង...',
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('បោះបង់'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0F5A47),
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              setState(() {
                _savedNotes[lessonId] = tempController.text;
                _noteController.text = tempController.text;
              });
              Navigator.pop(ctx);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('បានរក្សាទុកកំណត់ត្រាដោយជោគជ័យ!'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            child: const Text('រក្សាទុក'),
          ),
        ],
      ),
    );
  }

  Widget _buildLessonAiAssistantCard(BuildContext context, String courseTitle, String lessonTitle) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: const Color(0xFF0F5A47).withValues(alpha: 0.25), width: 1.2),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF0F5A47).withValues(alpha: 0.04),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F5A47).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.psychology, color: Color(0xFF0F5A47), size: 22),
              ),
              const SizedBox(width: 10),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'សួរគ្រូ AI អំពីមេរៀននេះ (Ask AI Coach)',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF073327),
                      ),
                    ),
                    Text(
                      'វិភាគ និងឆ្លើយតបដោយ DeepSeek & Grok',
                      style: TextStyle(fontSize: 11, color: AppColors.subtleGray),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          const Text(
            'ជ្រើសរើសសំណួរគន្លឹះដើម្បីសួរគ្រូ AI ភ្លាមៗ៖',
            style: TextStyle(fontSize: 12, color: Color(0xFF455A64)),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              _buildAiPromptChip(
                context,
                label: '💡 សង្ខេបចំណុចសំខាន់',
                fullPrompt: 'ខ្ញុំកំពុងរៀនវគ្គ «$courseTitle» មេរៀន «$lessonTitle»។ សូមជួយពន្យល់សង្ខេបចំណុចសំខាន់ និងខ្លឹមសារស្នូលជាភាសាងាយយល់បំផុត។',
              ),
              _buildAiPromptChip(
                context,
                label: '🏢 ឧទាហរណ៍ជាក់ស្តែងនៅកម្ពុជា',
                fullPrompt: 'សម្រាប់មេរៀន «$lessonTitle» តើមានឧទាហរណ៍ជាក់ស្តែងយ៉ាងដូចម្តេចខ្លះក្នុងការអនុវត្តក្នុងក្រុមហ៊ុន និងស្ថាប័ននៅប្រទេសកម្ពុជា?',
              ),
              _buildAiPromptChip(
                context,
                label: '💰 របៀបយកចំណេះដឹងនេះទៅសុំឡើងប្រាក់ខែ',
                fullPrompt: 'តើខ្ញុំអាចយកចំណេះដឹង និងជំនាញពីមេរៀន «$lessonTitle» ទៅបង្ហាញជាសមិទ្ធផលដើម្បីសុំដំឡើងប្រាក់ខែ ឬឡើងតំណែងដោយរបៀបណា?',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAiPromptChip(BuildContext context, {required String label, required String fullPrompt}) {
    return ActionChip(
      backgroundColor: const Color(0xFFF0FDF4),
      side: const BorderSide(color: Color(0xFFBBF7D0)),
      label: Text(
        label,
        style: const TextStyle(fontSize: 11.5, color: Color(0xFF166534), fontWeight: FontWeight.w600),
      ),
      onPressed: () {
        context.push('/ai-coach', extra: fullPrompt);
      },
    );
  }
}
