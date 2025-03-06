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

  void like() {
    setState(() {
      isLike = !isLike;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                          height: 110,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(235, 109, 73, 73),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [

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
          
        ],
      ),
    );
  }
}
