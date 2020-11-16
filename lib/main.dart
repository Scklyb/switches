import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter ListTileSwitch Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),  home: ListTileSwitchExample(title: 'Flutter ListTileSwitch Demo'),
    ); }}

class ListTileSwitchExample extends StatefulWidget {
  ListTileSwitchExample({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _ListTileSwitchExampleState createState() => _ListTileSwitchExampleState();
}

class _ListTileSwitchExampleState extends State<ListTileSwitchExample> {
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListTileSwitch(
        value: _value,
        leading: Icon(Icons.access_alarms),
        onChanged: (value) {
          setState(() {
            _value = value;
          });
        },
        visualDensity: VisualDensity.comfortable,
        switchType: SwitchType.cupertino,
        switchActiveColor: Colors.indigo,
        title: Text('Default Custom Switch'),
      ),
    );
  }}