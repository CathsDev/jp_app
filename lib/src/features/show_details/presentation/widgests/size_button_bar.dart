import 'package:flutter/material.dart';

enum Size { small, medium, large }

class SingleChoice extends StatefulWidget {
  const SingleChoice({super.key});

  @override
  State<SingleChoice> createState() => _SingleChoiceState();
}

class _SingleChoiceState extends State<SingleChoice> {
  Size calendarView = Size.large;

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<Size>(
      segments: const <ButtonSegment<Size>>[
        ButtonSegment<Size>(
          value: Size.small,
          label: Text('Small', style: TextStyle(fontSize: 11)),
        ),
        ButtonSegment<Size>(
          value: Size.medium,
          label: Text('Medium', style: TextStyle(fontSize: 11)),
        ),
        ButtonSegment<Size>(
          value: Size.large,
          label: Text('Large', style: TextStyle(fontSize: 11)),
        ),
      ],
      selected: <Size>{calendarView},
      onSelectionChanged: (Set<Size> newSelection) {
        setState(() {
          calendarView = newSelection.first;
        });
      },
      showSelectedIcon: false,
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
      ),
    );
  }
}
