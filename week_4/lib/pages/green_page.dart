import 'package:flutter/material.dart';
import 'package:nested_navigators/nested_nav_bloc_provider.dart';
import 'package:week_4/argument_key.dart';
import 'package:week_4/nested_nav_item_key.dart';
import 'package:week_4/routes.dart';

class GreenPage extends StatelessWidget {
  final int value;

  GreenPage({this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Green",
        ),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.green,
      body: Container(
        padding: EdgeInsets.all(16),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              value.toString(),
              style: TextStyle(fontSize: 44, color: Colors.white),
            ),
            _divider(),
            _item(
              text: "open new page",
              onPressed: () {
                Navigator.of(context).pushNamed(Routes.green, arguments: {
                  ArgumentKeys.value: value + 1,
                });
              },
            ),
            _divider(),
            _item(
              text: "select red tab",
              onPressed: () {
                final bloc = NestedNavigatorsBlocProvider.of(context);
                bloc.select(NestedNavItemKey.red);
              },
            ),
            _divider(),
            _item(
              text: "select blue tab",
              onPressed: () {
                NestedNavigatorsBlocProvider.of(context)
                    .select(NestedNavItemKey.blue);
              },
            ),
          ],
        ),
      ),
    );
  }

  _item({String text, Function() onPressed}) => TextButton(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16, color: Colors.white),
        ),
        onPressed: onPressed,
      );

  _divider() => Flexible(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          color: Colors.white,
          height: 2,
        ),
      );
}
