// import 'package:flutter/cupertino.dart';
// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors, non_constant_identifier_names, annotate_overrides

import 'package:flutter/material.dart';
import 'dart:async';

class DeAnimation extends StatefulWidget {
  final Widget child;
  final int delay;

  const DeAnimation({required this.delay, required this.child});

  @override
  _DeAnimationState createState() => _DeAnimationState();
}

class _DeAnimationState extends State<DeAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animOffset;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 2000),
    );

    final Curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _animOffset = Tween<Offset>(
      begin: Offset(0.0, -3),
      end: Offset.zero,
    ).animate(Curve);
    Timer(Duration(microseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _controller,
      child: SlideTransition(
        position: _animOffset,
        child: widget.child,
      ),
    );
  }
}
