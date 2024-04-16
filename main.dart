import 'package:flutter/material.dart';
import 'package:ft_ui_challenge/objects/person.dart';
import 'widgets/header.dart';
import 'widgets/datePicker.dart';
import 'widgets/todoCard.dart';
import 'objects/team.dart';

void main() {
  runApp(const App());
  //   'https://i.ibb.co/fDbDZJx/golang-face.png'
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    var webDev = Team();
    var school = Team();
    var coWorkers = Team();

    var connor = Person(name: 'connor');
    var nico = Person(name: 'nico');
    var kevin = Person(name: 'kevin');
    var kyle = Person(name: 'kyle');
    var kairos = Person(name: 'kairos');

    webDev.add(connor);
    webDev.add(kevin);
    webDev.add(kyle);

    school.add(nico);
    school.add(kairos);
    school.add(connor);

    coWorkers.add(kevin);
    coWorkers.add(kyle);
    coWorkers.add(connor);
    coWorkers.add(kairos);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  const Header(
                      imageUrl: 'https://i.ibb.co/fDbDZJx/golang-face.png'),
                  const SizedBox(
                    height: 20,
                  ),
                  const DatePicker(),
                  const SizedBox(
                    height: 20,
                  ),
                  TodoCard(
                    startHour: 9,
                    startMinute: 0,
                    endHour: 10,
                    endMinute: 0,
                    title: 'Website Meeting',
                    team: webDev,
                  ),
                  TodoCard(
                    startHour: 11,
                    startMinute: 20,
                    endHour: 13,
                    endMinute: 0,
                    title: 'Happy Lunch',
                    team: coWorkers,
                    isEven: true,
                  ),
                  TodoCard(
                    startHour: 15,
                    startMinute: 0,
                    endHour: 16,
                    endMinute: 0,
                    title: 'Daily Homework',
                    team: school,
                  ),
                  TodoCard(
                    startHour: 18,
                    startMinute: 30,
                    endHour: 22,
                    endMinute: 0,
                    title: 'Dinner with Friends',
                    team: webDev,
                    isEven: true,
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
