import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pagesOFapplication/startingpage.dart';
import 'Code_provider/user_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => UserProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'task_2',
      home: Startingpage(),
    );
  }
}
