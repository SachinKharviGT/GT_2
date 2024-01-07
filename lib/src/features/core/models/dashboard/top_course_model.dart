import 'dart:ui';

class DashboardTopCourseModel{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardTopCourseModel(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardTopCourseModel> list = [
    DashboardTopCourseModel("JS","Java Script", "10 Lessom", null),
    DashboardTopCourseModel("F","Flutter", "9 Lessom", null),
    DashboardTopCourseModel("P","Python", "8 Lessom", null),
    DashboardTopCourseModel("S","Swift", "7 Lessom", null)


  ];}