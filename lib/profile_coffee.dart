import 'package:flutter/material.dart';

class ProfileCoffee extends StatefulWidget {
  final String name, description, photo;
  final double rate, price;
  const ProfileCoffee({
    super.key,
    required this.name,
    required this.photo,
    required this.description,
    required this.rate,
    required this.price,
  });

  @override
  State<ProfileCoffee> createState() => _ProfileCoffeeState();
}

class _ProfileCoffeeState extends State<ProfileCoffee> {
  bool isLike = false;
  int num = 1;
  List checkTypeCoffee = [true, false, false];
  List checkSizeCoffee = [true, false, false];

  void like() {
    setState(() {
      isLike = !isLike;
    });
  }

  void typeCoffee(int n) {
    setState(() {
      for (int i = 0; i < checkTypeCoffee.length; ++i) {
        checkTypeCoffee[i] = false;
      }

      checkTypeCoffee[n] = true;
    });
  }

  void sizeCoffee(int n) {
    setState(() {
      for (int i = 0; i < checkSizeCoffee.length; ++i) {
        checkSizeCoffee[i] = false;
      }

      checkSizeCoffee[n] = true;
    });
  }

  void removeCount() {
    setState(() {
      if (num > 1) {
        num -= 1;
      }
    });
  }

  void addCount() {
    setState(() {
      if (num < 9) {
        num += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 330,
                  height: 360,
                  margin: EdgeInsets.symmetric(vertical: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                      image: AssetImage("assets/coffee/${widget.photo}.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 20.0,
                          horizontal: 15,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                padding: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Icon(
                                  Icons.arrow_back_ios_new,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () => like(),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Icon(
                                  Icons.favorite,
                                  color: isLike ? Colors.red : Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            width: 330,
                            height: 120,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(235, 90, 70, 70),
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      widget.description,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      spacing: 5,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.deepOrangeAccent,
                                          size: 18,
                                        ),
                                        Text(
                                          "${widget.rate}",
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          "(6,098)",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.white70,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  spacing: 15,
                                  children: [
                                    Row(
                                      spacing: 30,
                                      children: [
                                        Column(
                                          spacing: 5,
                                          children: [
                                            Icon(
                                              Icons.coffee_sharp,
                                              color: Colors.white,
                                              size: 26,
                                            ),
                                            Text(
                                              "Coffee",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Column(
                                          spacing: 5,
                                          children: [
                                            Icon(
                                              Icons.water_drop_sharp,
                                              color: Colors.white,
                                              size: 26,
                                            ),
                                            Text(
                                              "Chocolate",
                                              style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white70,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Medium Roasted",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 15.0,
                    horizontal: 15,
                  ),
                  child: Text(
                    "Choice of Chocolate",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Row(
                      spacing: 15,
                      children: [
                        OutlinedButton(
                          onPressed: () => typeCoffee(0),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            backgroundColor:
                                checkTypeCoffee[0]
                                    ? Colors.brown.shade400
                                    : Colors.transparent,
                            side: BorderSide(color: Colors.brown.shade400),
                          ),
                          child: Text(
                            "White chocolate",
                            style: TextStyle(
                              color:
                                  checkTypeCoffee[0]
                                      ? Colors.white
                                      : Colors.brown.shade400,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () => typeCoffee(1),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            backgroundColor:
                                checkTypeCoffee[1]
                                    ? Colors.brown.shade400
                                    : Colors.transparent,
                            side: BorderSide(color: Colors.brown.shade400),
                          ),
                          child: Text(
                            "Milk chocolate",
                            style: TextStyle(
                              color:
                                  checkTypeCoffee[1]
                                      ? Colors.white
                                      : Colors.brown.shade400,
                            ),
                          ),
                        ),
                        OutlinedButton(
                          onPressed: () => typeCoffee(2),
                          style: OutlinedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 15),
                            backgroundColor:
                                checkTypeCoffee[2]
                                    ? Colors.brown.shade400
                                    : Colors.transparent,
                            side: BorderSide(color: Colors.brown.shade400),
                          ),
                          child: Text(
                            "Drak chocolate",
                            style: TextStyle(
                              color:
                                  checkTypeCoffee[2]
                                      ? Colors.white
                                      : Colors.brown.shade400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Size",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          spacing: 10,
                          children: [
                            OutlinedButton(
                              onPressed: () => sizeCoffee(0),
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.all(0),
                                minimumSize: Size(40, 40),
                                shape: CircleBorder(),
                                elevation: 0,
                                backgroundColor:
                                    checkSizeCoffee[0]
                                        ? Colors.brown.shade400
                                        : Colors.grey.shade400,
                                side: BorderSide(color: Colors.transparent),
                              ),
                              child: Text(
                                "S",
                                style: TextStyle(
                                  color:
                                      checkSizeCoffee[0]
                                          ? Colors.white
                                          : Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () => sizeCoffee(1),
                              style: OutlinedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(0),
                                minimumSize: Size(40, 40),
                                elevation: 0,
                                backgroundColor:
                                    checkSizeCoffee[1]
                                        ? Colors.brown.shade400
                                        : Colors.grey.shade400,
                                side: BorderSide(color: Colors.transparent),
                              ),
                              child: Text(
                                "M",
                                style: TextStyle(
                                  color:
                                      checkSizeCoffee[1]
                                          ? Colors.white
                                          : Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () => sizeCoffee(2),
                              style: OutlinedButton.styleFrom(
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(0),
                                minimumSize: Size(40, 40),
                                elevation: 0,
                                backgroundColor:
                                    checkSizeCoffee[2]
                                        ? Colors.brown.shade400
                                        : Colors.grey.shade400,
                                side: BorderSide(color: Colors.transparent),
                              ),
                              child: Text(
                                "L",
                                style: TextStyle(
                                  color:
                                      checkSizeCoffee[2]
                                          ? Colors.white
                                          : Colors.black54,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Quantity",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          spacing: 20,
                          children: [
                            OutlinedButton(
                              onPressed: () => removeCount(),
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.all(0),
                                minimumSize: Size(40, 40),
                                shape: CircleBorder(),
                                backgroundColor: Colors.brown.shade400,
                              ),
                              child: Icon(Icons.remove, color: Colors.white),
                            ),
                            Text("$num"),
                            OutlinedButton(
                              onPressed: () => addCount(),
                              style: OutlinedButton.styleFrom(
                                padding: EdgeInsets.all(0),
                                minimumSize: Size(40, 40),
                                shape: CircleBorder(),
                                backgroundColor: Colors.brown.shade400,
                              ),
                              child: Icon(Icons.add, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 120,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Text("Price", style: TextStyle(fontSize: 16),),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "\$ ${(widget.price * num).toStringAsFixed(2)}",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown.shade400,
                      elevation: 0,
                      padding: EdgeInsets.symmetric(
                        horizontal: 60,
                        vertical: 15,
                      ),
                    ),
                    child: Text(
                      "Buy Now",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
