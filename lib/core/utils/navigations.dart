part of 'utils.dart';

Future<T?> startScreen<T>(BuildContext context, Widget screen, {bool opaque = true}) => Navigator.push<T>(context, animation(screen, opaque: opaque));

animation(Widget screen, {bool opaque = true}) {
  return PageRouteBuilder(
    opaque: opaque,
    pageBuilder: (context, __, ___) => screen,
    transitionsBuilder: (context, Animation<double> animation, __, Widget widget) => Opacity(
      opacity: animation.value,
      child: widget,
    ),
    transitionDuration: const Duration(milliseconds: 750),
  );
}
