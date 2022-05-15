import 'package:carousel_slider/carousel_slider.dart';
import '../widget/imagesliders.dart';
import '../widget/VendorsList.dart';
import '../widget/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
              //appbar-ish
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Container(
                  margin: const EdgeInsets.only(
                    top: 30,
                    right: 20,
                    left: 20,
                    bottom: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      const Icon(Icons.card_giftcard_rounded,
                          size: 30, color: Colors.grey),
                      Row(
                        children: [
                          normaltext(20, 'Male Silver 3'),
                          const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            color: Colors.grey,
                            size: 20,
                          )
                        ],
                      ),
                      const Icon(Icons.more_vert_outlined,
                          size: 30, color: Colors.grey)
                    ],
                  ),
                ),
              ),
              //Navigation btw mycampus and outside.
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(54, 64, 64, 1),
                ),
                padding: const EdgeInsets.all(20),
                margin: const EdgeInsets.only(
                  top: 50,
                  right: 20,
                  bottom: 10,
                  left: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    normaltext(18, 'My Campus'),
                    normaltext(18, 'Outside'),
                  ],
                ),
              ),
              //ADVERT
              Container(
                  margin: const EdgeInsets.only(
                    top: 10,
                    bottom: 10,
                  ),
                  child: Column(
                    children: <Widget>[
                      CarouselSlider(
                        options: CarouselOptions(
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          enableInfiniteScroll: true,
                          autoPlayAnimationDuration:
                              const Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ),
                        items: [
                          imageslider(
                            MediaQuery.of(context).size.height * .3,
                            'Assets/Images/image1.png',
                          ),
                          imageslider(
                            MediaQuery.of(context).size.height * .3,
                            'Assets/Images/image2.jpeg',
                          ),
                          imageslider(
                            MediaQuery.of(context).size.height * .3,
                            'Assets/Images/image3.png',
                          ),
                          imageslider(
                            MediaQuery.of(context).size.height * .3,
                            'Assets/Images/image4.png',
                          ),
                          imageslider(
                            MediaQuery.of(context).size.height * .3,
                            'Assets/Images/image8.png',
                          ),
                        ],
                      ),
                      space(5),
                      //TODO, link the image slider with the dots.
                      SizedBox(
                        width: 50,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              width: 8,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              width: 8,
                              height: 10,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
              //Text for popular order
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    headlinetext(
                      'Popular Orders',
                    ),
                    space(5),
                    normaltext(
                      17,
                      'Easily get acces to meals you love',
                    ),
                    //Add a gesture action.
                    GestureDetector(
                      onTap: null,
                      child: Container(
                        margin: const EdgeInsets.only(
                          right: 50,
                          top: 20,
                        ),
                        padding: const EdgeInsets.only(top: 2, bottom: 2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(32, 40, 32, 1),
                        ),
                        child: ListTile(
                          title: const Text(
                            'Food Title',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: const Text(
                            'Wood Cafe',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w300,
                              color: Colors.grey,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                          ),
                          //image
                          leading: Container(
                            width: 75,
                            height: 75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: const Color.fromRGBO(54, 64, 64, 1),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('Assets/Images/image2.jpeg'),
                                  fit: BoxFit.fill),
                            ),
                          ),
                          trailing: const Text(
                            'Make an Order',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                              color: Colors.lightGreen,
                            ),
                          ),
                        ),
                      ),
                    ),
                    //Vendors
                    //TODO fix the crossalignment.
                  ],
                ),
              ),
              //Vendor
              Container(
                margin: const EdgeInsets.only(right: 20, left: 20, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    headlinetext('Vendors'),
                    space(5),
                    normaltext(17, 'Get meals from your favorite vendors'),
                  ],
                ),
              ),
            ],
          ),
        ),

        //TODO change to GridView.count to avoid using to much memory.
        //Creat a separate model for the sliverGrid to reduce amount of codes.
        //Vendor Grid
        SliverGrid.count(
          crossAxisCount: 2,
          children: [
            VendorList(
              10,
              20,
              'Assets/Images/image1.png',
              'KFC Resturant',
              '60 - 90mins',
            ),
            VendorList(
              20,
              10,
              'Assets/Images/image2.jpeg',
              'Dominos Pizza',
              '10 - 15mins',
            ),
            VendorList(
              10,
              20,
              'Assets/Images/image3.png',
              'Chicken Republic',
              '25 - 30mins',
            ),
            VendorList(
              20,
              10,
              'Assets/Images/image4.png',
              'BestMan Resturant',
              '5 - 10mins',
            ),
            VendorList(
              10,
              20,
              'Assets/Images/image5.jpeg',
              'MC Donalds Resturant',
              '45 - 60mins',
            ),
            VendorList(
              20,
              10,
              'Assets/Images/image6.jpeg',
              'Kilimanjaro Resturant',
              '30 - 45mins',
            ),
            VendorList(
              10,
              20,
              'Assets/Images/image7.png',
              'Sweet Sensation',
              '20 - 30mins',
            ),
            VendorList(
              20,
              10,
              'Assets/Images/image8.png',
              'Tantalizers',
              '10 - 15mins',
            ),
          ],
        ),
      ],
    );
  }
}
