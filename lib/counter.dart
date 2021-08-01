import 'package:flutter/material.dart';

class IncreaseButton extends StatelessWidget {
  void Function() onPressed;

  IncreaseButton(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(Icons.add), color: Colors.white,);
  }
}

class DecreaseButton extends StatelessWidget {
  void Function() onPressed;

  DecreaseButton(this.onPressed);

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPressed, icon: Icon(Icons.remove), color: Colors.white,);
  }
}

class Counter extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Counter();
}

class _Counter extends State<Counter>{
  int _counter = 50;

  increase() {
  setState(() {
    _counter++;
  });
  }

  decrease() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
        alignment: Alignment.center,
        // color: Colors.green,
        decoration: new BoxDecoration(
          border: Border.all(color: Colors.blue),
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DecreaseButton(decrease),
            Text(_counter.toString(), style: TextStyle(fontSize: 22, color: Colors.white),),
            IncreaseButton(increase),
          ],)
    );
  }
}

main() {
  runApp(
      MaterialApp(
          home: Scaffold(
            appBar: AppBar(title: Text('Counter')),
              body: Center(

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Tap \'-\' to decrement', style: TextStyle( fontSize: 18),),
                      Counter(),
                      Text('Tap \'+\' to increment', style: TextStyle( fontSize: 18),)
                  ],)
              )
          )
      )
  );
}
