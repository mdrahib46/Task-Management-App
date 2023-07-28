import 'package:flutter/material.dart';
import 'package:task_management_app/ui/screens/Bottom%20nav%20Screen/cancel_screen.dart';
import 'package:task_management_app/ui/screens/Bottom%20nav%20Screen/completed_screen.dart';
import 'package:task_management_app/ui/screens/Bottom%20nav%20Screen/in_progress_screen.dart';
import 'package:task_management_app/ui/screens/Bottom%20nav%20Screen/new_task_screen.dart';

class BottomNavBaseScreen extends StatefulWidget {
  const BottomNavBaseScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavBaseScreen> createState() => _BottomNavBaseScreenState();
}

class _BottomNavBaseScreenState extends State<BottomNavBaseScreen> {

  int _selectedScreenIndex = 0;

  final List<Widget> _screens = const [
    NewTaskScreen(),
    InProgressTaskScreen(),
    CancelTaskScreen(),
    CompletedTaskScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_selectedScreenIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedScreenIndex,
        onTap:  (int index){
          _selectedScreenIndex = index;

          if(mounted){
            setState(() {});
          }
        },
        unselectedItemColor: Colors.grey,
        // unselectedLabelStyle: TextStyle(color: Colors.grey),
        showUnselectedLabels: true,
        selectedItemColor: Colors.green,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: "New"),
          BottomNavigationBarItem(icon: Icon(Icons.account_tree), label: 'In Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.cancel), label: 'Cancel'),
          BottomNavigationBarItem(icon: Icon(Icons.done_all ), label: 'Completed'),
        ],
      ),
    );
  }
}
