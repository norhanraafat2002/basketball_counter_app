import 'package:flutter/material.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  // PointsCounter({super.key});
  int teamApoints = 0;

  int teamBpoints = 0;

  void addOnePoint() {
    print('add one point');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Points Counter'),
        ),
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
            height: 32,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Column(
              children: [
                Text(
                  'Team A',
                  style: TextStyle(fontSize: 36),
                ),
                Text(
                  '$teamApoints',
                  style: TextStyle(fontSize: 150),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    setState(() {
                      teamApoints++;
                    });
                    print('teamApoints');
                  },
                  child: Text(
                    'Add 1 Point',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    setState(() {
                      teamApoints += 2;
                    });
                  },
                  child: Text(
                    'Add 2 Point',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    setState(() {
                      teamApoints += 3;
                    });
                  },
                  child: Text(
                    'Add 3 Point',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 350,
              child: VerticalDivider(
                thickness: 1,
                color: Color.fromARGB(255, 202, 202, 202),
              ),
            ),
            Column(
              children: [
                Text(
                  'Team B',
                  style: TextStyle(fontSize: 36),
                ),
                Text(
                  '$teamBpoints',
                  style: TextStyle(fontSize: 150),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    setState(() {
                      teamBpoints += 1;
                    });
                  },
                  child: Text(
                    'Add 1 Point',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    setState(() {
                      teamBpoints += 2;
                    });
                  },
                  child: Text(
                    'Add 2 Point',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.redAccent),
                  onPressed: () {
                    setState(() {
                      teamBpoints += 3;
                    });
                  },
                  child: Text(
                    'Add 3 Point',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                ),
              ],
            ),
          ]),
          Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.redAccent),
            onPressed: () {
              setState(() {
                teamApoints = 0;
                teamBpoints = 0;
              });
            },
            child: Text(
              'Reset',
              style: TextStyle(color: Colors.black, fontSize: 18),
            ),
          ),
          Spacer(
            flex: 2,
          ),
        ]),
      ),
    );
  }
}
