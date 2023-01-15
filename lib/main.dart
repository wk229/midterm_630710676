import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Calendar(),
    );
  }
}

//ignore: prefer_const_constructors
class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  var _select = 'January';
  var calenderList = <Widget>[];
  var January = Text('1');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    //color: Colors.white,
                    //shape: BoxShape.circle,
                    ),
                child: Icon(
                  Icons.add_circle,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 10),
              Text('CALENDER 2023'),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Column(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    _select = 'January';
                                  });
                                  print(_select);
                                },
                                child: Text('January'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    _select = 'February';
                                  });
                                  print(_select);
                                },
                                child: Text('February'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {
                                  setState(() {
                                    _select = 'March';
                                  });
                                },
                                child: Text('March'))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('April'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('May'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('June'))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('July'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('August'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('September'))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('October'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('November'))),
                        Expanded(
                            flex: 1,
                            child: OutlinedButton(
                                onPressed: () {}, child: Text('December'))),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [Text(
                        'มกราคม',
                      style: TextStyle(
                      fontSize: 25,
                    ),)],
                  ),
                ),
              ),
              Container(
               // color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        _select,
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),

                ),

              ),

            ],
          ),
        ));
  }
}
