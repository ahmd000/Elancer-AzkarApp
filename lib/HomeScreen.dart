
import 'package:elancer_azkar_app/BioScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

enum Azkar { Esteghfar, Taspeeh, alhamd, allhAkbar }

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;
  String _content = " سبحان الله ";

  // int _esteghfar = 0;
  //
  // int _allahAkbar = 0;
  //
  // bool _esteghfarState = true;
  // void _hesabEsteghfar() {
  //   setState(() {
  //     _esteghfar++;
  //   });
  // }
  //
  // void _e3adhEsteghfar() {
  //   setState(() {
  //     _esteghfar = 0;
  //   });
  // }
  //
  // void _hesabAllhAkbar() {
  //   setState(() {
  //     _allahAkbar++;
  //   });
  // }
  //
  // void _e3adhAllahAkbar() {
  //   setState(() {
  //     _allahAkbar = 0;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          PopupMenuButton<String>(
              elevation: 20,
              onSelected: (value) {
                if (_content != value) {
                  setState(() {
                    _content = value;
                    _count = 0;
                  });
                }
              },
              icon: Icon(Icons.menu_book_sharp),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                    child: Text("سبحان الله "),
                    value: "سبحان الله ",
                  ),
                  PopupMenuItem(
                    child: Text("الحمد الله "),
                    value: "الحمد الله ",
                  ),
                  PopupMenuItem(
                    child: Text("الله اكبر "),
                    value: "الله اكبر ",
                  ),
                  PopupMenuItem(
                    child: Text("لا اله الا الله "),
                    value: "لا اله الا الله ",
                  ),
                ];
              }

              // PopupMenuItem<int>(
              //   child: InkWell(
              //       onTap: () {
              //         setState(() {
              //           _esteghfarState = true;
              //         });
              //       },
              //       child: Text("استغفر الله ")),
              //   value: 1,
              // ),
              // PopupMenuItem<int>(
              //   child: InkWell(
              //       onTap: () {
              //         setState(() {
              //           _esteghfarState = false;
              //         });
              //       },
              //       child: Text("سبحان الله")),
              //   value: 1,
              // ),

              //   ]),

              )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BioScreen()));
          },
          icon: Icon(
            Icons.info_outline_rounded,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: const AssetImage('images/img1.jpeg'),
          fit: BoxFit.fill,
        )),
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                  height: 370,
                  width: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: const AssetImage('images/img2.png'),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '$_count',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40,
                        ),
                      ),

                      // _esteghfarState?  Text(
                      //     '$_esteghfar',
                      //     style: TextStyle(
                      //       color: Colors.black,
                      //       fontSize: 35,
                      //     ),
                      //   ):
                      //
                      //
                      //   Text(
                      //   '$_allahAkbar',
                      //   style: TextStyle(
                      //     color: Colors.black,
                      //     fontSize: 35,
                      //   ),
                      // ),
                    ],
                  )),

              InkWell(
                onTap: () {
                  setState(() {
                    _count++;
                  });
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                      begin: AlignmentDirectional.topStart,
                        end: AlignmentDirectional.bottomEnd,
                        tileMode: TileMode.mirror,
                        colors: [Colors.white70, Colors.white10]),
                  ),
                  child: Text(
                    "${_content.toString()}",
                    style: TextStyle(color: Colors.white, fontSize: 50),
                  ),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(
                  //     image: const AssetImage('images/img6.png'),
                  //   ),
                  // ),
                ),
              ),

              // _esteghfarState
              //     ? InkWell(
              //         onTap: _hesabEsteghfar,
              //         child: Container(
              //           height: 200,
              //           width: 200,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //               image: const AssetImage('images/img3.png'),
              //             ),
              //           ),
              //         ),
              //       )
              //     : InkWell(
              //         onTap: _hesabAllhAkbar,
              //         child: Container(
              //           height: 200,
              //           width: 200,
              //           decoration: BoxDecoration(
              //             image: DecorationImage(
              //               image: const AssetImage('images/img6.png'),
              //             ),
              //           ),
              //         ),
              //       ),

              SizedBox(height: 50,),
              InkWell(
                onTap: () {
                  setState(() {
                    _count = 0;
                  });
                },
                child: Container(
                  child: Icon(
                    Icons.replay_circle_filled,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              )

              // _esteghfarState
              //     ? InkWell(
              //         onTap: _e3adhEsteghfar,
              //         child: Container(
              //           child: Icon(
              //             Icons.replay_circle_filled,
              //             color: Colors.white,
              //             size: 50,
              //           ),
              //         ),
              //       )
              //     : InkWell(
              //         onTap: _e3adhAllahAkbar,
              //         child: Container(
              //           child: Icon(
              //             Icons.replay_circle_filled,
              //             color: Colors.white,
              //             size: 50,
              //           ),
              //         ),
              //       )
            ],
          ),
        ),
      ),
    );
  }
}
