import 'package:flutter/material.dart';

class VendorList extends StatelessWidget {
  final double _rightDist;
  final double _leftDist;
  final String _imageName;
  final String _resturantName;
  final String _duration;

  VendorList(
    this._rightDist,
    this._leftDist,
    this._imageName,
    this._resturantName,
    this._duration,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: _rightDist,
        left: _leftDist,
        top: 30,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromRGBO(32, 40, 32, 1),
      ),
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //for image
            Container(
              width: 150,
              height: 80,
              margin: const EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromRGBO(54, 64, 64, 1),
                image: DecorationImage(
                    image: AssetImage(
                      _imageName,
                    ),
                    fit: BoxFit.fill),
              ),
            ),
            //for resturant name.
            Text(
              _resturantName,
              maxLines: 1,
              style: const TextStyle(
                  overflow: TextOverflow.ellipsis,
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            //for time till delivery.
            Text(
              _duration,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w300,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
