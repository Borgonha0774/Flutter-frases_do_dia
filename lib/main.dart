import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Frases do dia',
      home: Container(
        //color: Colors.white,
        padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
        margin: const EdgeInsets.all(0),
        decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.white,
          ),
        ),
        child: Column(
          children: const <Widget>[
            Text(
              't1',
            ),
            Padding(
              padding: EdgeInsets.all(
                30,
              ),
              child: Text('t2'),
            ),
            Text(
              't3',
            ),
            /* Text(
              'Resta rted appl ication in 1.328ms.: dddddffd dfge ll[p lmbr]ebl,b] app_time_stats: avg=3761.82ms min=3761.82ms max=3761.82ms count=1',
              textAlign: TextAlign.justify,
            ) ,*/
          ],
        ),
      ),
    ),
  );
}
