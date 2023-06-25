import 'package:flutter/material.dart';
import 'package:flutter_internship/Data/dummy.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    super.key,
    required this.place,
    required this.hotel,
    required this.price,
    required this.rate,
    required this.image,
  });
  final place;
  final hotel;
  final price;
  final rate;
  final image;
  @override
  Widget build(BuildContext context) {
    Color color = Colors.white;
    return Card(
        margin: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        clipBehavior: Clip.hardEdge,
        elevation: 2,
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Dummy(hotel: hotel.toString(),place: place.toString(),price: price.toString(),rate: rate.toString(),image: image.toString(),)));
          },
          child: Stack(
            children: [
              FadeInImage(
                placeholder: AssetImage(image.toString()),
                image: AssetImage(image.toString()),
                fit: BoxFit.cover,
                height: 200,
                width: 150,
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.black26,
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          hotel,
                          maxLines: 2,
                          textAlign: TextAlign.start,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const SizedBox(height: 8,),
                        Row(

                          children: [
                            const Icon(Icons.place_outlined,size: 15,color: Colors.white,),
                            Text(place,style: const TextStyle(fontSize: 10,color: Colors.white),)
                          ],
                        ),
                        const SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:  [
                            Text("\$ ${price}/night",style: const TextStyle(color: Colors.white,fontSize: 10),),
                            Row(
                              children: [
                                const Icon(Icons.star,color:Colors.orange,size: 15,),
                                Text(rate,style: const TextStyle(color: Colors.white),)
                              ],
                            )

                          ],
                        ),

                      ],
                    ),
                  )),

            ],
          ),
        ));
  }
}
