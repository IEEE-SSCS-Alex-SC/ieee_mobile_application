class Course {
  final int? id;
  final String? title;
  final String? imageUrl;
  final String? date;
  final String? courseContent;
  final String? courseDescription;
  final String? perquisites;
  final String? instructors;
  final String? courseLength;
  final String? fees;
  final String routeName = '/courseDetailsScreen';

  Course(
      {this.id,
      this.date,
      this.title,
      this.imageUrl,
      this.courseContent,
      this.courseDescription,
      this.perquisites,
      this.instructors,
      this.courseLength,
      this.fees});

  static fromJson(Map<String, dynamic> json) {
    Course course = Course(
        id: json['id'],
        title: json['title'],
        date: json['date'],
        imageUrl: json['imgUrl'],
        courseContent: json['courseContent'],
        courseDescription: json['courseDescription'],
        perquisites: json['perquisites'],
        instructors: json['instructors'],
        courseLength: json['courseLength'],
        fees: json['fees']);

    return course;
  }
}
