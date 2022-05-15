import 'dart:ui';

import '../widget/widgets.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.only(
                  top: 20,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                      ),
                      child: Center(
                        child: normaltext(20, 'Profile'),
                      ),
                    ),
                    space(MediaQuery.of(context).size.height * 0.1),
                    Container(
                      margin: const EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          //image picker
                          Container(
                            width: MediaQuery.of(context).size.width * .4,
                            height: MediaQuery.of(context).size.height * 0.2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(.09),
                                //Change to image picker.
                                image: const DecorationImage(
                                    image:
                                        AssetImage('Assets/Images/image4.png'),
                                    filterQuality: FilterQuality.high,
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ),

                          Container(
                            width: MediaQuery.of(context).size.width * .45,
                            height: MediaQuery.of(context).size.height * 0.2,
                            /* decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),*/
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    'Name',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
