import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

const double _MARGIN = 10;
const String _TODAY = 'TODAY';
const double _TODAY_FONT_SIZE = 20;

class DatePicker extends StatelessWidget {
  const DatePicker({super.key});

  List<Widget> getDays(int from, int to) {
    List<Widget> result = [];

    for (int i = from; i <= to; i++) {
      result.add(Text(i.toString(),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 35,
          )));
      result.add(const SizedBox(width: _MARGIN + 5));
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    int day = currentDate.day;
    int lastDay = DateTime(currentDate.year, currentDate.month + 1, 0).day;
    List<Widget> days = getDays(day, lastDay);
    String dayOfWeek;
    switch (currentDate.weekday) {
      case 1:
        dayOfWeek = 'MONDAY';
        break;
      case 2:
        dayOfWeek = 'TUESDAY';
        break;
      case 3:
        dayOfWeek = 'WEDNESDAY';
        break;
      case 4:
        dayOfWeek = 'THURSDAY';
        break;
      case 5:
        dayOfWeek = 'FRIDAY';
        break;
      case 6:
        dayOfWeek = 'SATURDAY';
        break;
      case 7:
        dayOfWeek = 'SUNDAY';
        break;
      default:
        dayOfWeek = '';
    }

    return Column(
      children: [
        Row(
          children: [
            Text(
              dayOfWeek,
              style: const TextStyle(
                color: Colors.white,
                fontSize: _TODAY_FONT_SIZE,
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            Text(
              day.toString(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: _TODAY_FONT_SIZE,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: [
            const Text(
              _TODAY,
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              width: _MARGIN,
            ),
            const Icon(
              Icons.circle,
              color: Colors.pink,
              size: 10,
            ),
            const SizedBox(
              width: _MARGIN,
            ),
            Expanded(
              // `Expanded` 위젯을 추가하여 남은 공간을 모두 채우도록 함
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // 수평 스크롤을 활성화
                child: Row(
                  children: [
                    for (Widget dayWidget in days) dayWidget,
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
