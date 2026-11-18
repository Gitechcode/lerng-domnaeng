import sqlite3
import re
import os

sql_path = 'database/lerng_domnaeng.sql'
sqlite_path = 'database/lerng_domnaeng.sqlite'

if os.path.exists(sqlite_path):
    os.remove(sqlite_path)

with open(sql_path, 'r', encoding='utf-8') as f:
    sql = f.read()

cleaned_lines = []
for line in sql.split('\n'):
    stripped = line.strip()
    if stripped.startswith(('CREATE DATABASE', 'USE ', 'SET ')):
        continue
    if stripped.startswith('INDEX ') or stripped.startswith('CONSTRAINT '):
        continue
    line = re.sub(r'ENGINE=InnoDB.*', ';', line)
    line = re.sub(r'COLLATE\s+\S+', '', line)
    line = re.sub(r'CHARACTER SET\s+\S+', '', line)
    line = re.sub(r'\bJSON\b', 'TEXT', line)
    line = re.sub(r'\bLONGTEXT\b', 'TEXT', line)
    line = re.sub(r'DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP', 'DATETIME DEFAULT CURRENT_TIMESTAMP', line)
    cleaned_lines.append(line)

cleaned_sql = '\n'.join(cleaned_lines)
cleaned_sql = re.sub(r',\s*(\n\s*\))', r'\1', cleaned_sql)
cleaned_sql = cleaned_sql.replace(r"\'", "''")

conn = sqlite3.connect(sqlite_path)
cur = conn.cursor()
cur.executescript(cleaned_sql)
conn.commit()

print('=== SQLite Verification ===')
for table in ['courses', 'lessons', 'quiz_questions', 'cv_templates', 'users', 'user_progress']:
    cur.execute(f'SELECT COUNT(*) FROM {table}')
    print(f'{table}: {cur.fetchone()[0]} rows')

conn.close()
print('SQLite database file created successfully at:', os.path.abspath(sqlite_path))
