import 'package:flutter/material.dart';
import '../objects/team.dart';

class TodoCard extends StatelessWidget {
  final int startHour;
  final int startMinute;
  final int endHour;
  final int endMinute;
  final String title;
  final Team? team;
  final bool isEven;

  const TodoCard({
    super.key,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
    required this.title,
    this.team,
    this.isEven = false,
  });

  List<Widget> getPersons(Team t, Color fontColor) {
    List<Widget> persons = [];
    if (t.members != null) {
      for (var person in t.members!) {
        persons.add(Text(
          person.name,
          style: TextStyle(
            fontSize: 15,
            color: fontColor,
          ),
        ));
        persons.add(const SizedBox(width: 20));
      }
    } else {
      persons.add(const Text('No members'));
    }
    return persons;
  }

  @override
  Widget build(BuildContext context) {
    var fontColor =
        isEven ? Colors.white : const Color.fromARGB(255, 47, 255, 18);
    var borderColor = fontColor;
    var backgroundColor = Colors.grey.shade900;
    var fontFamily = 'Roboto';
    var people = getPersons(team!, fontColor);

    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: borderColor,
          width: 4,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          startHour < 10 ? '0$startHour' : '$startHour',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: fontFamily,
                            color: fontColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          startMinute < 10 ? '0$startMinute' : '$startMinute',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: fontFamily,
                            color: fontColor,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 0.8,
                          height: 20,
                          color: borderColor,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          endHour < 10 ? '0$endHour' : '$endHour',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: fontFamily,
                            color: fontColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          endMinute < 10 ? '0$endMinute' : '$endMinute',
                          style: TextStyle(
                            fontSize: 15,
                            fontFamily: fontFamily,
                            color: fontColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Flexible(
                  child: Text(
                    title.toUpperCase(),
                    style: TextStyle(
                      fontSize: 60,
                      fontFamily: fontFamily,
                      color: fontColor,
                      height: 0.9,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 50,
                ),
                for (var person in people) person,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
