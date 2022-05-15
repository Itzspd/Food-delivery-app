import '../widget/widgets.dart';
import 'package:flutter/material.dart';

//TODO remove scafold.
class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        right: 15,
                        left: 15,
                        bottom: 0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(Icons.help_outline_rounded,
                              size: 30, color: Colors.grey),
                          normaltext(22, 'Cart'),
                          const Icon(Icons.delete_outline_outlined,
                              size: 30, color: Colors.red)
                        ],
                      ),
                    ),
                    space(MediaQuery.of(context).size.height * 0.3),
                    Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: const BoxDecoration(
                            //TODO, change the image.
                            image: DecorationImage(
                                image: AssetImage('Assets/Images/image12.jpeg'),
                                fit: BoxFit.contain),
                          ),
                        ),
                        space(MediaQuery.of(context).size.height * 0.04),
                        normaltext(20, 'You have no item in your cart')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
