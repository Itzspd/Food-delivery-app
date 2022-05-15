import '../widget/widgets.dart';
import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
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
                margin: const EdgeInsets.only(top: 20),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(
                        top: 30,
                        right: 20,
                        left: 20,
                        bottom: 30,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          const SizedBox(
                            width: 10,
                          ),
                          normaltext(20, 'Wallet'),
                          const Icon(
                            Icons.help_outline_rounded,
                            size: 25,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    space(MediaQuery.of(context).size.height * 0.05),
                    //Wallet card.
                    Container(
                      margin:
                          const EdgeInsets.only(right: 20, left: 20, top: 10),
                      height: MediaQuery.of(context).size.height * 0.25,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.white.withOpacity(0.08),
                        ),
                        gradient: LinearGradient(
                          colors: [
                            Colors.white.withOpacity(0.3),
                            Colors.white.withOpacity(0.06),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            normaltext(15, 'Deggia'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.09,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                normaltext(25, '\$ 0.0'),
                                normaltext(15, 'Sylvester-paul David'),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.09,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    normaltext(15, 'Account number'),
                                    const Icon(
                                      Icons.arrow_right_alt_outlined,
                                      size: 25,
                                      color: Color.fromRGBO(50, 160, 96, .8),
                                    )
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    normaltext(17, 'No bvn'),
                                    const Icon(
                                      Icons.copy,
                                      size: 20,
                                      color: Color.fromRGBO(50, 160, 96, .8),
                                    )
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(right: 20, left: 20, top: 10),
                      child: ListTile(
                        //chnage the arrow
                        leading: const Icon(
                          Icons.compare_arrows_sharp,
                          size: 30,
                          color: Color.fromRGBO(50, 160, 96, .8),
                        ),
                        title: Text(
                          'Transactions',
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white.withOpacity(.8),
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              overflow: TextOverflow.ellipsis),
                        ),
                        subtitle: normaltext(
                          15,
                          'Withdraw, transfer etc',
                        ),
                        trailing: const Icon(
                          Icons.arrow_right_alt_rounded,
                          size: 30,
                          color: Color.fromRGBO(50, 160, 96, .8),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        //chnage the colors.
        SliverGrid.count(
          crossAxisCount: 2,
          children: [
            Container(
              margin: const EdgeInsets.only(
                right: 10,
                left: 20,
                top: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(90, 148, 143, .7),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.credit_card_rounded,
                      size: 35,
                      color: Color.fromRGBO(84, 156, 114, 1),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        FittedBox(
                          child: Text('Fund\nAccount',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(214, 231, 224, 1),
                              )),
                        ),
                        Text(
                          'directly to your deggia account',
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(160, 174, 168, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 20,
                left: 10,
                top: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(88, 96, 88, .7),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.monetization_on_outlined,
                      size: 35,
                      color: Color.fromRGBO(124, 142, 103, 1),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        FittedBox(
                          child: Text(
                            'Withdraw\nFunds',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(214, 231, 224, 1),
                            ),
                          ),
                        ),
                        Text(
                          'Send to your bank account',
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(160, 174, 168, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 10,
                left: 20,
                top: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(91, 109, 94, 1),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.compare_arrows_sharp,
                      size: 35,
                      color: Color.fromRGBO(61, 178, 112, 1),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        FittedBox(
                          child: Text(
                            'Transfer\nFunds',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(214, 231, 224, 1),
                            ),
                          ),
                        ),
                        Text(
                          'send to vendor',
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Color.fromRGBO(160, 174, 168, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                right: 20,
                left: 10,
                top: 30,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromRGBO(90, 148, 143, .7),
              ),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.track_changes_rounded,
                      size: 35,
                      color: Color.fromRGBO(84, 156, 120, 1),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const FittedBox(
                          child: Text(
                            'Expense\nTracker',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(214, 231, 224, 1),
                            ),
                          ),
                        ),
                        Text(
                          'Coming soon...',
                          maxLines: 1,
                          style: TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.red.withOpacity(.8),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
