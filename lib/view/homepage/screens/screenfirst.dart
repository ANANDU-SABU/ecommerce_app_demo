import 'package:ecomerce_app/database/images.dart';
import 'package:ecomerce_app/provider/provider.dart';
import 'package:ecomerce_app/view/homepage/screens/screensecond.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class details extends StatefulWidget {
  const details({super.key, required this.Imageindex});
  final int Imageindex;
  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Color.fromARGB(255, 128, 228, 243),
          title: Center(
              child: Text(
            "Details",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notification_add_rounded,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              
              child: Container(
                height: 370,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.grey.shade500,
                    borderRadius: BorderRadius.circular(10)),
                child: sandals[widget.Imageindex],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 350,
              height: 140,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "THE TREND ITEM",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 17,
                        color: Colors.black),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text(
                        "3.7/5 ",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        "(4o reviews) ",
                        style: TextStyle(color: Colors.black54),
                      )
                    ],
                  ),
                  Text(
                    "its a sample demo of ecommerce app",
                    textAlign: TextAlign.justify,
                    style: TextStyle(color: Colors.grey.shade500),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 140),
              child: Container(
                height: 110,
                width: 200,
                //color: Colors.amber,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Choose size",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "40",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "42",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black87),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "44",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          )),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 350,
              height: 100,
              //color: Colors.amber,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 80,
                    width: 130,
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        Consumer<Mycounterscreenprovider>(
                          builder: (context, value, child) => Text(
                              Provider.of<Mycounterscreenprovider>(context)
                                  .price
                                  .toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              )),
                        ),
                        Consumer<Mycounterscreenprovider>(
                          builder: (context, value, child) => Text(
                              Provider.of<Mycounterscreenprovider>(context)
                                  .count
                                  .toString(),
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 170,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        IconButton(
                            onPressed: () {
                              Provider.of<Mycounterscreenprovider>(context,
                                      listen: false)
                                  .incrementCounter();
                            },
                            icon: Icon(
                              Icons.add,
                              color: Colors.white,
                            )),
                        IconButton(
                            onPressed: () {
                              Provider.of<Mycounterscreenprovider>(context,
                                      listen: false)
                                  .decrementcounter();
                            },
                            icon: Icon(
                              Icons.remove,
                              color: Colors.white,
                            )),
                      ],
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return ChangeNotifierProvider(
                        create: (context) => Mycounterscreenprovider(),
                        child: screensecond());
                  },
                ));
              },
              child: Container(
                width: 100,
                height: 50,
                color: Colors.black,
                child: Center(
                    child: Text(
                  "Add to cart",
                  style: TextStyle(color: Colors.white),
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}