import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageCell extends StatelessWidget {
  final String name;

  const HomePageCell({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final row = Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 50,
          child: Text(
            name,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
          height: 1,
          thickness: 0.5,
          indent: 0,
          endIndent: 0,
        ),
      ],
    );

    return row;
    // return Text(name);
  }
}

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  var features = ["Contact", "Edit", "Shit"];

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Shopping Cart12'),
          ),
          SliverSafeArea(
              top: false,
              minimum: const EdgeInsets.only(left: 16),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  if (index < features.length) {
                    return HomePageCell(
                      name: features[index],
                    );
                  }
                  return null;
                }),
              )) //
        ],
      ),
    );
  }
}
