import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lerng_domnaeng/core/widgets/main_scaffold_screen.dart';
import 'package:lerng_domnaeng/features/courses/presentation/home_screen.dart';
import 'package:lerng_domnaeng/features/courses/presentation/course_catalog_screen.dart';
import 'package:lerng_domnaeng/features/lessons/presentation/lesson_detail_screen.dart';
import 'package:lerng_domnaeng/features/assessments/presentation/assessments_screen.dart';
import 'package:lerng_domnaeng/features/progress/presentation/progress_screen.dart';
import 'package:lerng_domnaeng/features/profile/presentation/profile_screen.dart';
import 'package:lerng_domnaeng/features/onboarding/presentation/onboarding_screen.dart';

import 'package:lerng_domnaeng/features/auth/presentation/login_screen.dart';
import 'package:lerng_domnaeng/features/auth/presentation/register_screen.dart';
import 'package:lerng_domnaeng/features/bookmarks/presentation/bookmarks_screen.dart';
import 'package:lerng_domnaeng/features/admin/presentation/admin_portal_screen.dart';
import 'package:lerng_domnaeng/features/ai_coach/presentation/ai_coach_screen.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
final GlobalKey<NavigatorState> _homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final GlobalKey<NavigatorState> _learnNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'learn');
final GlobalKey<NavigatorState> _practiceNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'practice');
final GlobalKey<NavigatorState> _progressNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'progress');
final GlobalKey<NavigatorState> _profileNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'profile');

final appRouter = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/login',
  routes: [
    // Authentication Routes
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => const RegisterScreen(),
    ),

    // Onboarding Route
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),

    // Stateful Nested Shell for 5 Tabs
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return MainScaffoldScreen(navigationShell: navigationShell);
      },
      branches: [
        // Tab 1: Home
        StatefulShellBranch(
          navigatorKey: _homeNavigatorKey,
          routes: [
            GoRoute(
              path: '/home',
              builder: (context, state) => const HomeScreen(),
            ),
          ],
        ),

        // Tab 2: Learn (Catalog & Courses)
        StatefulShellBranch(
          navigatorKey: _learnNavigatorKey,
          routes: [
            GoRoute(
              path: '/learn',
              builder: (context, state) => const CourseCatalogScreen(),
            ),
          ],
        ),

        // Tab 3: Practice (Assessments & EQ)
        StatefulShellBranch(
          navigatorKey: _practiceNavigatorKey,
          routes: [
            GoRoute(
              path: '/practice',
              builder: (context, state) => const AssessmentsScreen(),
            ),
          ],
        ),

        // Tab 4: Progress
        StatefulShellBranch(
          navigatorKey: _progressNavigatorKey,
          routes: [
            GoRoute(
              path: '/progress',
              builder: (context, state) => const ProgressScreen(),
            ),
          ],
        ),

        // Tab 5: Profile
        StatefulShellBranch(
          navigatorKey: _profileNavigatorKey,
          routes: [
            GoRoute(
              path: '/profile',
              builder: (context, state) => const ProfileScreen(),
            ),
          ],
        ),
      ],
    ),

    // Detail & Extra Routes
    GoRoute(
      path: '/bookmarks',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const BookmarksScreen(),
    ),
    GoRoute(
      path: '/admin',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) => const AdminPortalScreen(),
    ),
    GoRoute(
      path: '/ai-coach',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) {
        final initialPrompt = state.extra as String?;
        return AiCoachScreen(initialPrompt: initialPrompt);
      },
    ),
    GoRoute(
      path: '/lesson/:courseId/:lessonId',
      parentNavigatorKey: _rootNavigatorKey,
      builder: (context, state) {
        final courseId = state.pathParameters['courseId'] ?? '';
        final lessonId = state.pathParameters['lessonId'] ?? '';
        return LessonDetailScreen(courseId: courseId, lessonId: lessonId);
      },
    ),
  ],
);
