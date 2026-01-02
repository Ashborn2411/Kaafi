
# 🎓 KAAFI – Low-Cost Niche Course Platform

<div align="center">
  
*Empowering Practical Skills Through Affordable Micro-Learning*

**Version:** 1.0 | **Date:** October 28, 2025 | **Status:** 📋 Active

[![GitHub](https://img.shields.io/badge/Status-Under%20Development-yellow)](https://github.com/)
[![License](https://img.shields.io/badge/License-MIT-blue)](https://github.com/)
[![Platform](https://img.shields.io/badge/Platform-Web%20%26%20Mobile-success)](https://github.com/)

</div>

## 📖 Table of Contents
- [Introduction](#introduction)
- [Project Scope](#project-scope)
- [System Overview](#system-overview)
- [Key Features](#key-features)
- [Technical Architecture](#technical-architecture)
- [Functional Requirements](#functional-requirements)
- [Non-Functional Requirements](#non-functional-requirements)
- [User Roles](#user-roles)
- [Development Stack](#development-stack)
- [Project Team](#project-team)

---

## 🎯 Introduction

### Purpose
KAAFI is an innovative online platform dedicated to selling **low-cost, practical micro-courses** that teach everyday and vocational skills. This Software Requirements Specification (SRS) document defines the functional and non-functional requirements to guide the development, testing, and deployment of the system.

### Vision
To create an accessible learning ecosystem where anyone can acquire practical skills at an affordable price, focusing on simplicity and low-bandwidth optimization.

---

## 🔭 Project Scope

KAAFI enables:

### For Instructors
- Create and sell short, affordable niche courses
- Examples: Fixing AC filters, basic plumbing, emergency safety skills
- Manage course content and track earnings

### For Students
- Browse, purchase, and learn practical skills
- Access short videos and step-by-step lessons
- Track learning progress

### For Administrators
- Manage users, transactions, and content quality
- Oversee platform operations
- Generate system reports

**Platform:** Web application with future mobile app support  
**Focus:** Lightweight, responsive, low-bandwidth optimized

---

## 🏗️ System Overview

### Core Components
| Component | Description |
|-----------|-------------|
| 👤 **User Management** | Registration, authentication, profile management |
| 📚 **Course System** | Creation, publishing, enrollment, and streaming |
| 💳 **Payment Gateway** | Secure low-cost transaction processing |
| ⭐ **Review System** | Ratings, reviews, and feedback |
| 🛠️ **Admin Dashboard** | Platform oversight and management |
| 🔍 **Discovery Engine** | Search, filtering, and recommendations |

---

## ✨ Key Features

### 🎓 **Course Management**
- Create/edit courses with videos, descriptions, and resources
- Course approval workflow
- Progress tracking for students
- Resume from last watched position

### 💰 **Affordable Pricing**
- All courses priced **under 1000 TK**
- Multiple payment options (Bkash, Nagad)
- Secure transaction handling

### 📱 **Accessibility**
- Optimized for low-bandwidth environments
- Simple UI for low-tech literacy users
- Mobile-responsive design
- WCAG 2.1 compliance

### 🔒 **Security**
- Secure authentication (phone-based)
- HTTPS data transmission
- PCI-DSS compliance for payments
- Regular security updates

---

## 🏗️ Technical Architecture

### Tech Stack

Frontend:
  - Primary: Kotlin/Flutter
  - Target: Web, iOS, Android

Backend:
  - Language: Kotlin/Java/python
  - Framework: Spring Boot / Ktor/FastApi/Flask
  - API: RESTful APIs
  - For now using supabase

Database:
  - Primary: Supabase Database

Storage:
  - Videos: AWS S3 / Cloud Storage/supabase storage
  - Files: Cloud-based storage

Infrastructure:
  - Cloud: AWS / Firebase / Azure/Supabase
  - CI/CD: GitHub Actions / Jenkins


### System Diagram
<img width="426" height="620" alt="image" src="https://github.com/user-attachments/assets/bd4b8267-9385-4928-b395-78546f767ddb" />

---

## 📋 Functional Requirements

### 👥 User Management (FR1-FR3)
- **FR1:** Phone-based registration
- **FR2:** Secure login/logout
- **FR3:** Profile management (photo, bio, etc.)

### 📚 Course Management (FR4-FR7)
- **FR4:** Instructor course CRUD operations
- **FR5:** Course structure (title, description, price, videos, files)
- **FR6:** Student enrollment and access
- **FR7:** Admin course approval/rejection

### 💳 Payment System (FR8-FR10)
- **FR8:** Secure payments (Bkash/Nagad integration)
- **FR9:** Transaction recording
- **FR10:** Refund processing

### 🎬 Course Viewing (FR11-FR13)
- **FR11:** Low-bandwidth video streaming
- **FR12:** Resume from last position
- **FR13:** Progress tracking

### ⭐ Ratings & Reviews (FR14-FR15)
- **FR14:** Rating and commenting system
- **FR15:** Average rating display

### 🔍 Search & Discovery (FR16-FR17)
- **FR16:** Search by keyword, instructor, category
- **FR17:** Filter by price, popularity, rating

### 🔔 Notifications (FR18)
- **FR18:** Email/push notifications for purchases and updates

### 🛠️ Admin Panel (FR19-FR20)
- **FR19:** Sales, user, and course reports
- **FR20:** User account management

---

## ⚡ Non-Functional Requirements

### 🚀 Performance
- **NFR1:** Page load time < 2 seconds average
- **NFR2:** Support 1000+ concurrent users

### 🔒 Security
- **NFR3:** Secure password hashing (bcrypt/Argon2)
- **NFR4:** HTTPS for all data transmission
- **NFR5:** Regular security audits

### 🎨 Usability
- **NFR6:** Intuitive UI for first-time users
- **NFR7:** WCAG 2.1 accessibility compliance
- **NFR8:** Mobile-responsive design

### 🛡️ Reliability
- **NFR9:** 99.5% system uptime
- **NFR10:** Daily automated database backups
- **NFR11:** Error monitoring and logging

### 🧩 Maintainability
- **NFR12:** Modular, well-documented code
- **NFR13:** API versioning support
- **NFR14:** Comprehensive testing suite

---

## 👥 User Roles

| Role | Description | Access Level | Key Permissions |
|------|-------------|--------------|-----------------|
| **👨‍🎓 Student** | Learns practical skills | 🔓 Low | Browse, purchase, watch courses, rate & review |
| **👨‍🏫 Instructor** | Creates and sells courses | 🔑 Medium | Create/manage courses, view earnings, track students |
| **👑 Admin** | Manages platform operations | 🔐 High | User management, course approval, system reports, settings |

---

## 📊 Operating Environment

### Supported Platforms

🌐 Web Browsers:
   - Chrome (latest)
   - Safari (latest)
   - Edge (latest)
   - Firefox (latest)

📱 Mobile:
   - Android 8.0+
   - iOS 13+


### Infrastructure Requirements

☁️ Cloud Services:
   - AWS / Google Cloud / Azure /Supabase
   - Firebase/Supabase for authentication (optional)
   - CDN for video delivery

🗄️ Database:
   - PostGreSql
   - Regular backup system

📦 Storage:
   - Video: Cloud storage with CDN
   - Static: Object storage


---

## ⚠️ Constraints & Dependencies

### Constraints
- Courses must be priced under **1000 TK**
- Must comply with **PCI-DSS** for payments
- UI must be simple for low-tech literacy users
- Must function in low-bandwidth environments

### Dependencies
- Third-party payment APIs (Bkash, Nagad)
- Internet connectivity for users
- Cloud service providers
- Video encoding services

---

## 🚀 Getting Started

### Prerequisites
-  Dart 3.5
- Flutter for frontend
- Supabase Account
- Git

# Backend setup


# Frontend setup
flutter pub get
flutter run


---
## 🤝 SQL query of Supabase Postgre 
# 📊 KAAFI Database Schema

<div align="center">

**PostgreSQL Database Design for Low-Cost Course Platform**

[![PostgreSQL](https://img.shields.io/badge/Database-PostgreSQL-336791?logo=postgresql)](https://www.postgresql.org/)
[![Supabase](https://img.shields.io/badge/Hosted%20on-Supabase-3ECF8E?logo=supabase)](https://supabase.com)
[![Row Level Security](https://img.shields.io/badge/Security-RLS%20Enabled-red)](https://supabase.com/docs/guides/auth/row-level-security)

</div>

## 🗂️ Database Overview

sql
-- Database: kaafi_platform
-- Schema: public
-- Total Tables: 16
-- Relationships: 12 Foreign Keys
-- Features: UUID Primary Keys, JSON Arrays, Real-time Capable


## 📈 Entity Relationship Diagram
<img width="5482" height="2772" alt="deepseek_mermaid_20260101_d98114" src="https://github.com/user-attachments/assets/1a58cf04-51c9-41e4-8fdb-12b9b77c2935" />




## 🏗️ Table Structures

### 👥 **Core User Tables**

#### 1. **User Table** - Main user authentication and profile
sql
CREATE TABLE public."User" (
    "userId" TEXT NOT NULL PRIMARY KEY,
    name TEXT,
    email TEXT,
    role TEXT,
    img TEXT NOT NULL DEFAULT ''''''::TEXT,
    enrolled_courses TEXT[] NOT NULL DEFAULT '{}'::TEXT[],
    wish_list TEXT[] NOT NULL DEFAULT '{}'::TEXT[],
    cart TEXT[] NOT NULL DEFAULT '{}'::TEXT[],
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);


#### 2. **Student Table** - Student-specific data
sql
CREATE TABLE public."Student" (
    "studentId" UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    "enrolledCourses" JSON[],
    progress JSON[],
    "userId" BIGINT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);


#### 3. **Instructors Table** - Instructor profiles
sql
CREATE TABLE public."Instructors" (
    "instructorId" TEXT NOT NULL PRIMARY KEY,
    "userId" TEXT,
    bio TEXT,
    qualifications TEXT,
    rating DOUBLE PRECISION,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);


### 📚 **Course Management Tables**

#### 4. **Courses Table** - Course catalog
sql
CREATE TABLE public."Courses" (
    "courseId" UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
    "instructorId" UUID DEFAULT gen_random_uuid(),
    "categoryId" UUID DEFAULT gen_random_uuid(),
    title TEXT DEFAULT ''::TEXT,
    description TEXT DEFAULT ''::TEXT,
    price DOUBLE PRECISION DEFAULT 0,
    status JSONB,
    url TEXT NOT NULL DEFAULT ''::TEXT,
    thumbnail TEXT NOT NULL DEFAULT ''::TEXT,
    "instructorName" TEXT,
    enrolled BIGINT,
    rating DOUBLE PRECISION,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);


#### 5. **Category Table** - Course categorization
sql
CREATE TABLE public."Category" (
    "categoryId" TEXT NOT NULL PRIMARY KEY,
    name TEXT,
    "parentCategoryId" TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);


#### 6. **Sections Table** - Course sections/modules
sql
CREATE TABLE public."Sections" (
    "sectionId" TEXT NOT NULL PRIMARY KEY,
    "courseId" TEXT,
    title TEXT,
    "order" BIGINT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);


#### 7. **Lesson Table** - Individual lessons
sql
CREATE TABLE public."Lesson" (
    "lessonId" TEXT NOT NULL PRIMARY KEY,
    "sectionId" TEXT,
    title TEXT DEFAULT ''::TEXT,
    content TEXT DEFAULT ''::TEXT,
    "videoUrl" TEXT DEFAULT ''::TEXT,
    duration BIGINT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);


### 🎓 **Learning & Assessment Tables**

#### 8. **Enrollements Table** - Course enrollment tracking
sql
CREATE TABLE public."Enrollements" (
    "enrollmentId" TEXT NOT NULL PRIMARY KEY,
    "studentId" UUID,
    "courseId" UUID NOT NULL DEFAULT gen_random_uuid(),
    "enrollmentDate" TIMESTAMP WITH TIME ZONE,
    progress DOUBLE PRECISION,
    status TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    FOREIGN KEY ("courseId") REFERENCES "Courses"("courseId") ON DELETE SET NULL,
    FOREIGN KEY ("studentId") REFERENCES "Student"("studentId")
);


#### 9. **Quizzes Table** - Course assessments
sql
CREATE TABLE public."Quizzes" (
    "quizId" TEXT NOT NULL PRIMARY KEY,
    "courseId" UUID,
    title TEXT,
    "passingGrade" BIGINT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    FOREIGN KEY ("courseId") REFERENCES "Courses"("courseId")
);


#### 10. **Questions Table** - Quiz questions
sql
CREATE TABLE public."Questions" (
    "questionId" TEXT NOT NULL PRIMARY KEY,
    "quizId" TEXT,
    text TEXT,
    options JSONB NOT NULL,
    "correctAnswer" TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    FOREIGN KEY ("quizId") REFERENCES "Quizzes"("quizId")
);


#### 11. **Certificates Table** - Achievement certificates
sql
CREATE TABLE public."Certificates" (
    "certId" TEXT NOT NULL PRIMARY KEY,
    "studentId" UUID,
    "courseId" UUID,
    "issueDate" TIMESTAMP WITH TIME ZONE,
    criteria TEXT,
    FOREIGN KEY ("courseId") REFERENCES "Courses"("courseId"),
    FOREIGN KEY ("studentId") REFERENCES "Student"("studentId")
);


### 💬 **Community & Engagement Tables**

#### 12. **Review Table** - Course reviews and ratings
sql
CREATE TABLE public."Review" (
    "reviewId" TEXT NOT NULL PRIMARY KEY,
    "courseId" TEXT,
    "studentId" UUID,
    rating BIGINT,
    comment TEXT,
    date TIMESTAMP WITH TIME ZONE,
    FOREIGN KEY ("studentId") REFERENCES "Student"("studentId")
);


#### 13. **Forum Table** - Discussion forums
sql
CREATE TABLE public."Forum" (
    "forumId" TEXT NOT NULL PRIMARY KEY,
    "courseId" UUID,
    topic TEXT,
    "moderatorId" TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    FOREIGN KEY ("courseId") REFERENCES "Courses"("courseId"),
    FOREIGN KEY ("moderatorId") REFERENCES "User"("userId")
);


#### 14. **Posts Table** - Forum posts
sql
CREATE TABLE public."Posts" (
    "postId" TEXT NOT NULL PRIMARY KEY,
    "forumId" TEXT,
    "authorId" TEXT,
    content TEXT,
    date TIMESTAMP WITH TIME ZONE,
    "courseId" UUID,
    FOREIGN KEY ("authorId") REFERENCES "User"("userId"),
    FOREIGN KEY ("courseId") REFERENCES "Courses"("courseId"),
    FOREIGN KEY ("forumId") REFERENCES "Forum"("forumId")
);


### 💰 **Transaction & Notification Tables**

#### 15. **Payments Table** - Payment transactions
sql
CREATE TABLE public."Payments" (
    "paymentId" UUID NOT NULL PRIMARY KEY,
    "enrollmentId" TEXT,
    amount DOUBLE PRECISION,
    date TIMESTAMP WITH TIME ZONE,
    status TEXT,
    method TEXT,
    FOREIGN KEY ("enrollmentId") REFERENCES "Enrollements"("enrollmentId")
);


#### 16. **Notifications Table** - User notifications
sql
CREATE TABLE public."Notifications" (
    "notifId" TEXT NOT NULL PRIMARY KEY,
    "userId" TEXT,
    message TEXT,
    "isRead" BOOLEAN,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    FOREIGN KEY ("userId") REFERENCES "User"("userId")
);


## 🔐 **Row Level Security (RLS) Policies**

sql
-- Example RLS policies for Supabase
ALTER TABLE "User" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "Courses" ENABLE ROW LEVEL SECURITY;
ALTER TABLE "Enrollements" ENABLE ROW LEVEL SECURITY;

-- User can only see their own data
CREATE POLICY "Users can view own profile" 
ON "User" FOR SELECT 
USING (auth.uid()::text = "userId");

-- Public can view published courses
CREATE POLICY "Anyone can view published courses" 
ON "Courses" FOR SELECT 
USING (status->>'published' = 'true');

-- Students can only see their own enrollments
CREATE POLICY "Students see own enrollments" 
ON "Enrollements" FOR SELECT 
USING ("studentId" IN (
    SELECT "studentId" FROM "Student" 
    WHERE "userId" = auth.uid()::text
));


## 📊 **Database Statistics**

| Metric | Value | Description |
|--------|-------|-------------|
| **Total Tables** | 16 | Core database entities |
| **Primary Keys** | 16 | All tables have primary keys |
| **Foreign Keys** | 12 | Relationship constraints |
| **UUID Columns** | 8 | Secure identifier columns |
| **JSON/JSONB Columns** | 6 | Flexible data storage |
| **Array Columns** | 4 | Efficient list storage |
| **Timestamp Columns** | 14+ | Audit trail support |

## 🎨 **Index Recommendations**

sql
-- Performance optimization indexes
CREATE INDEX idx_courses_instructor ON "Courses"("instructorId");
CREATE INDEX idx_courses_category ON "Courses"("categoryId");
CREATE INDEX idx_enrollments_student ON "Enrollements"("studentId");
CREATE INDEX idx_enrollments_course ON "Enrollements"("courseId");
CREATE INDEX idx_review_course ON "Review"("courseId");
CREATE INDEX idx_lesson_section ON "Lesson"("sectionId");
CREATE INDEX idx_posts_forum ON "Posts"("forumId");
CREATE INDEX idx_notifications_user ON "Notifications"("userId");


## 🔄 **Triggers for Data Integrity**

sql
-- Auto-update timestamps
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Apply to relevant tables
CREATE TRIGGER update_user_updated_at 
    BEFORE UPDATE ON "User"
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_courses_updated_at 
    BEFORE UPDATE ON "Courses"
    FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();


## 📈 **Sample Queries**

### 1. Get Course with Details
sql
SELECT 
    c."courseId",
    c.title,
    c.description,
    c.price,
    c.rating,
    i.name as instructor_name,
    cat.name as category_name,
    COUNT(e."enrollmentId") as total_enrollments
FROM "Courses" c
LEFT JOIN "Instructors" i ON c."instructorId" = i."instructorId"
LEFT JOIN "Category" cat ON c."categoryId" = cat."categoryId"
LEFT JOIN "Enrollements" e ON c."courseId" = e."courseId"
GROUP BY c."courseId", i.name, cat.name;


### 2. Student Progress Report
sql
SELECT 
    s."studentId",
    u.name as student_name,
    COUNT(DISTINCT e."courseId") as courses_enrolled,
    AVG(e.progress) as avg_progress,
    COUNT(DISTINCT cert."certId") as certificates_earned
FROM "Student" s
JOIN "User" u ON s."userId"::text = u."userId"
LEFT JOIN "Enrollements" e ON s."studentId" = e."studentId"
LEFT JOIN "Certificates" cert ON s."studentId" = cert."studentId"
GROUP BY s."studentId", u.name;


### 3. Instructor Performance
sql
SELECT 
    i."instructorId",
    u.name as instructor_name,
    i.rating,
    COUNT(DISTINCT c."courseId") as total_courses,
    SUM(c.enrolled) as total_enrollments,
    AVG(r.rating) as avg_course_rating
FROM "Instructors" i
JOIN "User" u ON i."userId" = u."userId"
LEFT JOIN "Courses" c ON i."instructorId"::text = c."instructorId"::text
LEFT JOIN "Review" r ON c."courseId"::text = r."courseId"
GROUP BY i."instructorId", u.name, i.rating;


## 🚀 **Migration Commands**

bash
# Apply schema to Supabase
supabase db reset

# Or apply specific migrations
supabase migration up

# Generate TypeScript types
supabase gen types typescript --schema public > types/database.ts

# Set up real-time subscriptions
supabase realtime start


## 🛠️ **Database Health Check**

sql
-- Check table sizes
SELECT 
    schemaname,
    tablename,
    pg_size_pretty(pg_total_relation_size(schemaname||'.'||tablename)) as total_size
FROM pg_tables 
WHERE schemaname = 'public'
ORDER BY pg_total_relation_size(schemaname||'.'||tablename) DESC;

-- Check foreign key constraints
SELECT
    tc.table_schema, 
    tc.table_name, 
    kcu.column_name, 
    ccu.table_schema AS foreign_table_schema,
    ccu.table_name AS foreign_table_name,
    ccu.column_name AS foreign_column_name 
FROM information_schema.table_constraints AS tc 
JOIN information_schema.key_column_usage AS kcu
    ON tc.constraint_name = kcu.constraint_name
    AND tc.table_schema = kcu.table_schema
JOIN information_schema.constraint_column_usage AS ccu
    ON ccu.constraint_name = tc.constraint_name
    AND ccu.table_schema = tc.table_schema
WHERE tc.constraint_type = 'FOREIGN KEY' 
    AND tc.table_schema = 'public';


---

<div align="center">

### 💡 **Database Features Summary**

✅ **Normalized Schema** - Minimal redundancy  
✅ **UUID Primary Keys** - Secure and scalable  
✅ **JSON Support** - Flexible data structures  
✅ **Audit Trails** - Created/Updated timestamps  
✅ **RLS Ready** - Row-level security compatible  
✅ **Real-time Capable** - Supabase subscriptions  
✅ **Performance Optimized** - Index recommendations  

**"Designed for scalability, security, and real-time updates"**

[⬆ Back to Top](#-kaafi-database-schema)

</div>
---

## 🤝 Contributing

We welcome contributions! Please see our [Contributing Guidelines](CONTRIBUTING.md) for details.

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.


<div align="center">

### 🌟 Star us on GitHub if you find this project useful!

**"Empowering practical skills, one micro-course at a time."**

[⬆ Back to Top](#-kaafi--low-cost-niche-course-platform)

</div>

