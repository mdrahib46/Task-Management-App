import 'package:flutter/material.dart';
import 'package:task_management_app/ui/Widgets/user_profile_banner.dart';
import '../../Widgets/task_list_tile.dart';

class InProgressTaskScreen extends StatelessWidget {
  const InProgressTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider(height: 4);
                },
                itemCount: 20,
                itemBuilder: (context, index) {
                  return TaskListTile(
                    status: 'Pending',
                    colour: Colors.green.shade600,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
