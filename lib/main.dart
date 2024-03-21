import 'package:flutter/material.dart';
import 'package:paez_uii_act1_0524/pantallas0524/panel0524/panel_pantalla0524.dart';

void main() => runApp(MiAppbarberos());

class MiAppbarberos extends StatelessWidget {
  const MiAppbarberos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Paez Barberia 0524",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
          useMaterial3: true),
      home: PanelPantalla0524(),
    );
  }
}
