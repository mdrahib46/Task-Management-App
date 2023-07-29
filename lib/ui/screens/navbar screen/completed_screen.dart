import 'package:flutter/material.dart';

import '../../Widgets/task_list_tile.dart';
import '../../Widgets/user_profile_banner.dart';

class CompletedTaskScreen extends StatelessWidget {
  const CompletedTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),


            // Padding(
            //   padding: const EdgeInsets.all(8.0),
            //   child: Row(
            //     children: [
            //       SummaryCard(
            //         title: 'New',
            //         number: 10,
            //       ),
            //       SummaryCard(
            //         title: 'Progress',
            //         number: 15,
            //       ),
            //       SummaryCard(
            //         title: 'Cancel',
            //         number: 50,
            //       ),
            //       SummaryCard(
            //         title: 'Completed',
            //         number: 100,
            //       ),
            //     ],
            //   ),
            // ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index){
                  return const Divider(height: 4);
                },
                itemCount: 20, itemBuilder: (context, index) {
                return  TaskListTile(status: 'Pending', colour: Colors.purple.shade400,);
              },),),
          ],
        ),
      ),
    );
  }
}
