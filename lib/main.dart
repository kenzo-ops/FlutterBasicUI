import 'package:flutter/material.dart';
import 'BottomNav/bottomnavigation_bar.dart';
import 'ManUtdForm/form.dart';
import 'basic_layout/center.dart';
import 'basic_layout/column.dart';
import 'basic_layout/row.dart';
import 'basic_layout/listview.dart';
import 'basic_layout/grid.dart';
import 'basic_layout/stack.dart';
import 'basic_layout/padding.dart';
import 'basic_layout/aspectratio.dart';
import 'basic_layout/expanded.dart';
import 'basic_layout/sizedbox.dart';
import 'basic_layout/wrap.dart';
import 'basic_widget/scaffold-appbar-body-floatbutton.dart';
import 'basic_widget/container.dart';
import 'basic_widget/text&button.dart';
import 'basic_widget/icon&image.dart';
import 'basic_widget/circleavatar.dart';

void main() {
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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AcademyRegistrationForm()
    );
  }
}


