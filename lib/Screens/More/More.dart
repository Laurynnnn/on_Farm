// ignore: file_names
import 'package:flutter/material.dart';

import '../Drawer/SideMenu.dart';

class More extends StatefulWidget {
  const More({Key? key}): super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: const SideMenu(),
        appBar: AppBar(
        title: const Text("More",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        elevation: 0.5,
        iconTheme: const IconThemeData(color: Colors.white),
        flexibleSpace:Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[Theme.of(context).primaryColor, Theme.of(context).colorScheme.secondary,]
              )
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                const Icon(Icons.notifications),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.red, borderRadius: BorderRadius.circular(6),),
                    constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: const Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                )
              ],
            ),
          )
        ],
      ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget> [
              const Text(
                 "More", style: TextStyle(fontSize: 40),
              ),
            ],

          ),
        ),
    );
  }
}
