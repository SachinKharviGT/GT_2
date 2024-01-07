
import 'dart:ui';

class DashboardCategoires{
  final String title;
  final String heading;
  final String subHeading;
  final VoidCallback? onPress;

  DashboardCategoires(this.title, this.heading, this.subHeading, this.onPress);

  static List<DashboardCategoires> list = [
    DashboardCategoires("JS","Java Script", "10 Lessom", null),
    DashboardCategoires("F","Flutter", "9 Lessom", null),
    DashboardCategoires("P","Python", "8 Lessom", null),
    DashboardCategoires("S","Swift", "7 Lessom", null)


  ];
}