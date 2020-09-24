import 'package:flutter/material.dart';

import 'package:realt_time_chat/pages/chat_page.dart';
import 'package:realt_time_chat/pages/home_page.dart';
import 'package:realt_time_chat/pages/loading_page.dart';
import 'package:realt_time_chat/pages/login_page.dart';
import 'package:realt_time_chat/pages/register_page.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  'home': (_) => HomePage(),
  'register': (_) => RegisterPage(),
  'chat': (_) => ChatPage(),
  'loading': (_) => LoadingPage(),
  'login': (_) => LoginPage(),
};
