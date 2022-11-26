
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menuapp/providers/category_provider.dart';
import 'package:menuapp/ui/pages/init_page.dart';
import 'package:provider/provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (BuildContext context)=> CategoryProvider()),
      ],
      child: MaterialApp(
        title: "MenuApp",
        theme: ThemeData(
          textTheme: GoogleFonts.openSansTextTheme(),
        ),
        home: InitPage(),
      ),
    );
  }
}

