import 'package:flutter/material.dart';

class TryAgainWidget extends StatelessWidget {
  const TryAgainWidget({super.key, this.onTap});

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, size: 80, color: Colors.redAccent),
          const SizedBox(height: 20.0),
          const Text(
            "Oops! Something went wrong.",
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          const Text(
            "We're working on fixing it. Please try again later.",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14.0),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(onPressed: onTap,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Sets the background color of the button
                foregroundColor: Colors.white, // Sets the color of the text and icons
              ),
              child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Text("Try again", style: TextStyle(color: Colors.white),),
          ))
        ],
      ),
    );
  }
}
