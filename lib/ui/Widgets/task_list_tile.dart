import 'package:flutter/material.dart';

class TaskListTile extends StatelessWidget {
  TaskListTile({
    super.key, required this.status, required this.colour
  });
  String status;
  final colour;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: const Text('Lorem Ipsum', style: TextStyle(fontWeight: FontWeight.w600),),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Subtitle will be here'),
          const Text('28 July, 2023'),
          Row(
            children: [
              Chip(label:  Text(status, style:  TextStyle(color: Colors.white),),backgroundColor: colour),
              const Spacer(),
              IconButton(onPressed: (){}, icon: const Icon(Icons.delete), color: Colors.red.shade300,),
              IconButton(onPressed: (){}, icon: const Icon(Icons.edit), color: Colors.green,),
            ],
          )

        ],
      ),
    );
  }
}