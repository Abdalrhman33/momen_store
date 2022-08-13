import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
         ListTile(
          leading: Icon(Icons.info),
          title: Text("Info"),
          subtitle: Text("info"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.privacy_tip),
          title: Text("Privacy"),
          subtitle: Text("info"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("Log out"),
          subtitle: Text("info"),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
        // ListTile(
        //   leading: Icon(Icons.info),
        //   title: Text("Info"),
        //   subtitle: Text("info"),
        //   trailing: Icon(Icons.arrow_forward_ios),
        // ),
      ],
    );
  }
}
