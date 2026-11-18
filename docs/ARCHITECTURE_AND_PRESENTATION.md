# ឡើងដំណែង — Lerng Domnaeng
> **Tagline:** «រៀន បង្កើនសមត្ថភាព ត្រៀមខ្លួនសម្រាប់តួនាទីថ្មី»  
> *(Khmer-first career development platform from Intern to Founder)*

---

## 1. ស្ថាបត្យកម្មប្រព័ន្ធ (System Architecture & Principles)

គម្រោងត្រូវបានរៀបចំតាមស្តង់ដារ **Clean Architecture** ជាមួយ Flutter + Riverpod + GoRouter និង Firebase Backend:

```
lib/
├── core/
│   ├── network/ (app_router.dart)
│   ├── theme/   (app_theme.dart - Kantumruy Pro & Brand Colors)
│   └── widgets/ (main_scaffold_screen.dart - 5-tab Bottom Nav)
├── features/
│   ├── auth/        (domain/user_model.dart, data/auth_repository.dart, presentation/auth_providers.dart)
│   ├── onboarding/  (presentation/onboarding_screen.dart)
│   ├── courses/     (domain/course_model.dart, data/course_repository.dart, presentation/)
│   ├── lessons/     (9-part curriculum presentation/lesson_detail_screen.dart)
│   ├── assessments/ (simulation_model.dart, simulation_detail_screen.dart, assessments_screen.dart)
│   ├── progress/    (presentation/progress_screen.dart)
│   └── profile/     (presentation/profile_screen.dart)
functions/
├── src/index.ts     (Server-side grading & certified certificate issuance)
firestore.rules      (Least-privilege security boundaries)
storage.rules        (Media and avatar upload security)
firestore.indexes.json
```

---

## 2. មុខងារបន្ថែមពិសេស (Key Innovative Features Built)

1. **Daily Micro-Challenges / Action Cards (ការអនុវត្តជាក់ស្ដែងប្រចាំថ្ងៃ ៣-៥ នាទី)**
   - សកម្មភាពខ្លីៗប្រចាំថ្ងៃនៅកន្លែងធ្វើការ ដើម្បីកសាងទម្លាប់វិជ្ជាជីវៈ (Active Clarification, Genuine Recognition, Eisenhower Matrix Priority)។
   - មានប៊ូតុងកត់ត្រាការអនុវត្តរួចរាល់ និងពាក្យលើកទឹកចិត្តភ្លាមៗ។

2. **Peer Role-Playing / Situation Simulation (ការសាកល្បងឆ្លើយតបស្ថានការណ៍លំបាក)**
   - ការចរចាសុំដំឡើងប្រាក់ខែប្រកបដោយវិជ្ជាជីវៈ (Merit-based vs Entitlement-based)។
   - ការដោះស្រាយទំនាស់ការងារជាមួយមិត្តរួមការងារ (Problem-focused vs Person-blaming)។
   - ការវិភាគពីអ្នកជំនាញ (Expert Analysis) និងផលជះជាក់ស្តែង (Outcome Feedback)។

3. **9-Part Structured Lesson Flow:**
   `Learning Objectives` → `Short Explanation` → `Workplace Story (SME Context)` → `Practical Example` → `Exercise & Quiz` → `Explained Answers` → `Reflection` → `Workplace Action` → `Private Notes & Bookmarks`។

4. **ការការពារសិទ្ធិ និងភាពស្មោះត្រង់ (Integrity & Security Boundaries):**
   - ការបញ្ចប់វគ្គសិក្សាមិនមែនជាការធានានូវការឡើងតំណែងស្វ័យប្រវត្តិនោះឡើយ (Notice Disclaimers)។
   - ចម្លើយតេស្ត (Answer keys) និងការផ្តល់ពិន្ទុត្រូវបានការពារមិនឱ្យអានចេញពី Client ដោយផ្ទាល់ (Cloud Functions Graded)។
   - Career Level (Intern ដល់ Founder) ត្រូវបានញែកដាច់ពី User Role Permissions (Learner, Instructor, Org Admin, Platform Admin)។

---

## 3. គម្រោងបទបង្ហាញ ១០ ស្លាយ (10-Slide Project Presentation Deck)

| Slide # | ចំណងជើងស្លាយ | ខ្លឹមសារលម្អិត |
|---|---|---|
| **Slide 1** | **សេចក្តីផ្តើម & ចក្ខុវិស័យ** | • ឈ្មោះផលិតផល៖ **ឡើងដំណែង — Lerng Domnaeng**<br>• បាវចនា៖ «រៀន បង្កើនសមត្ថភាព ត្រៀមខ្លួនសម្រាប់តួនាទីថ្មី»<br>• បេសកកម្ម៖ វេទិកាអភិវឌ្ឍន៍អាជីពភាសាខ្មែរដំបូងគេសម្រាប់គ្រប់កម្រិត ចាប់ពី Intern ដល់ Founder |
| **Slide 2** | **បញ្ហាប្រឈមក្នុងទីផ្សារ (The Problem)** | • គម្លាតរវាងការរំពឹងទុករបស់ថ្នាក់លើ និងបុគ្គលិក (Misalignment)<br>• កង្វះការបណ្តុះបណ្តាលជំនាញទន់ (Soft Skills, EQ) ជាភាសាខ្មែរសម្រាប់ SME<br>• ការឡើងតំណែងដែលខ្វះការត្រៀមខ្លួនផ្នែកភាពជាអ្នកដឹកនាំ |
| **Slide 3** | **ដំណោះស្រាយ និងមុខងារស្នូល (Solution & Core Features)** | • រចនាសម្ព័ន្ធមេរៀន ៩ ជំហាន (9-part structured curriculum)<br>• **Daily Micro-Challenges** (អនុវត្តជាក់ស្តែង ៣-៥ នាទី)<br>• **Situation Simulations** (សាកល្បងសុំឡើងប្រាក់ខែ ដោះស្រាយទំនាស់) |
| **Slide 4** | **ទស្សនិកជន & កម្រិតអាជីព (Target Audience & Career Levels)** | • ១០ កម្រិតអាជីព៖ Intern, Junior, Senior, Team Leader, Supervisor, Manager, Head of Department, Director, Executive, Founder<br>• បរិបទ៖ SME និង Corporate |
| **Slide 5** | **UI/UX & Khmer-First Design** | • ពុម្ពអក្សរខ្មែរ៖ **Kantumruy Pro** ផ្តល់នូវភាពងាយស្រួលក្នុងការអាន<br>• ក្ដារពណ៍ម៉ាកយីហោ៖ បៃតងចាស់ (Primary Green), ស (White), ធ្យូង (Charcoal) និងទឹកមាស (Restrained Gold) |
| **Slide 6** | **ស្ថាបត្យកម្មបច្ចេកវិទ្យា (Clean Architecture)** | • Frontend: **Flutter + Riverpod + GoRouter** (Feature-first layers: Presentation, Domain, Data)<br>• State Management ឯករាជ្យពី UI |
| **Slide 7** | **ហេដ្ឋារចនាសម្ព័ន្ធ Backend & Cloud** | • **Firebase Authentication, Cloud Firestore, Firebase Storage**<br>• **Firebase Cloud Functions (TypeScript)** សម្រាប់ Grade កម្រងសំណួរ និងចេញវិញ្ញាបនបត្រ |
| **Slide 8** | **សុវត្ថិភាពទិន្នន័យ (Security & Role Boundaries)** | • Least-privilege Firestore Rules<br>• ការពារ Answer keys ដោយមិនឱ្យ Client អានផ្ទាល់<br>• ការញែកដាច់រវាង Career Level និង Admin Permissions |
| **Slide 9** | **ការផ្ទៀងផ្ទាត់ & ការធ្វើតេស្ត (Verification & Quality)** | • `flutter analyze`: **0 Errors**<br>• `flutter test`: **All tests passed**<br>• គាំទ្រទាំង Android និង iOS ជាមួយ Offline-ready data structure |
| **Slide 10** | **ផែនការអភិវឌ្ឍទៅមុខ (Roadmap & Next Steps)** | • ដំណាក់កាលទី ១៖ MVP រួចរាល់ជាស្ថាពរ (Courses, Simulation, Actions)<br>• ដំណាក់កាលទី ២៖ Organization Workspaces & Mentorship Tracking<br>• ដំណាក់កាលទី ៣៖ AI-assisted workplace scenario feedback |

---

## 4. សេចក្តីណែនាំអំពីការដំណើរការ (Local Setup & Run Commands)

### ដំណើរការកម្មវិធីទូរស័ព្ទ (Flutter Mobile):
```bash
cd "/Users/macos/Documents/BBU/V/Y4 S2/Mobile App 2/Project/Lerng Domnaeng"

# ទាញយក dependencies
flutter pub get

# ផ្ទៀងផ្ទាត់កូដ
flutter analyze --no-fatal-infos
flutter test

# ដំណើរការលើ Emulator ឬ Device ជាក់ស្តែង
flutter run
```

### ដំណើរការ Firebase Local Emulators & Functions:
```bash
cd "/Users/macos/Documents/BBU/V/Y4 S2/Mobile App 2/Project/Lerng Domnaeng"

# ដំឡើង dependencies សម្រាប់ Cloud Functions
cd functions && npm install && npm run build && cd ..

# ចាប់ផ្តើម Firebase Emulator Suite
npx firebase-tools emulators:start
```
