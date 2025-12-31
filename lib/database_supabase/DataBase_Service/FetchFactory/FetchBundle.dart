import '../../../Utils/AppString.dart';
import '../../DataBase_Data_Class/Catagory_Data_Class.dart';
import '../GenericDataFetch/GenericDataFetch.dart';
import '../../DataBase_Data_Class/dataClassImport.dart';

class Fetch_Users extends GenericFetch<User> {
  Fetch_Users() : super(
    tableName: AppString.user,
  );
}

class Fetch_Courses extends GenericFetch<Course> {
  Fetch_Courses() : super(
    tableName: AppString.course,
  );
}


class Fetch_Certificates extends GenericFetch<Certificate> {
  Fetch_Certificates() : super(
    tableName: 'Certificates',
  );
}

class Fetch_Students extends GenericFetch<Student> {
  Fetch_Students() : super(
    tableName: 'Students',
  );
}

class Fetch_Instructors extends GenericFetch<Instructor> {
  Fetch_Instructors() : super(
    tableName: 'Instructors',
  );
}

class Fetch_Enrollments extends GenericFetch<Enrollment> {
  Fetch_Enrollments() : super(
    tableName: 'Enrollments', // Fixed typo from 'Enrollements'
  );
}

class Fetch_Sections extends GenericFetch<Section> {
  Fetch_Sections() : super(
    tableName: 'Sections',
  );
}

class Fetch_Lessons extends GenericFetch<Lesson> {
  Fetch_Lessons() : super(
    tableName: 'Lessons',
  );
}

class Fetch_Quizzes extends GenericFetch<Quiz> {
  Fetch_Quizzes() : super(
    tableName: 'Quizzes',
  );
}

class Fetch_Questions extends GenericFetch<Question> {
  Fetch_Questions() : super(
    tableName: 'Questions',
  );
}

class Fetch_Reviews extends GenericFetch<Review> {
  Fetch_Reviews() : super(
    tableName: 'Reviews',
  );
}

class Fetch_Forum extends GenericFetch<Forum> {
  Fetch_Forum() : super(
    tableName: 'Forums',
  );
}

class Fetch_Posts extends GenericFetch<Post> {
  Fetch_Posts() : super(
    tableName: 'Posts',
  );
}

class Fetch_Payments extends GenericFetch<Payment> {
  Fetch_Payments() : super(
    tableName: 'Payments',
  );
}

class Fetch_Notifications extends GenericFetch<Notification> {
  Fetch_Notifications() : super(
    tableName: 'Notifications',
  );
}

class Fetch_Categories extends GenericFetch<Category> {
  Fetch_Categories() : super(
    tableName: 'Categories',
  );
}