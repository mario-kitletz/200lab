import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nested_navigators/nested_nav_bloc.dart';
import 'package:nested_navigators/nested_nav_bloc_provider.dart';

import 'package:week_4/routes.dart';
import 'package:week_4/nested_nav_item_key.dart';
import 'package:week_4/pages/root_page.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  final NestedNavigatorsBloc _bloc = NestedNavigatorsBloc<NestedNavItemKey>();

  @override
  Widget build(BuildContext context) {
    return NestedNavigatorsBlocProvider(
      bloc: _bloc,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '200lab demo nested navigators',
        home: RootPage(),
        onGenerateRoute: (routeSettings) => Routes.generateRoute(routeSettings),
      ),
    );
  }
}
