import 'package:flutter/material.dart';

class SetStatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SetState'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Atualizando com SetState'),
              SizedBox(
                height: 30,
              ),
              SetStateContent()
            ],
          ),
        ),
      ),
    );
  }
}

class SetStateContent extends StatefulWidget {
  @override
  _SetStateContentState createState() => _SetStateContentState();
}

class _SetStateContentState extends State<SetStateContent> {
  String name = 'Lucas';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(name),
        RaisedButton(
          onPressed: () {
            setState(() {
              name = 'Lucas Bercê';
            });
          },
          child: Text('Atualizar nome'),
        ),
      ],
    );
  }
}
