

// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
// import '..flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

import '../Drawer/SideMenu.dart';

class AddPost extends StatefulWidget {
  const AddPost({Key? key}): super(key: key);

  @override
  State<AddPost> createState() => _AddPostState();
}

class _AddPostState extends State<AddPost> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const SideMenu(),
        appBar: AppBar(
        title: const Text("Add Post",
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
       body: const MyCustomForm(),  
      );  
  }  
}  
// Create a Form widget.  
class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});
  
  @override  
  MyCustomFormState createState() {  
    return MyCustomFormState();  
  }  
}  
// Create a corresponding State class. This class holds data related to the form.  
class MyCustomFormState extends State<MyCustomForm> {  
  // Create a global key that uniquely identifies the Form widget  
  // and allows validation of the form.  
  final _formKey = GlobalKey<FormState>();  
  
  @override  
  Widget build(BuildContext context) {  
    // Build a Form widget using the _formKey created above.  
    return Form(  
      key: _formKey,  
      child: Column(  
        crossAxisAlignment: CrossAxisAlignment.start,  
        children: <Widget>[  
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.label),  
              hintText: 'Enter name of product',  
              labelText: 'Product Name',  
            ),  
          ), 
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.production_quantity_limits),  
              hintText: 'Enter quantity available',  
              labelText: 'Quantity Available',  
            ),  
          ), 
          TextFormField(  
            decoration: const InputDecoration(  
            icon: Icon(Icons.description_outlined),  
            hintText: 'Enter brief decription of product',  
            labelText: 'Description',  
            ),  
           ), 
          TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone Contact',  
            ),  
          ),  
          TextFormField(  
            decoration: const InputDecoration(  
            icon: Icon(Icons.location_city_outlined),  
            hintText: 'Enter location of product',  
            labelText: 'Location',  
            ),  
           ),  
          Container(  
              padding: const EdgeInsets.only(left: 150.0, top: 40.0),  
              
              child: ElevatedButton(
          child: const Text('Submit',
          style: TextStyle(
                  fontSize: 20, 
                  color: Color.fromARGB(255, 244, 245, 243),
                  fontWeight: FontWeight.bold,
                ),
                ),
          onPressed: () {
            // Navigate to second route when tapped.
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AddPost()),);
          },
              ),  
          ),
        ],

      ),
    );
  }
}
