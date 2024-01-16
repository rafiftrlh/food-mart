import 'package:flutter/material.dart';
import 'package:gurutamu_mart/components/detail/food_app_bar_component.dart';

class DetailMerchantScreen extends StatefulWidget {
  const DetailMerchantScreen({super.key});

  @override
  State<DetailMerchantScreen> createState() => _DetailMerchantScreenState();
}

class _DetailMerchantScreenState extends State<DetailMerchantScreen> {
  List<Map<String, dynamic>> _package = [
    {
      "title": "Special Package",
      "detail": "Complete prone, crab...",
      "price": "\$50.00"
    },
    {
      "title": "Economic Package",
      "detail": "Complete prone, crab...",
      "price": "\$35.00"
    },
    {
      "title": "Party Package",
      "detail": "Complete prone, crab...",
      "price": "\$280.00"
    },
    {
      "title": "Deluxe Package",
      "detail": "Complete prone, crab...",
      "price": "\$300.00"
    },
    {
      "title": "Super Luxury Package",
      "detail": "Complete prone, crab...",
      "price": "\$500.00"
    },
  ];

  int _quantity = 0;

  void _increment() {
    setState(() {
      _quantity++;
    });
  }

  void _decrement() {
    setState(() {
      if (_quantity > 0) {
        _quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          FoodAppBar(),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(18),
                child: Container(
                  height: 120,
                  width: 120,
                  padding: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://picsum.photos/seed/picsum/1000/1000",
                          scale: 4),
                    ),
                  ),
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Seafood Specialist #001",
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Mr. Liem",
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "Seafood Japanes",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.amber,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "4.8 \u2022 225 sold | 3.1 mil \u2022 12 min",
                          overflow: TextOverflow.clip,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.brown,
                    ),
                    child: Text(
                      "Package",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade300,
                    ),
                    child: Text(
                      "Food",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade300,
                    ),
                    child: Text(
                      "Drinks",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.grey.shade300,
                    ),
                    child: Text(
                      "Special",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.sizeOf(context).height / 1.5,
            padding: EdgeInsets.all(20),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: _package.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  Map<String, dynamic> package = _package[index];
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 100,
                              width: 100,
                              padding: EdgeInsets.only(right: 20),
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5)),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://picsum.photos/seed/picsum/200/200",
                                          scale: 1))),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  package["title"],
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  package["detail"],
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  package["price"],
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: IconButton(
                                onPressed: _decrement,
                                icon: Icon(
                                  Icons.remove,
                                  size: 15,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '$_quantity',
                              style: TextStyle(fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: IconButton(
                                onPressed: _increment,
                                icon: Icon(
                                  Icons.add,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
