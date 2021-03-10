import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:week_2/app_state_notifier.dart';
import 'package:week_2/app_theme.dart';

void main() {
  // runApp(ThemeDemo());
  runApp(
    ChangeNotifierProvider<AppStateNotifier>(
      create: (_) => AppStateNotifier(),
      child: HomeApp(),
    ),
  );
}

class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateNotifier>(
      builder: (context, appState, child) {
        return MaterialApp(
          title: '200lab demo swith themes',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: appState.isDarkModeOn ? ThemeMode.dark : ThemeMode.light,
          home: ThemeDemo(),
        );
      },
    );
  }
}

class ThemeDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ThemeDemoState();
}

class ThemeDemoState extends State<ThemeDemo> {
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('demo swith themes'),
        actions: <Widget>[
          Switch(
            value: Provider.of<AppStateNotifier>(context).isDarkModeOn,
            onChanged: (boolVal) {
              Provider.of<AppStateNotifier>(context, listen: false)
                  .updateTheme(boolVal);
            },
          )
        ],
      ),
      body: Container(
        child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, pos) {
            return Card(
              elevation: 5,
              child: ListTile(
                title: Text(
                  'Title $pos',
                  style: Theme.of(context).textTheme.headline1,
                ),
                subtitle: Text(
                  'Subtitle $pos',
                  style: Theme.of(context).textTheme.headline2,
                ),
                leading: Icon(
                  Icons.alarm,
                  color: Theme.of(context).iconTheme.color,
                ),
                trailing: Icon(
                  Icons.chevron_right,
                  color: Theme.of(context).iconTheme.color,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
