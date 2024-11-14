import 'package:flutter/material.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class HabbitCard extends StatelessWidget {
  const HabbitCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // late List<Map<String, Object>> habbitList;
    var habbitList = [
      {
        "title": "drinking water",
        "icon": const Icon(Icons.water_drop_rounded, color: Colors.pink)
      },
      {"title": "Floss", "icon": const Icon(EvaIcons.archive, color: Colors.pink)}
    ];

    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      mainAxisSpacing: 10,
      padding: EdgeInsets.zero,
      crossAxisCount: 3,
      children: [
        const MyHabbits(
          title: "Drinking water",
          icon: Icon(
            Icons.water_drop_rounded,
            color: Colors.pink,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        const MyHabbits(
          title: "Workout",
          icon: Icon(
            Icons.sports_gymnastics_rounded,
            color: Colors.pink,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        const MyHabbits(
          title: "No alcahol",
          icon: Icon(
            Icons.no_drinks_rounded,
            color: Colors.pink,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        const MyHabbits(
          title: "No Junk foods",
          icon: Icon(
            Icons.no_food_rounded,
            color: Colors.pink,
            size: 50.0,
            semanticLabel: 'Text to announce in accessibility modes',
          ),
        ),
        GestureDetector(
          onTap: () {
            showModalBottomSheet(
              isDismissible: true,
              backgroundColor: const Color.fromARGB(255, 223, 89, 133),
              context: context,
              builder: (context) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: ListView(
                    shrinkWrap: true,
                    children: habbitList
                        .map(
                          (habbits) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              color:const Color.fromARGB(255, 19, 21, 22),
                              child: Center(
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Text(
                                          habbits["title"] as String,
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                        habbits['icon'] as Icon,
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                        .toList(),
                  ),
                );
              },
            );
          },
          child: const MyHabbits(
            title: "Add new",
            icon: Icon(
              Icons.add,
              color: Colors.pink,
              size: 50.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        ),
      ],
    );
  }
}

class MyHabbits extends StatelessWidget {
  final Icon icon;
  final String title;

  const MyHabbits({
    required this.icon,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // decoration: BoxDecoration(
      //   border: Border.all(color: Colors.blue)
      // ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 19, 21, 22),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: icon,
              ),
            ),
          ),
          Text(
            title,
            style: const TextStyle(
              color: Color.fromARGB(255, 165, 165, 165),
            ),
          ),
        ],
      ),
    );
  }
}
