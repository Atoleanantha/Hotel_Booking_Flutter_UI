import 'package:flutter/material.dart';
import 'package:flutter_internship/cardHotel.dart';
import 'package:flutter_internship/hotDeal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyHomePage();
  }
}

class _MyHomePage extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return (
        Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Where you\nwanna go?",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 40,
                        ))
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:[
                        Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                children: [
                                  Icon(Icons.business,size: 50,),
                                  SizedBox(height: 5,),
                                  Text("Hotel")
                                ]),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                children: const[
                                  Icon(Icons.flight_outlined,size: 50,),
                                  SizedBox(height: 5,),
                                  Text("Flight")
                                ]),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                children:const [
                                  Icon(Icons.place_outlined,size: 50,),
                                  SizedBox(height: 5,),
                                  Text("Place")
                                ]),
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Card(
                          borderOnForeground: true,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                          elevation: 2,
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                                children: [
                                  Icon(Icons.fastfood_outlined,size: 50,),
                                  SizedBox(height: 5,),
                                  Text("Food")
                                ]),
                          ),
                        ),
                      ]
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Popular Hotels",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "See all",
                          style: TextStyle(color: Colors.orange),
                        ))
                  ],
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children:const [
                        CategoryGridItem(place: "India",hotel: "Hotel Taj",price: "499",rate: "5.0",image: "images/img_3.png",),
                        CategoryGridItem(place: "Greece",hotel: "Santorini",price: "488",rate: "4.9",image: "images/img_1.png"),
                        CategoryGridItem(place: "Spain",hotel: "Hotel Royal",price: "280",rate: '4.8',image: "images/img_2.png"),
                        CategoryGridItem(place:"Thailand",hotel: "Hotel Roy",price: "300",rate: "4.0",image: "images/img.png"),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                    alignment:AlignmentDirectional.centerStart,
                  child: Text("Hot Deals",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                const SizedBox(height: 15,),
                const HotDeal(place: "India", hotel: "Hotel Taj", price: "460", rate: "5.0",image: "images/img_3.png")
              ],

            ),
          ),
        ),
      ),
    ));
  }
}
