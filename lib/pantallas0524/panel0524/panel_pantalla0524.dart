import 'package:flutter/material.dart';
import 'package:paez_uii_act1_0524/pantallas0524/panel0524/widgets0524/item_barberos0524.dart';

class PanelPantalla0524 extends StatelessWidget {
  const PanelPantalla0524({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff25a6cd),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu, color: Colors.white),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 25),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://raw.githubusercontent.com/SUPaezRivas/Img_FlutterFlow_IOS_6J/main/iconobarber.png"),
            ),
          ),
        ],
        title: Text('Paez Barberia0524', style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xff1eb8be),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5,
                  ),
                ]),
            child: const TextField(
              decoration: InputDecoration(
                hintText: "Hola aqui estoy",
                hintStyle:
                    TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.brown,
                ),
              ),
            ),
          ),
          Container(
            height: 180,
            margin: const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                // borderRadius: BorderRadius.circular(10)
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://raw.githubusercontent.com/SUPaezRivas/Img_FlutterFlow_IOS_6J/main/act12/local.png"))),
          ),
          ListTile(
            title: Text("Top Barberos"),
            titleTextStyle: Theme.of(context).textTheme.titleLarge,
            trailing: Icon(Icons.filter_list_outlined),
          ),
          Expanded(
            child: GridView.count(
              padding: EdgeInsets.all(15),
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 15,
              children: [for (int i = 1; i <= 10; i++) const ItemDoctor()],
            ),
          )
        ],
      ),
    );
  }
}
