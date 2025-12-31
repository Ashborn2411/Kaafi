class CourseStatus {
  final bool featured;
  final bool published;

  CourseStatus({
    required this.featured,
    required this.published,
  });

  factory CourseStatus.fromJson(Map<String, dynamic> json) {
    return CourseStatus(
      featured: json['featured'],
      published: json['published'],
    );
  }
}
class Course {
  final String courseId;
  final String instructorId;
  final String categoryId;
  final String title;
  final String description;
  final double price;
  final CourseStatus status;
  final String url;
  final String thumbnail;
  final String instructorName;
  final int enrolled;
  final double rating;

  Course({
    required this.courseId,
    required this.instructorId,
    required this.categoryId,
    required this.title,
    required this.description,
    required this.price,
    required this.status,
    required this.url,
    required this.thumbnail,
    required this.instructorName,
    required this.enrolled,
    required this.rating,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    // Clean up string fields
    final cleanedDescription = (json['description'] as String).replaceAll('\n', ' ').trim();
    final cleanedInstructorName = (json['instructorName'] as String).replaceAll('\n', ' ').trim();
    final cleanedUrl = (json['url'] as String).trim();
    final cleanedThumbnail = (json['thumbnail'] as String).trim();

    return Course(
      courseId: json['courseId'],
      instructorId: json['instructorId'],
      categoryId: json['categoryId'],
      title: json['title'],
      description: cleanedDescription,
      price: json['price'] is int ? (json['price'] as int).toDouble() : json['price'],
      status: CourseStatus.fromJson(json['status']),
      url: cleanedUrl,
      thumbnail: cleanedThumbnail,
      instructorName: cleanedInstructorName,
      enrolled: json['enrolled'],
      rating: json['rating'] is int ? (json['rating'] as int).toDouble() : json['rating'],
    );
  }
}
