import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  const SandBox({super.key});

  @override
  State<SandBox> createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _opacity = 1;
  double _margin = 0;
  double _width = 200;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        child: Column(children: <Widget>[
          TextButton(
              onPressed: () {
                if (_margin == 0) {
                  setState(() {
                    _margin = 50;
                  });
                } else {
                  setState(() {
                    _margin = 0;
                  });
                }
              },
              child: Container(
                alignment: Alignment.center,
                height: 50,
                color: Colors.amber,
                child: Text('animate Container'),
              ))
        ]),
      ),
    );
  }
}
