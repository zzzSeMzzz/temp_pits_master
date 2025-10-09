import 'dart:ui'; // Import for ImageFilter

import 'package:flutter/material.dart';

class BlurredContainerDemo extends StatelessWidget {
  const BlurredContainerDemo({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect( // ClipRRect for rounded corners on the blur effect
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.5), // Semi-transparent color
              borderRadius: BorderRadius.circular(20.0),
              border: Border.all(color: Colors.white.withValues(alpha: 0.5), width: 2),
            ),
            child: /*const Center(
              child: Text(
                'Blurred Container',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),*/child
          ),
        ),
      ),
    );
  }
}