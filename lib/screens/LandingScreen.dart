import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:uidesign2/utils/constants.dart';

import '../utils/data.dart';
import '../utils/widget_functions.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Stack(
                    fit: StackFit.expand,
                    children: [
                      Container(
                        color: COLOR_GREEN,
                      ),
                      Image.asset('assets/images/tree_v.png'),
                      Padding(padding: const EdgeInsets.all(10),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           Row(
                             children: [
                               Container(
                                 width: 70,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(20.0)
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(8.0),
                                   child: Image.asset("assets/images/avatar.png"),
                                 ),
                               ),
                               addHorizontalSpace(20),
                               Expanded(
                                 child: Text('How Hungry are you Today..?', 
                                  style: textTheme.headline5!.apply(
                                    color: Colors.white
                                  ),
                                 ),
                               )

                             ],
                           ),
                           TextField(
                             style: TextStyle(color: Colors.white),
                             cursorColor: Colors.white,
                             decoration: InputDecoration(
                               hintText: "Search Food Items",
                               hintStyle: TextStyle(color: Colors.white),
                               border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(20.0),
                                 borderSide: BorderSide.none
                               ),
                               prefixIcon: Icon(Icons.search, color: Colors.white,),
                               suffixIcon: Container(
                                 width: 70,
                                 height: 70,
                                 decoration: BoxDecoration(
                                   color: Colors.white24,
                                   borderRadius: BorderRadius.only(
                                     topRight: Radius.circular(20.0),
                                     bottomRight: Radius.circular(20.0)
                                     ),
                                 ),
                                 child: Icon(Icons.menu, color: Colors.white,),
                               ),
                               filled: true,
                               fillColor: Colors.white24
                             ),
                           ),

                           addVerticalSpace(20),
                         ],
                       ),
                       
                       ),
                    ],
                  ),
                ),
                Container(
                        width: constraints.maxWidth,
                        color: Colors.grey.shade200,
                        height: 400,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 10.0,
                            bottom: 10.0
                          ),
                          child: Stack(
                            clipBehavior: Clip.none,
                            children: [
                              Column(
                                children: [
                                  addVerticalSpace( constraints.maxWidth * 0.35 ),
                                  Row(
                                    children: [
                                      Text("Popular Foods", style: textTheme.headline5,),
                                      Expanded(
                                        child: Center(),
                                      ),
                                      Text("View All >", style: textTheme.subtitle2?.apply(color: COLOR_ORANGE),),
                                      addHorizontalSpace(10)
                                    ],
                                  )
                                ],
                              ),
                              Positioned(
                                top: -constraints.maxWidth * 0.15,
                           child: Container(
                             width: constraints.maxWidth,
                             height: constraints.maxWidth * 0.35,
                             child: ListView(
                               scrollDirection: Axis.horizontal,
                               physics: BouncingScrollPhysics(),
                               children: CATEGORIES.map((category) => Container(
                                 margin: const EdgeInsets.only(
                                   right: 10.0,
                                   
                                 ),
                                 width: constraints.maxWidth * 0.25,
                                 decoration: BoxDecoration(
                                   color: Colors.white,
                                   borderRadius: BorderRadius.circular(20.0)
                                 ),
                                 child: Padding(
                                   padding: const EdgeInsets.all(10.0),
                                   child: Column(
                                     children: [
                                       Image.asset("assets/images/${category["image"]}"),
                                       addVerticalSpace(10),
                                       Text("${category["name"]}", style: textTheme.bodyText2?.apply(color: COLOR_BLACK  ),)
                                     ],
                                   ),
                                 ),
                               )).toList(),
                             ),
                           ),
                         )
                            ],
                          ),
                          
                        ),
                        
                      ),
                      
              ],
            ),
          );
        },
      ),
    );
  }
}
