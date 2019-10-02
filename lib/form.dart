import 'package:flutter/material.dart';

class FormClass extends StatefulWidget {
  @override
  _FormClassState createState() => _FormClassState();
}

class _FormClassState extends State<FormClass> {
  final GlobalKey<FormState> _formkey = new GlobalKey<FormState>();

  @override
  Widget build(BuildContext build) {
    return new SafeArea(
      top: false,
      bottom: false,
      child: new Form(
        key: _formkey,
        autovalidate: true,
        child: new ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          children: <Widget>[
            new TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.person),
                  hintText: 'Enter Your First name',
                  labelText: 'Name'),
            ),
            new TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.calendar_today),
                  hintText: 'Enter Your Date of Birth',
                  labelText: 'Date of Birth'),
              keyboardType: TextInputType.datetime,
            ),
            new TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.phone),
                  hintText: 'Énter your Phone number',
                  labelText: 'Phone'),
              keyboardType: TextInputType.phone,
            ),
            new TextFormField(
              decoration: const InputDecoration(
                  icon: const Icon(Icons.email),
                  hintText: 'Enter your Email',
                  labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            new Container(
              padding: const EdgeInsets.only(left: 40.0, top: 20.0),
              child: new RaisedButton(
                child: const Text('Submit'),
                onPressed: null,
              ),
            )
          ],
        ),
      ),
    );
  }
}
