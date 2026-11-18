#!/usr/bin/env python3
"""
Sync Backend Database for Lerng Domnaeng
Updates SQLite (lerng_domnaeng.sqlite) and MySQL dump (lerng_domnaeng.sql)
so all frontend user data, CV submissions, and quiz attempts are visible in DBeaver.
"""

import sqlite3
import os
import sys

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
SQLITE_PATH = os.path.join(BASE_DIR, "lerng_domnaeng.sqlite")
SQL_DUMP_PATH = os.path.join(BASE_DIR, "lerng_domnaeng.sql")

def sync():
    conn = sqlite3.connect(SQLITE_PATH)
    cur = conn.cursor()

    # 1. Ensure all tables exist
    cur.execute("DROP TABLE IF EXISTS cv_submissions;")
    cur.execute("""
    CREATE TABLE cv_submissions (
        id VARCHAR(64) PRIMARY KEY,
        user_id VARCHAR(64),
        user_name VARCHAR(191),
        user_email VARCHAR(191),
        career_level VARCHAR(100),
        target_title VARCHAR(191),
        summary TEXT,
        skills TEXT,
        experience_xyz TEXT,
        education TEXT,
        salary_expectation VARCHAR(50),
        status VARCHAR(50) DEFAULT 'New',
        submitted_at DATETIME DEFAULT CURRENT_TIMESTAMP
    );
    """)

    cur.execute("DROP TABLE IF EXISTS quiz_submissions;")
    cur.execute("""
    CREATE TABLE quiz_submissions (
        id VARCHAR(64) PRIMARY KEY,
        user_id VARCHAR(64),
        user_name VARCHAR(191),
        course_id VARCHAR(64),
        lesson_id VARCHAR(64),
        question TEXT,
        selected_option INT,
        selected_text TEXT,
        is_correct TINYINT(1) DEFAULT 1,
        notes TEXT,
        submitted_at DATETIME DEFAULT CURRENT_TIMESTAMP
    );
    """)

    # 2. Upsert Users (including Sok Vibol and Demo learners)
    users = [
        ('usr-vibol-01', 'vibol.demo@lerngdomnaeng.com', 'សុខ វិបុល', 'learner', 'junior', 'teamLeader', 'Marketing & Media', 'SME Company', 480),
        ('usr-admin-01', 'admin@lerngdomnaeng.com', 'សុខ វិបុល (Admin)', 'admin', 'executive', 'founder', 'EdTech', 'Lerng Domnaeng', 5000),
        ('usr-instructor-01', 'instructor@lerngdomnaeng.com', 'លោកគ្រូ សុជាតិ វណ្ណារ៉ា', 'instructor', 'director', 'director', 'Education', 'Academy', 3500),
        ('usr-inst-02', 'chanthol@lerngdomnaeng.com', 'អ្នកគ្រូ ចាន់ថុល សុរិយា', 'instructor', 'headOfDepartment', 'director', 'Education', 'Academy', 2800),
        ('usr-org-01', 'seyha@khmersme.com', 'រស្មី សីហា (HR Director)', 'organizationAdmin', 'director', 'executive', 'Logistics', 'Khmer SME Logistics', 2100),
        ('usr-learner-02', 'kimsour@learner.com', 'គឹមសួរ ចាន់ថា', 'learner', 'intern', 'junior', 'Digital Marketing', 'Angkor Digital Agency', 220),
        ('usr-learner-03', 'kalyan@learner.com', 'កល្យាណ ទេពី', 'learner', 'supervisor', 'manager', 'Food Processing', 'Kirirom Food Processing', 850),
    ]

    for u in users:
        cur.execute("""
        INSERT OR REPLACE INTO users (id, email, display_name, role, career_level, target_career_level, industry, company_context, xp_points)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, u)

    # 3. Upsert Sample CV Submissions
    cv_data = [
        (
            'cv-sub-01',
            'usr-vibol-01',
            'សុខ វិបុល',
            'vibol.demo@lerngdomnaeng.com',
            'Junior Staff (បុគ្គលិកកម្រិតដំបូង)',
            'Team Leader (ប្រធានក្រុមការងារ)',
            'អ្នកជំនាញផ្នែកទីផ្សារឌីជីថល និងប្រតិបត្តិការអាជីវកម្ម ដែលមានបទពិសោធន៍ជំរុញកំណើនលក់ និងដឹកនាំក្រុមការងារប្រកបដោយប្រសិទ្ធភាព។',
            'Digital Marketing, Data Analytics, Team Leadership, Negotiation, Eisenhower Matrix',
            '• សម្រេចបានកំណើនលក់ ២៥% ក្នុងរយៈពេល ៦ ខែ (X) តាមរយៈការរៀបចំយុទ្ធសាស្ត្រទីផ្សារឌីជីថលថ្មី (Z) ដែលបង្កើតចំណូលបន្ថែម $15,000 (Y)។\n• កាត់បន្ថយពេលវេលាដំណើរការឯកសារ ៤០% (X) តាមរយៈការបង្កើតទម្រង់ស្វ័យប្រវត្តលើ Google Sheets & Automation Tools (Z) សន្សំបាន ៥ ម៉ោងក្នុងមួយសប្តាហ៍ (Y)។\n• ដឹកនាំ និងបណ្តុះបណ្តាលសមាជិកក្រុមថ្មី ៣ នាក់ (Z) ឱ្យសម្រេច KPI លើសពី ៩០% ក្នុងខែដំបូងនៃការសាកល្បងការងារ (X)។',
            'បរិញ្ញាបត្រ គ្រប់គ្រងពាណិជ្ជកម្ម (BBA) — សាកលវិទ្យាល័យបៀលប្រាយ (BBU)',
            '$1,200 / ខែ',
            'New'
        ),
        (
            'cv-sub-02',
            'usr-learner-03',
            'កល្យាណ ទេពី',
            'kalyan@learner.com',
            'Supervisor (អ្នកគ្រប់គ្រងផ្ទាល់)',
            'Production Manager (ប្រធានផ្នែកផលិតកម្ម)',
            'អ្នកគ្រប់គ្រងផលិតកម្មដែលមានបទពិសោធន៍អនុវត្ត Kaizen, 5S និង Lean Manufacturing កាត់បន្ថយការខ្ជះខ្ជាយបាន ២០%។',
            'Lean Manufacturing, Kaizen 5S, People Management, Supply Chain Coordination, KPI Tracking',
            '• បង្កើនទិន្នផលសរុបនៃខ្សែសង្វាក់ផលិតកម្ម ១៨% ក្នុងរយៈពេល ៤ ខែ ដោយការរៀបចំ Standard Operating Procedures (SOP) ថ្មី។\n• កាត់បន្ថយអត្រាបុគ្គលិកឈប់ពីការងារ (Turnover Rate) ពី ១៥% មកនៅត្រឹម ៤% តាមរយៈកម្មវិធី One-on-One Coaching ប្រចាំសប្តាហ៍។',
            'បរិញ្ញាបត្រ វិស្វកម្មឧស្សាហកម្ម និងគ្រប់គ្រង',
            '$1,500 / ខែ',
            'Reviewed'
        )
    ]

    for cv in cv_data:
        cur.execute("""
        INSERT OR REPLACE INTO cv_submissions (id, user_id, user_name, user_email, career_level, target_title, summary, skills, experience_xyz, education, salary_expectation, status)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, cv)

    # 4. Upsert Sample Quiz Submissions
    quiz_data = [
        (
            'quiz-sub-01',
            'usr-vibol-01',
            'សុខ វិបុល',
            'course-intern-comm',
            'intern-comm-01',
            'នៅពេលទទួលបានការចាត់ចែងការងារមិនច្បាស់លាស់ពីប្រធាន តើអ្នកគួរធ្វើដូចម្តេច?',
            1,
            'សួរបញ្ជាក់ភ្លាមៗដោយសុភាព និងសង្ខេបចំណុចសំខាន់ៗដែលបានយល់ឡើងវិញ (Active Clarification)',
            1,
            'បានអនុវត្តភ្លាមៗនៅព្រឹកមិញជាមួយប្រធានផ្នែក ឃើញថាការងារដើរលឿនជាងមុនច្រើន!'
        ),
        (
            'quiz-sub-02',
            'usr-learner-02',
            'គឹមសួរ ចាន់ថា',
            'course-intern-comm',
            'intern-comm-02',
            'តើចំណងជើងអ៊ីមែល (Email Subject Line) បែបណាដែលត្រឹមត្រូវតាមស្តង់ដារ?',
            0,
            '[ACTION REQUIRED] របាយការណ៍សង្ខេបលទ្ធផលលក់ Q3 - ផ្នែកទីផ្សារ',
            1,
            'ចំណងជើងមាន Tag ជួយឱ្យអ្នកគ្រប់គ្រងឆាប់បើកមើល និងសម្រេចចិត្ត។'
        ),
        (
            'quiz-sub-03',
            'usr-vibol-01',
            'សុខ វិបុល',
            'course-junior-exec',
            'junior-exec-01',
            'នៅពេលមានការងារបន្ទាន់ច្រើនចូលមកព្រមគ្នា តើអ្នកគួរប្រើឧបករណ៍អ្វីដើម្បីចាត់ថ្នាក់?',
            0,
            'ម៉ាទ្រីស Eisenhower (បន្ទាន់ vs សំខាន់)',
            1,
            'កំណត់ការងារសំខាន់មិនបន្ទាន់ជាអាទិភាពខ្ពស់ក្នុងការអភិវឌ្ឍខ្លួន។'
        )
    ]

    for qz in quiz_data:
        cur.execute("""
        INSERT OR REPLACE INTO quiz_submissions (id, user_id, user_name, course_id, lesson_id, question, selected_option, selected_text, is_correct, notes)
        VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        """, qz)

    # 5. User progress records
    progress_data = [
        ('prog-01', 'usr-vibol-01', 'course-intern-comm', 'intern-comm-01', 1, 1),
        ('prog-02', 'usr-vibol-01', 'course-intern-comm', 'intern-comm-02', 1, 1),
        ('prog-03', 'usr-vibol-01', 'course-junior-exec', 'junior-exec-01', 1, 1),
        ('prog-04', 'usr-learner-02', 'course-intern-comm', 'intern-comm-01', 1, 1),
        ('prog-05', 'usr-learner-03', 'course-supervisor-perf', 'supervisor-perf-01', 1, 1),
    ]

    for p in progress_data:
        cur.execute("""
        INSERT OR REPLACE INTO user_progress (id, user_id, course_id, lesson_id, completed, quiz_passed)
        VALUES (?, ?, ?, ?, ?, ?)
        """, p)

    conn.commit()

    # Print summary
    tables = ['courses', 'lessons', 'quiz_questions', 'cv_templates', 'users', 'cv_submissions', 'quiz_submissions', 'user_progress']
    print("=== SQLite Database Sync Status ===")
    for t in tables:
        cur.execute(f"SELECT count(*) FROM {t}")
        cnt = cur.fetchone()[0]
        print(f" Table: {t:<18} -> {cnt} rows")

    conn.close()

    # 6. Append tables to lerng_domnaeng.sql for MySQL compatibility
    with open(SQL_DUMP_PATH, "r", encoding="utf-8") as f:
        sql_content = f.read()

    schema_additions = """
--
-- Table structure for table `cv_submissions`
--
CREATE TABLE IF NOT EXISTS `cv_submissions` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `user_id` VARCHAR(64) NOT NULL,
  `user_name` VARCHAR(191) NOT NULL,
  `user_email` VARCHAR(191) NOT NULL,
  `career_level` VARCHAR(100) NOT NULL,
  `target_title` VARCHAR(191) NOT NULL,
  `summary` TEXT NOT NULL,
  `skills` TEXT NOT NULL,
  `experience_xyz` TEXT NOT NULL,
  `education` TEXT NOT NULL,
  `salary_expectation` VARCHAR(50) NULL,
  `status` VARCHAR(50) DEFAULT 'New',
  `submitted_at` DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Table structure for table `quiz_submissions`
--
CREATE TABLE IF NOT EXISTS `quiz_submissions` (
  `id` VARCHAR(64) NOT NULL PRIMARY KEY,
  `user_id` VARCHAR(64) NOT NULL,
  `user_name` VARCHAR(191) NOT NULL,
  `course_id` VARCHAR(64) NOT NULL,
  `lesson_id` VARCHAR(64) NOT NULL,
  `question` TEXT NOT NULL,
  `selected_option` INT NOT NULL,
  `selected_text` TEXT NOT NULL,
  `is_correct` TINYINT(1) DEFAULT 1,
  `notes` TEXT NULL,
  `submitted_at` DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
"""
    if "CREATE TABLE IF NOT EXISTS `cv_submissions`" not in sql_content:
        with open(SQL_DUMP_PATH, "a", encoding="utf-8") as f:
            f.write("\n" + schema_additions)
        print("Updated lerng_domnaeng.sql with cv_submissions and quiz_submissions schemas!")

if __name__ == '__main__':
    sync()
