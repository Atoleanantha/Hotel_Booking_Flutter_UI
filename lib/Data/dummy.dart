import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({
    super.key,
    this.place = "India",
    this.hotel = "Taj Hotel",
    this.price = "420",
    this.rate = "5.0",
    required this.image,
  });
  final place;
  final hotel;
  final price;
  final rate;
  final image;

  @override
  State<Dummy> createState() => _dummyState();
}

class _dummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(children: [
        SizedBox(
          child: Stack(children: [
            FadeInImage(
              placeholder: AssetImage(widget.image.toString()),
              image: AssetImage(widget.image.toString()),
              fit: BoxFit.cover,
              height: 250,
              width: 400,
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                color: Colors.white),
                            child: BackButton(
                              key: widget.key,
                            )),
                        Row(
                          children: [
                            Container(
                              height: 45,
                              width: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(23),
                                  color: Colors.white),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.search,
                                  size: 35,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(23),
                                    color: Colors.white),
                                child: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      size: 30,
                                    ))),
                          ],
                        )
                      ],
                    ),

                  ],
                ),
              ),
            ),

            Positioned(
              top: 220,
              bottom: 40,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.centerLeft,
                // color: Colors.black54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      widget.hotel,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.place_outlined,
                          size: 15,
                          color: Colors.black38,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          widget.place,
                          style: const TextStyle(
                              fontSize: 15, color: Colors.black38),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "\$ ${widget.price}/night",
                          style: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.orange,
                              size: 20,
                            ),
                            Text(
                              "${widget.rate} (10.6k review)",
                              style: const TextStyle(color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                    Container(
                      height: 390,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15, bottom: 15),
                              child: Container(
                                height: 1,
                                decoration:
                                    BoxDecoration(color: Colors.black45),
                              ),
                            ),
                            const SizedBox(
                              height: 65,
                              child: SingleChildScrollView(
                                clipBehavior: Clip.hardEdge,
                                scrollDirection: Axis.vertical,
                                child: Text(
                                    "Legend has it that founder Jamsetji N. Tata – visionary founder of The Tata Group – opened the Taj (as it’s known to locals) after he was denied entrance to a nearby hotel with a sign outside that read, ‘No Dogs or Indians’. However, the official story – more likely than a very expensive act of revenge – is that he wanted to open a grand hotel to enhance the reputation of Bombay (now Mumbai) amongst the great cities of the world. And that he did."),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "What we offer",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(
                              height: 15,
                            ),

                            Container(
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(children: [
                                  Card(
                                    borderOnForeground: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(children: [
                                        Icon(
                                          Icons.hotel_outlined,
                                          size: 50,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("2 Bed")
                                      ]),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Card(
                                    borderOnForeground: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    elevation: 8,
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(children: const [
                                        Icon(
                                          Icons.dinner_dining,
                                          size: 50,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("Dinner")
                                      ]),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Card(
                                      borderOnForeground: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      elevation: 8,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(children: const [
                                          Icon(
                                            Icons.hot_tub_outlined,
                                            size: 50,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("Hot Tub")
                                        ]),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  InkWell(
                                    onTap: () {},
                                    child: Card(
                                      borderOnForeground: true,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      elevation: 8,
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Column(children: [
                                          Icon(
                                            Icons.credit_card_sharp,
                                            size: 50,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text("1 AC")
                                        ]),
                                      ),
                                    ),
                                  ),
                                ]),
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Container(
                                alignment: AlignmentDirectional.centerStart,
                                child: Text(
                                  "Hosted by",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                )),
                            const SizedBox(height: 5,),
                            ListTile(
                              leading: const CircleAvatar(
                                radius: 22,

                                backgroundImage:
                                    AssetImage("images/profile.png"),

                              ),
                              title: Text("Harleen Smith"),
                              subtitle: Row(
                                children: [
                                  const Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 20,
                                  ),
                                  Text(
                                    "${widget.rate} (9.6k review)",
                                    style: const TextStyle(color: Colors.black),
                                  )
                                ],
                              ),
                              trailing: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.orange),
                                  child: Icon(
                                    Icons.sms_outlined,
                                    color: Colors.white,
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
        Positioned(
          bottom: 10,
          left: 20,
          right: 20,
          child: SizedBox(
              height: 50,
              child: ElevatedButton(onPressed: () {}, child: Text("Book Now",style: TextStyle(fontSize: 20),))),
        )
      ]),
    );
  }
}
