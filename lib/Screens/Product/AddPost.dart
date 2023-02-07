

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
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 350,
                decoration: const BoxDecoration(
                  color: Colors.amberAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(20, 8, 20, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Divider(
                                  thickness: 3,
                                  indent: 150,
                                  endIndent: 150,
                                  color: Colors.blueAccent,
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 4, 16, 0),
                                        child: Text(
                                          'add post',
                                          // style: FlutterFlowTheme.of(context)
                                          //     .title2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    const Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 8, 0, 0),
                                        child: Text(
                                          'you can add your produce here',
                                          // style: FlutterFlowTheme.of(context)
                                          //     .bodyText2,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100,
                                        height: 100,
                                        decoration: BoxDecoration(
                                          color: const Color(0xFFDBE2E7),
                                          image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: Image.asset(
                                              'assets/images/addImage@2x.png',
                                            ).image,
                                          ),
                                          shape: BoxShape.circle,
                                        ),
                                        child: Stack(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(4, 4, 4, 4),
                                              child: Container(
                                                width: 120,
                                                height: 120,
                                                clipBehavior: Clip.antiAlias,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Image.network(
                                                  'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  const AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(4, 4, 4, 4),
                                                child: Container(
                                                  width: 120,
                                                  height: 120,
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: const BoxDecoration(
                                                    shape: BoxShape.circle,
                                                  ),
                                                  child: Image.network(
                                                    'https://images.unsplash.com/photo-1534528741775-53994a69daeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Align(
                                              alignment:
                                                  const AlignmentDirectional(0, 0),
                                              child: Image.network(
                                                'https://picsum.photos/seed/928/600',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 24, 0, 44),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      MaterialButton(
                                        onPressed: () async {},
                                        child: const Text(
                                          'Upload Image',
                                          // width: 150,
                                          // height: 50,
                                          // color: Color(0xFF3F7934),
                                          style: TextStyle(
                                             fontFamily: 'Poppins',
                                              color:
                                                    Colors.lightBlueAccent,
                                        ) 

                                          ),
                                               
                                              ),
                                          // elevation: 2,
                                          // borderSide: const BorderSide(
                                          //   color: Colors.transparent,
                                          //   width: 1,
                                          // ),
                                    ],
                                  ),
                                      ),
                                      MaterialButton(
                                        onPressed: () {
                                          // ignore: avoid_print
                                          print('Button pressed ...');
                                        },
                                        child: const Text(
                                          'Save Changes',
                                
                                          // width: 150,
                                          // height: 50,
                                          // color: const Color(0xFF3F7934),
                                          style: TextStyle(
                                            fontFamily: 'Lexend Deca',
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight:
                                                        FontWeight.normal,

                                          ),
                                              
                                          // elevation: 2,
                                          // borderSide: BorderSide(
                                          //   color: Colors.transparent,
                                          //   width: 1,
                                          // ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              
                            ),
                          ),
                    ],
                        ),
                  ),
                )
            ],
          ),
        ),
      ),

              );
  }
}
