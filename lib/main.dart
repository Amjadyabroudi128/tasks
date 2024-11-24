import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:tasks/Themes/appTheme.dart';

import 'features/home/homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ndbxnhepzlmjrdbuggag.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5kYnhuaGVwemxtanJkYnVnZ2FnIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzIxMjE3NDQsImV4cCI6MjA0NzY5Nzc0NH0.L73fUu_RChhfC1WinVyj5Rsn-PqFeC32Zjmnu0I4Z-M',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.myTheme,
      home: TaskScreen(),
    );
  }
}


