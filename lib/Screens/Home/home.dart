// ignore: file_names


// ignore_for_file: unused_element, non_constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:on_farm/Screens/Drawer/SideMenu.dart';
import 'package:on_farm/Screens/Login/Login.dart';

class Home extends StatefulWidget {
  const Home({Key? key}): super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// ignore: duplicate_ignore, duplicate_ignore
class _HomeState extends State<Home> {
  get mainAxisAlignment => null;

  // ignore: dead_code
  Widget _categories({required String name}){
    return Container(
      height: 60,
      width:  120,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(10),
      ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: 50,
              width: 50,
              child: Image.asset(
                'assets/bg.jpg',
                color: Colors.green,

              )
            ),
            Text(name),
          ]
        ),
      );
  }
  
  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names, prefer_equal_for_default_values
  Widget _bottomContainer(
    {
      required Color color, 
      // ignore: non_constant_identifier_names
      required double Price, 
      required String Product, 
      required String Quantity, 
      required String Description,
      required String images,
      })
      {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),

      ),
      child: Row(
        children: [
          Container(
            width: 160,
            padding: const EdgeInsets.only(
              left: 20,
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('UGX $Price '),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  Product,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 248, 247, 247),
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  const SizedBox(
                    height: 20,

                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Quantity,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 254, 252, 252),
                          ),
                      ),
                      const SizedBox(
                    height: 5,

                  ),
                  Text(
                    Description,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 251, 250, 250),
                          ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Container(
            height: 190,
            width: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            // image: DecorationImage(
            //     image: AssetImage(images),
            //     fit: BoxFit.cover,
            //   ),
            ),
          )
        ],
      ),
    );
  }
  
  @override
  Widget build(BuildContext context, {required List<Text> children}) {
    return Scaffold(
        drawer: const SideMenu(),
        appBar: AppBar(
        title: const Text("Home",
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
                    decoration: BoxDecoration( color: Colors.black, borderRadius: BorderRadius.circular(6),),
                    constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                    child: const Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                  ),
                ),
              
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only( top: 16, right: 16,),
            child: Stack(
              children: <Widget>[
                const Icon(Icons.person),
                Positioned(
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration( color: Colors.black, borderRadius: BorderRadius.circular(6),),
                    constraints: const BoxConstraints( minWidth: 12, minHeight: 12, ),
                    // child: const Text( '5', style: TextStyle(color: Colors.white, fontSize: 8,), textAlign: TextAlign.center,),
                    child: ListView(
                      prototypeItem: ListTile(
                    
                    onTap: () => {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Login()))
                    },
                    ),
                    ),
                    
                ),
                ),
              ],
            ),
          )
        ],
      ),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                color: Colors.white70,
                height: 330,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              // ignore: prefer_const_literals_to_create_immutables
              child: Column(children: [
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    hintText: 'Enter name of product...',
                    prefixIcon: const Icon(Icons.search, color: Color.fromARGB(255, 0, 64, 3),),
                    fillColor: const Color.fromARGB(255, 187, 187, 187),
                    border: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(5.0),
                      borderSide: BorderSide.none,
                      gapPadding: 0,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  
                  width: double.infinity,
                  height: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 42, 141, 0),
                    borderRadius: BorderRadius.circular(5.0),

                  ),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(5.0),
                            // margin: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text('Welcome to Onfarm', 
                                style: TextStyle(
                                  fontSize: 20, 
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                                const Text('Sell and buy products of your choice.',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                                ),
                              ],
                            ),
                            ),
                            const Divider(
                      color: Color.fromARGB(255, 83, 82, 82),
                    ),   
                        ]
                      ),
                    ]
                  ),
                  ),
              ],
              ),  
              ),
              Container(
                height: 250,
                width: 200,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      'assets/bg.jpg'
                      ),
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(1.0),
                    bottomRight: Radius.circular(1.0),
                  )
                )
                ,
              ),
                    const Divider(
                      color: Color.fromARGB(255, 83, 82, 82),

                    ),
                    Padding(
                      // ignore: sort_child_properties_last
                      child: Column(
                        children: [
                          _bottomContainer(
                            color: const Color.fromARGB(255, 42, 141, 0), 
                            Price: 100, 
                            Product: 'Matooke', 
                            Quantity: '12 banches', 
                            Description: 'Recently developed', 
                            images: 'assets/bg.jpg'
                          ),
                            const SizedBox(
                              height: 20,
                            ),
                            _bottomContainer(
                              color: const Color.fromARGB(255, 42, 141, 0), 
                              Price: 100, 
                              Product: 'Milk', 
                              Quantity: '7 liters', 
                              Description: 'Not harvested yet', 
                              images: 'assets/bg.jpg'
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            _bottomContainer(
                              color: const Color.fromARGB(255, 42, 141, 0),
                              Price: 100, 
                              Product: 'Beans', 
                              Quantity: '20 kilograms', 
                              Description: 'Freshly harvested', 
                              images: 'assets/bg.jpg'
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            _bottomContainer(
                              color: const Color.fromARGB(255, 42, 141, 0), 
                              Price: 100, 
                              Product: 'Maize', 
                              Quantity: '200 cobs', 
                              Description: 'Fresh', 
                              images: 'assets/bg.jpg'
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            

                        ],
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 20),

                      ),

                ],)
              ),
    );
        
  }
}
