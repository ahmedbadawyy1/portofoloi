class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink
  });
}


List<ProjectUtils> GradProjectUtils = [
  ProjectUtils(
    image: "images/admin.jpg",
    title: "Admin App for Attendance",
    subtitle: "Admin app for attendance to add users and lectures",
    androidLink: "https://github.com/ahmedbadawyy1/graduation-project",

  ),
  ProjectUtils(
    image: "images/photo_2023-07-11_12-25-33.jpg",
    title: "Attendance App",
    subtitle: "This app to display the attendance for each lecture for week",
    androidLink: "https://github.com/ahmedbadawyy1/graduation-project",
  ),

];



List<ProjectUtils> workProjectUtils = [
  ProjectUtils(
    image: "images/Projects.jpg",
    title: "Projects Management",
    subtitle: "Desktop app to manage projects and record all data about project",
    androidLink: "",
  ),
  ProjectUtils(
    image: "images/warehouse.jpg",
    title: "Warehouse management",
    subtitle: "Desktop app to manage the warehouse record out and in goods ",
    androidLink: "",

  ),
  ProjectUtils(
    image: "images/Screenshot (745).png",
    title: "Footware Store",
    subtitle: "online store with firebase ",
    androidLink: "",

  ),
  ProjectUtils(
    image: "images/Screenshot (748).png",
    title: " Admin Footware Store",
    subtitle: "Admin app to add projects to the online store with firebase ",
    androidLink: "",

  ),

];