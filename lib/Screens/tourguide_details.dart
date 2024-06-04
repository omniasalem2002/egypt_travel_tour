import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TourGuideDetail extends StatefulWidget {
  const TourGuideDetail({super.key});

  @override
  State<TourGuideDetail> createState() => _TourGuideDetailState();
}

class _TourGuideDetailState extends State<TourGuideDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tour Guide Details'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: (MediaQuery.of(context).size.width),
                height: (MediaQuery.of(context).size.height) / 8,
                decoration:
                    const BoxDecoration(color: Color.fromARGB(255, 1, 61, 58)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
                  child: Text(
                    "Guide Name",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            left: (MediaQuery.of(context).size.width) / 1.5,
            top: 40,
            child: Card(
              elevation: 10,
              child: Image.asset(
                "images/guide.jpg",
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 10,
            right: 10,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    "Experience",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
                const Text(
                  "Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia Lorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia\nLorem ipsum dolor sit amet consectetur adipisicing elit. Maxime mollitia,Lorem ipsum dolor si",
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Rating",
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                ),
                RatingBar.builder(
                  itemSize: 20,
                  initialRating: 4,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                  itemBuilder: (context, _) {
                    return const Icon(
                      Icons.star,
                      color: Color.fromARGB(255, 255, 17, 1),
                    );
                  },
                  onRatingUpdate: (rating) {},
                ),
                const SizedBox(
                  height: 40,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 1, 61, 58),
                    // maximumSize: const Size(125, 40),
                  ),
                  child: const Text(
                    "Book Now",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
