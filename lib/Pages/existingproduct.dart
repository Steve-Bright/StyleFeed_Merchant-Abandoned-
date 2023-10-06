import 'package:flutter/material.dart';

class existingCard extends StatefulWidget {
  final String description;
  final String price;
  final String size;
  final String color;
  final String quantity;
  final String add;

  const existingCard(
      {super.key,
      required this.description,
      required this.price,
      required this.size,
      required this.color,
      required this.quantity,
      required this.add});

  @override
  State<existingCard> createState() => _existingCardState();
}

class _existingCardState extends State<existingCard> {
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
                    "Heading",
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 20),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.mode_edit_outlined,
                        size: 30,
                      )),
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
            )
          ],
        ),
      ),
    );
  }
}
