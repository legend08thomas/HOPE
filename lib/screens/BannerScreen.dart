import 'dart:ui';

import 'package:donateplasma/animation/FadeAnimation.dart';
import 'package:donateplasma/constants/text_style_constants.dart';
import 'package:donateplasma/screens/login.dart';

import 'package:donateplasma/screens/welcome.dart';
import 'package:donateplasma/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:donateplasma/constants/color_constants.dart';

class BannerScreen extends StatelessWidget {
  static const routeName = '/banner';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800.0,
      //color: kPrimaryColor,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      ),

      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 55, 0, 0),
        child: Column(
          children: <Widget>[
            FadeAnimation(
              1.5,
              Container(
                child: Image.asset('assets/images/logo.png'),
              ),
            ),
            FadeAnimation(
              1.6,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'save world',
                    style: kBannerTitleStyle,
                  ),
                ],
              ),
            ),
            FadeAnimation(
              1.6,
              Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'donate ',
                      style: kBannerTitleStyle,
                    ),
                    Text(
                      'Plasma',
                      textAlign: TextAlign.right,
                      style: kBannerPlasmaTitleStyle,
                    ),
                  ]),
            ),
            SizedBox(
              height: 20.0,
            ),
            FadeAnimation(
              1.7,
              Text(
                'Have you fully recovered from COVID-19, you may be able to help patients currently fighting the COVID-19 by donating your plasma. Let\'s fight this Covid-19 together to',
                //'Recently recovered from Covid-19 ? Help others survive by donating your plasma. Let\'s fight this Covid-19 together to',
                style: kBannerSubTitleStyle,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            FadeAnimation(
              1.8,
              Text(
                'SAVE LIVES',
                style: kBannerSub02TitleStyle,
              ),
            ),
            SizedBox(
              height: 45.0,
            ),
            FadeAnimation(
              1.8,
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    ButtonTheme(
                      minWidth: 100.0,
                      height: 40.0,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushReplacementNamed(Login.routeName);
                        },
                        color: Colors.amberAccent,
                        child: Text(
                          'I\'m in !!',
                          style: TextStyle(
                              color: Theme.of(context).accentColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              fontFamily: 'Poppins'),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(7.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
