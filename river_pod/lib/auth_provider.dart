import 'package:flutter_riverpod/flutter_riverpod.dart';

class User {
  final String name;
  User(this.name);
}

// Global auth state provider
final authProvider = StateProvider<User?>((ref) => null);
