import 'package:flutter/material.dart';
import 'package:mypcot_assignment/constants/const.dart';

class FirstStackContainer extends StatelessWidget {
  const FirstStackContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 260,
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      const Positioned(
                        left: 20,
                        top: 30,
                        child: CircleAvatar(
                          radius: 60,
                          backgroundColor: Color.fromARGB(255, 253, 247, 249),
                        ),
                      ),
                      Positioned(
                        left: 30,
                        top: 170,
                        child: Container(
                          height: 35,
                          width: 100,
                          decoration: BoxDecoration(
                            color: const Color(0xffCC5E33),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              'Orders',
                              style: normalText,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 200,
                        top: 100,
                        child: Container(
                          height: 70,
                          width: 115,
                          decoration: BoxDecoration(
                              color: kWhiteColor,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                text: '02 ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25,
                                    color: kBlackColor),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'pending Orders from',
                                    style: TextStyle(
                                        color: selectedColor,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 220,
                        top: 153,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/download (5).jpeg'),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 250,
                        top: 153,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/download (4).jpeg'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                    left: 20,
                    top: 30,
                    child: Image.asset(
                        'assets/images/orders-illustration-image.png')),
              ],
            ),
          ),
        ),
        Positioned(
          left: 170,
          child: Stack(
            children: [
              Container(
                height: 80,
                width: 150,
                decoration: BoxDecoration(
                    color: const Color(0xffCC5E33),
                    borderRadius: BorderRadius.circular(15)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      text: 'You have ',
                      style: normalText,
                      children: <TextSpan>[
                        TextSpan(
                            text: '3',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                        TextSpan(
                            text: ' active orders from', style: normalText),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
          left: 191,
          top: 50,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (1).jpeg'),
            ),
          ),
        ),
        const Positioned(
          left: 224,
          top: 50,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (2).jpeg'),
            ),
          ),
        ),
        const Positioned(
          left: 254,
          top: 50,
          child: CircleAvatar(
            radius: 23,
            backgroundColor: Colors.red,
            child: CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/download (3).jpeg'),
            ),
          ),
        ),
      ],
    );
  }
}
