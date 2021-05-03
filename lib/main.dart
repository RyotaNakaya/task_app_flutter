import 'package:flutter/material.dart';

void main() {
  runApp(MyTodoApp());
}

class MyTodoApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoListPage(),
    );
  }
}

class TodoListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("リスト一覧"),
        ),
        body: ListView(
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text("todoA"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("todoB"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("todoC"),
              ),
            ),
            Card(
              child: ListTile(
                title: Text("todoD"),
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return TodoAddPage();
            }));
          },
          child: Icon(Icons.add),
        ));
  }
}

class TodoAddPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("リスト一覧画面に戻る"),
        ),
      ),
    );
  }
}
