import 'package:flutter/material.dart';
import 'package:flutter_hat/components/rounded_button.dart';
import 'package:flutter_hat/components/text_field_container.dart';

class Body extends StatefulWidget {
  Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      'You have [xxx] days of holidays available',
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Start date:',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextFieldContainer(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'hintText',
                        border: InputBorder.none,
                      ),
                    ),
                    widthRatio: 0.66,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'End date:',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  TextFieldContainer(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'hintText',
                        border: InputBorder.none,
                      ),
                    ),
                    widthRatio: 0.66,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 34.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundedButton(
                      text: 'BOOK',
                      press: () {},
                      widthRatio: 0.6,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
