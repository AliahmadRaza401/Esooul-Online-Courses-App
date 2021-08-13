import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  Wishlist({Key? key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Wishlist"),
    );
  }
}
