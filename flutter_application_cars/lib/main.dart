import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cars/Models/carsmodel.dart';
import 'package:expandable_text/expandable_text.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          textTheme: const TextTheme(
              bodyLarge: TextStyle(
        color: Colors.black,
      ))),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => MainPage();
}

class MainPage extends State<MyHomePage> {
  int _selectedindex = 0;
  double imageSize = 60;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: size.height / 1.8,
              color: Colors.white,
              child: Stack(
                children: [
                  //background
                  Container(
                      width: double.infinity,
                      height: size.height / 2.1,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(carinfo[_selectedindex].image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(77),
                            bottomRight: Radius.circular(77),
                          ))),
                  //head icons
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(155, 235, 235, 235),
                            ),
                            child: const Icon(CupertinoIcons.left_chevron),
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(155, 235, 235, 235),
                            ),
                            child: const Icon(CupertinoIcons.heart),
                          )
                        ],
                      ),
                    ),
                  ),
                  //items
                  Positioned(
                    right: 0,
                    top: 60,
                    child: SizedBox(
                      width: 100,
                      height: double.maxFinite,
                      child: ListView.builder(
                        itemCount: carinfo.length,
                        itemBuilder: (context, index) {
                          return itemsimages(index);
                        },
                      ),
                    ),
                  ),
                  //Name and location

                  Positioned(
                    left: 50,
                    bottom: 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          carinfo[_selectedindex].name,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            const Icon(
                              CupertinoIcons.placemark_fill,
                              color: Colors.white,
                            ),
                            Text(
                              carinfo[_selectedindex].location,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color.fromARGB(0, 0, 0, 50),
                            width: 3,
                          ),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "SPEED",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                carinfo[_selectedindex].speed,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color.fromARGB(0, 0, 0, 50),
                            width: 3,
                          ),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "COLOR",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                carinfo[_selectedindex].color,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: const BorderSide(
                            color: Color.fromARGB(0, 0, 0, 50),
                            width: 3,
                          ),
                        ),
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "BRAND",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                carinfo[_selectedindex].brand,
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Description"),
                        const SizedBox(
                          height: 10,
                        ),
                        ExpandableText(
                          carinfo[_selectedindex].description,
                          expandText: "Read more",
                          collapseText: "less more",
                          textDirection: TextDirection.ltr,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text("Total Price"),
                                Text("${carinfo[_selectedindex].price}\$",
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                            Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  CupertinoIcons.right_chevron,
                                  color: Colors.white,
                                  size: 30,
                                )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }

  Widget itemsimages(int index) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              setState(() {
                _selectedindex = index;
              });
            },
            child: AnimatedContainer(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(carinfo[index].image),
                      fit: BoxFit.fill),
                  border: Border.all(
                    color: Colors.white,
                    width: 3,
                  ),
                  borderRadius: BorderRadius.circular(20)),
              width: _selectedindex == index ? imageSize + 15 : imageSize,
              height: _selectedindex == index ? imageSize + 15 : imageSize,
              duration: const Duration(milliseconds: 500),
            ),
          ),
        ),
      ],
    );
  }
}
