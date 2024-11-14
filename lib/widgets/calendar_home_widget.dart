
import 'package:flutter/material.dart';
import 'package:streakify/streakify_widget.dart';

class CalendarWidget extends StatefulWidget {
  const CalendarWidget({
    super.key,
  });

  @override
  State<CalendarWidget> createState() => _CalendarWidgetState();
}

class _CalendarWidgetState extends State<CalendarWidget> {
  
  @override
  Widget build(BuildContext context) {
     int numberOfDays = 21; 
    return Column(
      children: [
        const Text("Just DO It" , style: TextStyle(color: Colors.white)),
        StreakifyWidget(
            filledColor: Colors.pink,
                  numberOfDays: 21,
                  crossAxisCount: 3,
                  margin: const EdgeInsets.all(0),
                  isDayTargetReachedMap: Map.fromEntries(
                    List.generate(
                      numberOfDays,
                      (index) => MapEntry(
                        index,
                        index % 3 == 0 || index % 5 == 0 || index % 9 == 0 || index % 7 == 0 ,
                      ),
                    ),
                  ),
                  height: 100,
                  width: 210,
                  onTap: (index) {
                   /// perform on square tapped
                  },
                ),
      ],
    );
  }
}


