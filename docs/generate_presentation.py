import os
from pptx import Presentation
from pptx.util import Inches, Pt
from pptx.dml.color import RGBColor
from pptx.enum.text import PP_ALIGN

prs = Presentation()
prs.slide_width = Inches(13.333)
prs.slide_height = Inches(7.5)

PRIMARY_GREEN = RGBColor(15, 90, 71)      # #0F5A47
DARK_BG = RGBColor(10, 50, 40)
WHITE = RGBColor(255, 255, 255)
GOLD = RGBColor(212, 175, 55)            # Accent Gold
CHARCOAL = RGBColor(33, 33, 33)
LIGHT_GRAY = RGBColor(245, 247, 246)

slides_data = [
    {
        "title": "ឡើងដំណែង — Lerng Domnaeng",
        "subtitle": "Mobile Career Elevation & Promotion Intelligence System\nបច្ចេកវិទ្យាទូរស័ព្ទឆ្លាតវៃសម្រាប់ជំរុញការឡើងតំណែង និងដំឡើងប្រាក់ខែ",
        "bullets": [
            "University: Build Bright University (BBU) — Faculty of Science and Technology",
            "Subject: Mobile Application Development 2 (Year 4 Semester 2)",
            "Developer: Poun Sokha (GitHub: Gitechcode)",
            "Architecture: Feature-First Clean Architecture (Flutter + Dart + Riverpod)",
            "Live URL: https://gitechcode.github.io/lerng-domnaeng/"
        ]
    },
    {
        "title": "១. បញ្ហា និងដំណោះស្រាយ (Problem & Solution)",
        "subtitle": "ហេតុអ្វីបានជាចាំបាច់ត្រូវការ Lerng Domnaeng?",
        "bullets": [
            "បញ្ហា៖ បុគ្គលិកភាគច្រើនខិតខំធ្វើការខ្លាំង ប៉ុន្តែខ្វះយុទ្ធសាស្ត្រវាស់វែងសមិទ្ធផល ចរចាប្រាក់ខែ និងឡើងតំណែង។",
            "ខ្វះឧបករណ៍ជំនួយ៖ CV មិនត្រូវស្តង់ដារពិភពលោក (Google XYZ Formula) និងខ្វះការហ្វឹកហាត់សម្ភាសន៍បែប STAR។",
            "ដំណោះស្រាយ Lerng Domnaeng៖ ប្រព័ន្ធស្វ័យប្រវត្តិកម្មចល័ត រួមបញ្ចូល 10 កម្រិតអាជីព (Intern -> Founder)។",
            "AI Executive Mentorship៖ ប្រព័ន្ធសន្ទនាឆ្លាតវៃជាមួយ CEO កំពូលៗរបស់អាមេរិក និងចិន (Sam Altman, Jensen Huang, Lei Jun...)"
        ]
    },
    {
        "title": "២. ស្ថាបត្យកម្មកូដ (Clean Architecture)",
        "subtitle": "រចនាសម្ព័ន្ធកូដតាមស្តង់ដារសហគ្រាស Feature-First Clean Architecture",
        "bullets": [
            "Domain Layer: Models & Enterprise Business Logic (user_model.dart, course_model.dart, user_cv_document.dart)",
            "Data Layer: Repositories & External Data Access (user_cv_storage_service.dart, ai_coach_repository.dart)",
            "Presentation Layer: Reactive UI (Flutter Riverpod ConsumerStatefulWidget, Custom Green Theme)",
            "Core Layer: App Router (GoRouter), Theme, Shared Services, Download Utilities, & Telegram Alert Service",
            "100% Modularity: គ្មានការជាប់ជំពាក់ស្មុគស្មាញ (Decoupled & Testable with Flutter Test)"
        ]
    },
    {
        "title": "៣. ការតភ្ជាប់ប្រព័ន្ធ API (Operation App to API)",
        "subtitle": "ការរួមបញ្ចូលសេវាកម្ម API ចម្រុះពិតប្រាកដក្នុង App",
        "bullets": [
            "AI Multi-Provider Engine: DeepSeek-V3 API, Grok-4 (xAI) API, និង Claude 3.5 Sonnet API",
            "Automated Failover System: នៅពេល API មួយរអាក់រអួល ប្រព័ន្ធប្តូរស្វ័យប្រវត្តិកុំឱ្យអ្នកប្រើប្រាស់ជាប់គាំង",
            "Instant HR Alert via Telegram Bot: ផ្ញើសារ Alert ពេលបេក្ខជនដាក់ CV តាម Telegram Bot API",
            "Data Sync Engine: រៀបចំ HTTP REST Client សម្រាប់ធ្វើសមកាលកម្មទិន្នន័យវគ្គសិក្សា និងលទ្ធផលប្រឡង"
        ]
    },
    {
        "title": "៤. ក្រុមប្រឹក្សា AI CEO & Billionaires (China & USA)",
        "subtitle": "ខួរក្បាលសេដ្ឋី និងទស្សនវិជ្ជាដឹកនាំពីសៀវភៅ និង Social Media",
        "bullets": [
            "USA Tech Titans: Sam Altman (OpenAI - Exponential Growth), Jensen Huang (NVIDIA - Pain & Character), Jeff Bezos (Amazon - Day 1), Elon Musk, Steve Jobs",
            "China Giants: Lei Jun (Xiaomi - Flying Pig & 7 Words), Pony Ma (Tencent - Micro-Innovation), Jack Ma (Alibaba Iron Army), Ren Zhengfei (Huawei Wolf Culture)",
            "Career & Promotion Coach: ជួយកែសម្រួល CV តាម Google XYZ, ហ្វឹកហាត់ STAR Mock Interview និងចរចាប្រាក់ខែ",
            "Viral Quote Cards: បង្កើតបណ្ណទស្សនវិជ្ជាសង្ខេបដែលអាចចែករំលែកបានទូទាំងបណ្តាញសង្គម"
        ]
    },
    {
        "title": "៥. ការគ្រប់គ្រង CV និងសុវត្ថិភាពទិន្នន័យ (CV Management)",
        "subtitle": "ផ្ទុកឯកសារ CV ផ្ទាល់ខ្លួនប្រកបដោយឯកជនភាព និងសុវត្ថិភាព",
        "bullets": [
            "ឯកសារអនុញ្ញាត៖ PDF ឬ Word DOCX ទំហំអតិបរមា 10 MB ក្នុងម្នាក់",
            "Validation & Progress Bar៖ ត្រួតពិនិត្យប្រភេទ File, ទំហំ, បង្ហាញ Progress និងប៊ូតុង Retry",
            "Full CRUD Operations៖ Upload, View Inline, Download ឯកសារដើម, Replace (រក្សាទុកចាស់បើបរាជ័យ), និង Confirmed Remove",
            "Privacy First Policy៖ ឯកសារ CV ផ្ទាល់ខ្លួនមិនត្រូវបញ្ជូនទៅ AI ឬភាគីទី ៣ ដោយគ្មានការអនុញ្ញាតឡើយ"
        ]
    },
    {
        "title": "៦. ផ្ទាំងគ្រប់គ្រងសហគ្រាស (Admin Portal & HR Pipeline)",
        "subtitle": "ប្រព័ន្ធគ្រប់គ្រងជ្រើសរើសបុគ្គលិក និងវិភាគស្ថិតិស្វ័យប្រវត្តិកម្រិតខ្ពស់",
        "bullets": [
            "3-Tier Access Control: គ្រប់គ្រងសិទ្ធិ Candidate, HR Manager, និង System Administrator",
            "Real-time Candidate Pipeline: ដំណាក់កាល CV Drop -> AI Screening -> Assessment -> Interview -> Final Offer",
            "Interactive Analytics: ក្រាហ្វិកស្ថិតិអ្នកចុះឈ្មោះ អត្រាប្រឡងជាប់ និងតារាងប្រៀបធៀបប្រាក់ខែតាមកម្រិត",
            "Audit Trail: កត់ត្រារាល់សកម្មភាព (Audit Logs) ក្នុងប្រព័ន្ធធានាតម្លាភាព ១០០%"
        ]
    },
    {
        "title": "៧. ការដាក់ឱ្យប្រើប្រាស់ (Live Deployment & Presentation)",
        "subtitle": "ដំណើរការផ្ទាល់នៅលើ Cloud និង Local Environment",
        "bullets": [
            "GitHub Repository: https://github.com/Gitechcode/lerng-domnaeng (Clean Branch, No Secrets)",
            "Live Production URL: https://gitechcode.github.io/lerng-domnaeng/ (GitHub Pages)",
            "Local High-Performance Server: http://localhost:8088 (សម្រាប់ធ្វើ Demo បង្ហាញផ្ទាល់លើ Chrome/Mobile)",
            "Responsive Design: រចនាបទពណ៌បៃតងសុវត្ថិភាព (Safety Green) ស័ក្តិសមទាំងទូរស័ព្ទ Tablet និង Desktop"
        ]
    },
    {
        "title": "៨. ការសាកល្បង និងគុណភាពកូដ (Testing & Verification)",
        "subtitle": "ការផ្ទៀងផ្ទាត់កូដប្រកបដោយភាពរឹងមាំតាម Flutter Unit Test",
        "bullets": [
            "Unit Tests Passed 100%: test/ai_agent_test.dart, test/user_cv_storage_test.dart",
            "Zero Compilation Errors: បានឆ្លងកាត់ flutter analyze គ្មានបញ្ហា blocking errors",
            "State Management: Riverpod 2.0 StateNotifier ធានាស្ថិរភាព UI គ្មាន Memory Leak",
            "Cross-Platform Download Helper: ដំណើរការទាញយកឯកសាររលូនលើ Web (Blob) និង Native"
        ]
    },
    {
        "title": "៩. សេចក្តីសន្និដ្ឋាន និងទិសដៅអភិវឌ្ឍន៍ (Conclusion & Next Steps)",
        "subtitle": "ការសម្រេចបាននៃគម្រោងឡើងដំណែង",
        "bullets": [
            "ជោគជ័យ៖ សម្រេចបានគ្រប់លក្ខខណ្ឌនៃការវាយតម្លៃ Mobile App 2 ប្រកបដោយភាពច្នៃប្រឌិតខ្ពស់។",
            "ទិសដៅអភិវឌ្ឍន៍៖ ពង្រីក Firebase Cloud Functions Live និង Cloud Storage ពេញលេញលើគម្រោងពិត។",
            "ការស្រាវជ្រាវ Sarana៖ ផ្សារភ្ជាប់ជាមួយនិក្ខេបបទ Sarana ស្តីពី AI Efficiency & Career Analytics។",
            "សូមថ្លែងអំណរគុណយ៉ាងជ្រាលជ្រៅចំពោះលោកគ្រូ និងគណៈកម្មការវាយតម្លៃ!"
        ]
    }
]

blank_slide_layout = prs.slide_layouts[6]

for data in slides_data:
    slide = prs.slides.add_slide(blank_slide_layout)
    
    # Background shape
    bg = slide.shapes.add_shape(1, 0, 0, prs.slide_width, prs.slide_height)
    bg.fill.solid()
    bg.fill.fore_color.rgb = LIGHT_GRAY
    bg.line.color.rgb = LIGHT_GRAY

    # Top Banner
    banner = slide.shapes.add_shape(1, 0, 0, prs.slide_width, Inches(1.3))
    banner.fill.solid()
    banner.fill.fore_color.rgb = PRIMARY_GREEN
    banner.line.color.rgb = PRIMARY_GREEN

    # Title Box
    title_box = slide.shapes.add_textbox(Inches(0.8), Inches(0.15), Inches(11.7), Inches(0.9))
    tf = title_box.text_frame
    tf.word_wrap = True
    p = tf.paragraphs[0]
    p.text = data["title"]
    p.font.size = Pt(28)
    p.font.bold = True
    p.font.color.rgb = WHITE

    # Subtitle Box
    sub_box = slide.shapes.add_textbox(Inches(0.8), Inches(1.4), Inches(11.7), Inches(0.7))
    stf = sub_box.text_frame
    stf.word_wrap = True
    sp = stf.paragraphs[0]
    sp.text = data["subtitle"]
    sp.font.size = Pt(17)
    sp.font.bold = True
    sp.font.color.rgb = PRIMARY_GREEN

    # Content Box with Bullets
    content_box = slide.shapes.add_textbox(Inches(0.8), Inches(2.2), Inches(11.7), Inches(4.8))
    ctf = content_box.text_frame
    ctf.word_wrap = True

    for i, bullet in enumerate(data["bullets"]):
        bp = ctf.add_paragraph() if i > 0 else ctf.paragraphs[0]
        bp.text = "• " + bullet
        bp.font.size = Pt(18)
        bp.font.color.rgb = CHARCOAL
        bp.space_after = Pt(14)

# Save Presentation
output_path = "/Users/macos/Documents/BBU/V/Y4 S2/Mobile App 2/Project/Lerng Domnaeng/docs/Lerng_Domnaeng_Presentation.pptx"
prs.save(output_path)
print(f"Presentation saved successfully to {output_path}")
