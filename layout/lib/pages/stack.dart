import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:layout/function/utils.dart';

final _data = fakeData(100);

class StackLayout extends StatefulWidget {
  StackLayout({Key? key}) : super(key: key);

  @override
  _StackLayoutState createState() => _StackLayoutState();
}

class _StackLayoutState extends State<StackLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double _width = constraints.constrainWidth();
                  return _width > 600
                      ? GridView.builder(
                    scrollDirection: Axis.horizontal,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: _width > 600 ? 3 : 2,
                        childAspectRatio: _width > 600 ? 2 : 1,
                      ),
                    itemCount: _data.length,
                    itemBuilder: (context, index) => _data[index],
                  )
                      : ListView.builder(
                      itemCount: _data.length,
                      itemBuilder: (context, index) => _data[index],
                  );
                },
              )
          )
        ],
      ),
    );
  }
}
