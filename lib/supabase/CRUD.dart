
 import 'package:supabase_flutter/supabase_flutter.dart';

class mySupabase {
   final SupabaseClient _supabase = Supabase.instance.client;

   Future<List<dynamic>> getTasks() async {
     final response = await _supabase.from("tasks").select().order("id");
     if (response !=null) {
       return response;
     }
     return [];
   }
   Future<void> addTask(String taskName) async {
     if (taskName.isNotEmpty) {
       await _supabase.from('tasks').insert({'task': taskName, 'isCompleted': false});
     }
   }
 }