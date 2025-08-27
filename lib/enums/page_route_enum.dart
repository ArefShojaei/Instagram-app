enum PageRouteEnum {
  home('/home'),
  explore('/explore'),
  add('/add'),
  activity('/activity'),
  profile('/profile');

  final String routeKey;

  const PageRouteEnum(this.routeKey);

  String get route => routeKey;
}
