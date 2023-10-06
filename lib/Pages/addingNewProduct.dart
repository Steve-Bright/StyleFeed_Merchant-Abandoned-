import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class addingNewProduct extends StatefulWidget {
  final String description;
  final String price;
  final String size;
  final String color;
  final String quantity;
  final String add;

  const addingNewProduct(
      {super.key,
      required this.description,
      required this.price,
      required this.size,
      required this.color,
      required this.quantity,
      required this.add});

  @override
  State<addingNewProduct> createState() => _addingNewProductState();
}

class _addingNewProductState extends State<addingNewProduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 224, 224, 224),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 35,
            ),
          ),
          backgroundColor:
              Colors.transparent, // Set background color to transparent
          elevation: 0,
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: [
            SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    "Add a Heading",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors
                          .transparent, // Change the background color here
                    ),
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  height: 30,
                ),
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255)),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'images/p4.webp',
                  ),
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Brand - ${widget.description}",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Price - ${widget.price}",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "Size - ${widget.size}",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "color - ${widget.description}",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(
                    "quantity - ${widget.description}",
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 40),
                  child: const Text(
                    "Style Feed",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
