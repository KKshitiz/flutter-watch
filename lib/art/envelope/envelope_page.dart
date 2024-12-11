import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_art/art/envelope/constants.dart';
import 'package:flutter_art/art/envelope/widgets/envelope%20_back_side.dart';
import 'package:flutter_art/art/envelope/widgets/envelope_flap.dart';

class EnvelopePage extends StatefulWidget {
  const EnvelopePage({Key? key}) : super(key: key);

  @override
  State<EnvelopePage> createState() => _EnvelopePageState();
}

class _EnvelopePageState extends State<EnvelopePage>
    with SingleTickerProviderStateMixin {
  double flapAngle = 0;
  double letterPosition = 0;
  late AnimationController _animationController;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 3000),
    );
    _animation = Tween<Offset>(
      begin: Offset(0, 0),
      end: Offset(0, -300),
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleFlapDrag(DragUpdateDetails details) {
    final deltaY = -details.delta.dy;
    setState(() {
      flapAngle += deltaY * 0.01;
      if (flapAngle < 0 && deltaY.isNegative) {
        flapAngle = 0;
      } else if (flapAngle > math.pi && !deltaY.isNegative) {
        flapAngle = math.pi;
        if (!_animationController.isCompleted) {
          _animationController.forward();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(_animationController.value.toString());
    return Center(
      child: SizedBox(
        height: kEnvelopeHeight,
        width: kEnvelopeWidth,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: kEnvelopeHeight,
              width: kEnvelopeWidth,
              decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(
                  color: Colors.grey[400]!,
                  width: 10,
                ),
              ),
            ),
            EnvelopeBackSide(),
            GestureDetector(
              onVerticalDragUpdate: _handleFlapDrag,
              onTap: () {
                debugPrint("Tapped");
                // _animationController.reverse();
              },
              child: Transform(
                transformHitTests: false,
                transform: Matrix4.rotationX(flapAngle),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: EnvelopeFlap(
                    width: kEnvelopeWidth,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
