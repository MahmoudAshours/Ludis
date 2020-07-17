import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:ludis/Utils/ball.dart';

class CradleScreen extends StatefulWidget {
  @override
  _CradleScreenState createState() => _CradleScreenState();
}

class _CradleScreenState extends State<CradleScreen> {
  List<GlobalKey> _keys = List<GlobalKey>();
  List<Offset> _positions = List<Offset>();
  @override
  void initState() {
    for (int i = 0; i < 5; i++) _keys.add(GlobalKey());
    SchedulerBinding.instance.addPostFrameCallback(
      (_) {
        _getPosition();
        setState(() {
          
        });
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_positions);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (var i = 0; i < 5; i++)
              Ball(
                circleOffset: _positions[i],
                key: _keys[i],
              )
          ],
        ),
      ),
    );
  }

  void _getPosition() {
    for (var i = 0; i < _keys.length; i++) {
      RenderBox box = _keys[i].currentContext.findRenderObject();
      Offset position = box.localToGlobal(Offset.zero);
      _positions.add(position);
      setState(() {
        
      });
    }
  }
}
