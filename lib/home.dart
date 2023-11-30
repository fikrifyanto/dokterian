import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> nearDoctors = List.generate(
        5,
        (index) => Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black12, // Warna border
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(10)),
            child: const Row(
              children: [
                Image(
                  image: AssetImage('assets/images/doctor.jpg'),
                  width: 50,
                  height: 50,
                ),
                SizedBox(width: 10.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dr. Imran Syahrir',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    Text('General Doctor',
                        style: TextStyle(color: Colors.black))
                  ],
                )
              ],
            )));

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hello'),
                      Text(
                        'Hi, James',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      )
                    ],
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/images/profile.svg',
                      width: 60,
                      height: 60,
                    ),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.cyan,
                    borderRadius: BorderRadius.circular(10)),
                child: const Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(children: [
                        Image(
                          image: AssetImage('assets/images/doctor.jpg'),
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(width: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Dr. Imran Syahrir',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('General Doctor',
                                style: TextStyle(color: Colors.white))
                          ],
                        )
                      ]),
                      TextButton(
                        onPressed: null,
                        child: Text(
                          'Lihat',
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )
                ]),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.cyan, // Warna border
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border:
                        InputBorder.none, // Hilangkan border bawaan TextField
                    hintText: 'Cari Dokter',
                  ),
                ),
              ),
              Flex(
                  direction: Axis.horizontal, // Atur arah flexbox ke horizontal
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text('Covid 19'))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text('Covid 19'))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text('Covid 19'))
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(top: 20),
                            padding: const EdgeInsets.all(20),
                            decoration: const BoxDecoration(
                              color: Colors.black12,
                              shape: BoxShape.circle,
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: const Text('Covid 19'))
                        ],
                      ),
                    ),
                  ]),
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
                Container(
                    padding: EdgeInsets.only(top: 20),
                    child: const Text(
                      'Dokter di sekitar',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    )),
                Column(
                  children: nearDoctors,
                )
              ])
            ],
          ),
        ),
      )),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}
