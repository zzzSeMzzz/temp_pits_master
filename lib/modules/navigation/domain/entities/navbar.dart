class NavBar {
  final int id;
  final String title;
  final String icon;
  final String? inactiveIcon;

  const NavBar({
    required this.title,
    required this.id,
    required this.icon,
    this.inactiveIcon
  });

  bool get isMultipleIconTab {
    return inactiveIcon!=null;
  }
}
