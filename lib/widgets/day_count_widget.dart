
import 'package:flutter/material.dart';

class DayCount extends StatelessWidget {
  const DayCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 250,
          height: 200,
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Transform.scale(
              scale: 4,
              child: const CircularProgressIndicator(
                color: Colors.pink,
                value: 0.2,
                backgroundColor: Colors.black,
                strokeWidth: 10,
              ),
            ),
          ),
        ),
        const Text(
          "21 days to go",
          style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 221, 221, 221)),
        ),
      ],
    );
  }
}
