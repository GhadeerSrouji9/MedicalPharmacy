import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatefulWidget {
  final double? delay;
  final Widget? child;

  const FadeAnimation({super.key, this.child, this.delay});

  @override
  State<FadeAnimation> createState() => _FadeAnimationState();
}

/// AnimationControllers can be created with `vsync: this` because of TickerProviderStateMixin.
class _FadeAnimationState extends State<FadeAnimation>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FadeTransition(
        opacity: _animation,
        child:  Padding(padding: EdgeInsets.all(8), child: widget.child),
      ),
    );
  }
}

// class FadeAnimation extends StatelessWidget {
//   // final double delay;
//   // final Widget child;
//
//
//   FadeAnimation(this.delay, this.child);
//
//   @override
//   Widget build(BuildContext context) {
//
//     // final tween = MultiTrackTween([
//     //   Track("opacity").add(Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
//     //   Track("translateY").add(
//     //       Duration(milliseconds: 500), Tween(begin: -130.0, end: 0.0),
//     //       curve: Curves.easeOut)
//     // ]);
//
//     return FadeTransition(
//     child: child,
//       opacity: ,
//     );
//   }
// }
