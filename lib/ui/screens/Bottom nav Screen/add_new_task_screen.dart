import 'package:flutter/material.dart';
import '../../Widgets/user_profile_banner.dart';

class AddNewTaskScreen extends StatelessWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const UserProfileBanner(),
            const SizedBox(height: 30),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Add new task",
                      style: Theme.of(context).textTheme.titleLarge),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: 'Title',
                    ),
                  ),
                  const SizedBox(height: 14),
                  TextFormField(
                    maxLines: 10,
                    decoration: const InputDecoration(
                      hintText: 'Descriptions',
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.arrow_forward_ios)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
