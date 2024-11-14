import 'package:flutter/material.dart';

class DayCount extends StatelessWidget {
  const DayCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      // mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Transform.scale(
              scale: 4,
              child: const CircularProgressIndicator(
                color: Colors.pink,
                value: 0.2,
                backgroundColor: Color.fromARGB(255, 19, 21, 22),
                strokeWidth: 10,
              ),
            ),
          ),
        ),
        Container(
          height: 200,
          alignment: Alignment.center,
          child: Text(
            "21",
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 60,
              color: Colors.pink.withOpacity(0.8),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
