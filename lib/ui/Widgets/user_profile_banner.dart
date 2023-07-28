import 'package:flutter/material.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      tileColor: Colors.green,
      leading: CircleAvatar(
          radius: 20 ,
          backgroundImage:
          NetworkImage('https://media.licdn.com/dms/image/D5603AQHf4z-vD-XDYg/profile-displayphoto-shrink_800_800/0/1688665163800?e=2147483647&v=beta&t=EqY5Js9szcqAoEtVN6IM4UNlC9TxzpU3gnEh3_YcFxY')
      ),
      title: Text('User Name', style: TextStyle(color: Colors.white),),
      subtitle: Text("emailaddress@mail.com", style: TextStyle(color: Colors.white),),
    );
  }
}