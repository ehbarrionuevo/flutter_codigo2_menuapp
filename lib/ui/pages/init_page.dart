import 'package:flutter/material.dart';

class InitPage extends StatefulWidget {
  const InitPage({Key? key}) : super(key: key);

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.add,),
            label: "Inicio"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,),
            label: "Ordenes"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,),
              label: "Favoritos"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add,),
              label: "Mi perfil"
          ),
        ],
      ),
    );
  }
}
