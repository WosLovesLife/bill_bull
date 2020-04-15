import 'package:flutter/material.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showSearch(context: context, delegate: CustomSearchHintDelegate(hintText: '基金名称/代码'));
          },
        ),
      ),
    );
  }
}

class CustomSearchHintDelegate extends SearchDelegate {
  CustomSearchHintDelegate({String hintText})
      : super(
          searchFieldLabel: hintText,
          keyboardType: TextInputType.text,
          textInputAction: TextInputAction.search,
        );

  @override
  Widget buildLeading(BuildContext context) => null;

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      return ListTile(
        onTap: () {
          query = 'suggestion';
          showResults(context);
        },
        title: Text('suggestion'),
      );
    });
  }

  @override
  Widget buildResults(BuildContext context) {
    return ListView.builder(itemBuilder: (BuildContext context, int index) {
      // TODO
      return ListTile(
        onTap: () {
          close(context, 'TODO 结果...');
        },
        title: Text('TODO 结果...'),
      );
    });
  }

  @override
  List<Widget> buildActions(BuildContext context) => [
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            showResults(context);
          },
        )
      ];
}
