import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20), child: ScheduleDoctor()),
      )),
    );
  }
}

class ScheduleDoctor extends StatelessWidget {
  const ScheduleDoctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> scheduleDoctors = List.generate(
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                ),
                Text('10:00')
              ],
            )));

    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
          padding: const EdgeInsets.only(top: 20),
          child: const Text(
            'Jadwal Hari Ini',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )),
      Column(
        children: scheduleDoctors,
      )
    ]);
  }
}
