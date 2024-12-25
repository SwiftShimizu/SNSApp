import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepository {
  Future signup(String name, String email, String password) async {
    final response = await Supabase.instance.client.auth
        .signUp(email: email, password: password, data: {'name': name});
    return response.user;
  }
}