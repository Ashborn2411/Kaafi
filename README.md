Here the SRS document of Project KAAFI app.
[SRS-KAAFI.pdf](../../Downloads/SRS-KAAFI.pdf)
Here an Advertising Video:
[WhatsApp Video 2026-01-01 at 3.26.15 AM.mp4](../../Downloads/WhatsApp%20Video%202026-01-01%20at%203.26.15%20AM.mp4)
project schema:
https://supabase.com/dashboard/project/uyijmaytdgepuufiboef/database/schemas
Sql query of database

create table public."User" (
"userId" text not null,
name text null,
email text null,
role text null,
img text not null default ''''''::text,
enrolled_courses text[] not null default '{}'::text[],
wish_list text[] not null default '{}'::text[],
cart text[] not null default '{}'::text[],
constraint User_pkey primary key ("userId")
) TABLESPACE pg_default;

create table public."Student" (
"studentId" uuid not null default gen_random_uuid (),
"enrolledCourses" json[] null,
progress json[] null,
"userId" bigint null,
constraint Student_pkey primary key ("studentId")
) TABLESPACE pg_default;

create table public."Sections" (
"sectionId" text not null,
"courseId" text null,
title text null,
"order" bigint null,
constraint Sections_pkey primary key ("sectionId")
) TABLESPACE pg_default;

create table public."Review" (
"reviewId" text not null,
"courseId" text null,
"studentId" uuid null,
rating bigint null,
comment text null,
date timestamp with time zone null,
constraint Review_pkey primary key ("reviewId"),
constraint Review_studentId_fkey foreign KEY ("studentId") references "Student" ("studentId")
) TABLESPACE pg_default;


create table public."Quizzes" (
"quizId" text not null,
"courseId" uuid null,
title text null,
"passingGrade" bigint null,
constraint Quizzes_pkey primary key ("quizId"),
constraint Quizzes_courseId_fkey foreign KEY ("courseId") references "Courses" ("courseId")
) TABLESPACE pg_default;

create table public."Questions" (
"questionId" text not null,
"quizId" text null,
text text null,
options jsonb not null,
"correctAnswer" text null,
constraint Questions_pkey primary key ("questionId"),
constraint Questions_quizId_fkey foreign KEY ("quizId") references "Quizzes" ("quizId")
) TABLESPACE pg_default;


create table public."Posts" (
"postId" text not null,
"forumId" text null,
"authorId" text null,
content text null,
date timestamp with time zone null,
"courseId" uuid null,
constraint Posts_pkey primary key ("postId"),
constraint Posts_authorId_fkey foreign KEY ("authorId") references "User" ("userId"),
constraint Posts_courseId_fkey foreign KEY ("courseId") references "Courses" ("courseId"),
constraint Posts_forumId_fkey foreign KEY ("forumId") references "Forum" ("forumId")
) TABLESPACE pg_default;


create table public."Payments" (
"paymentId" uuid not null,
"enrollmentId" text null,
amount double precision null,
date timestamp with time zone null,
status text null,
method text null,
constraint Payments_pkey primary key ("paymentId"),
constraint Payments_enrollmentId_fkey foreign KEY ("enrollmentId") references "Enrollements" ("enrollmentId")
) TABLESPACE pg_default;


create table public."Notifications" (
"notifId" text not null,
"userId" text null,
message text null,
"isRead" boolean null,
constraint Notifications_pkey primary key ("notifId"),
constraint Notifications_userId_fkey foreign KEY ("userId") references "User" ("userId")
) TABLESPACE pg_default;


create table public."Lesson" (
"lessonId" text not null,
"sectionId" text null,
title text null default ''::text,
content text null default ''::text,
"videoUrl" text null default ''::text,
duration bigint null,
constraint Lesson_pkey primary key ("lessonId")
) TABLESPACE pg_default;


create table public."Instructors" (
"instructorId" text not null,
"userId" text null,
bio text null,
qualifications text null,
rating double precision null,
constraint Instructors_pkey primary key ("instructorId")
) TABLESPACE pg_default;


create table public."Forum" (
"forumId" text not null,
"courseId" uuid null,
topic text null,
"moderatorId" text null,
constraint Forum_pkey primary key ("forumId"),
constraint Forum_courseId_fkey foreign KEY ("courseId") references "Courses" ("courseId"),
constraint Forum_moderatorId_fkey foreign KEY ("moderatorId") references "User" ("userId")
) TABLESPACE pg_default;


create table public."Enrollements" (
"enrollmentId" text not null,
"studentId" uuid null,
"courseId" uuid not null default gen_random_uuid (),
"enrollmentDate" timestamp with time zone null,
progress double precision null,
status text null,
constraint Enrollements_pkey primary key ("enrollmentId"),
constraint Enrollements_courseId_fkey foreign KEY ("courseId") references "Courses" ("courseId") on delete set null,
constraint Enrollements_studentId_fkey foreign KEY ("studentId") references "Student" ("studentId")
) TABLESPACE pg_default;


create table public."Courses" (
"courseId" uuid not null default gen_random_uuid (),
"instructorId" uuid null default gen_random_uuid (),
"categoryId" uuid null default gen_random_uuid (),
title text null default ''::text,
description text null default ''::text,
price double precision null default '0'::double precision,
status jsonb null,
url text not null default ''::text,
thumbnail text not null default ''::text,
"instructorName" text null,
enrolled bigint null,
rating double precision null,
constraint Courses_pkey primary key ("courseId")
) TABLESPACE pg_default;


create table public."Certificates" (
"certId" text not null,
"studentId" uuid null,
"courseId" uuid null,
"issueDate" timestamp with time zone null,
criteria text null,
constraint Certificates_pkey primary key ("certId"),
constraint Certificates_courseId_fkey foreign KEY ("courseId") references "Courses" ("courseId"),
constraint Certificates_studentId_fkey foreign KEY ("studentId") references "Student" ("studentId")
) TABLESPACE pg_default;

create table public."Category" (
"categoryId" text not null,
name text null,
"parentCategoryId" text null,
constraint Category_pkey primary key ("categoryId")
) TABLESPACE pg_default;