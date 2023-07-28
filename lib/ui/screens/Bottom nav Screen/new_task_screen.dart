import 'package:flutter/material.dart';
import 'package:task_management_app/ui/screens/Bottom%20nav%20Screen/add_new_task_screen.dart';

import '../../Widgets/summary_card.dart';
import '../../Widgets/task_list_tile.dart';
import '../../Widgets/user_profile_banner.dart';

class NewTaskScreen extends StatelessWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  SummaryCard(
                    title: 'New',
                    number: 10,
                  ),
                  SummaryCard(
                    title: 'Progress',
                    number: 15,
                  ),
                  SummaryCard(
                    title: 'Cancel',
                    number: 50,
                  ),
                  SummaryCard(
                    title: 'Completed',
                    number: 100,
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(height: 4);
                },
                itemCount: 20,
                itemBuilder: (context, index) {
                  return TaskListTile(
                    status: 'New',
                    colour: Colors.blue.shade400,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AddNewTaskScreen(),
              ),
            );
          },
          child: const Icon(Icons.add)),
    );
  }
}
