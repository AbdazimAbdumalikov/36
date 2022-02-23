import 'package:flutter/material.dart';
import 'package:layout/function/utils.dart';


class ListGridExample extends StatefulWidget {
  ListGridExample({required Key key}) : super(key: key);

  @override
  _ListGridExampleState createState() => _ListGridExampleState();
}

class _ListGridExampleState extends State<ListGridExample> {
  List<Widget> data = List.generate(100, (index) {
    return SimpleCard(index: index.toString());
  });
}

ScrollController controller = ScrollController(initialScrollOffset: 0);

@override
  void initState() {
  super.initState();
  controller.addListener(() {
    print('MAX SCROLL EXTENT: ${controller?.position?.maxScrollExtent}');
    print(controller.offset.floor());
  });
}

@override
void dispose() {
  super.dispose();
  controller.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('abdazim'),
      ),
      body: Expanded(
        child: GridView.count(
            crossAxisCount: 1,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 2,
          physics: ClampingScrollPhysics(),
          children: <Widget>[
            ...data.map((item) => item).toList(),
          ],
        ),
      ),
    );
  }
