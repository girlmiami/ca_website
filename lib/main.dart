import 'package:ca_website/providers/show_list_provider.dart';
import 'package:provider/provider.dart';

import './screens/home_screen.dart';
import 'package:flutter/material.dart';

double screenHeight = 0;
double screenWidth = 0;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ShowListProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}
