import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/themes/themes.dart';

class DetailMovie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CustomHeader(),
            Container(
              color: Custom.mainColor,
              child: Column(children: <Widget>[
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'OVERVIEW',
                  style: TextStyle(color: Custom.titleColor, fontSize: 12),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  'An ex-soldier, a teen and a cop collide in New Orleans as they hunt for the source behind a dangerous new pill that grants users temporary superpowers.',
                  style: TextStyle(fontSize: 11),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],),)
          ],
        ),
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        HeaderDetailMovie(
          title: 'Project Power',
        ),
        Positioned(
            bottom: 0,
            child: BottomContent()),
        Positioned(
          child: CustomPlayIcon(),
          bottom: MediaQuery.of(context).size.height * 0.01,
          right: 15.0,
        ),
      ],
    );
  }
}

class BottomContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Theme.of(context).primaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: RateBar(),
          ),
        ],
      ),
    );
  }
}

class RateBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text('7.2'),
        RatingBar(
            initialRating: 5,
            direction: Axis.horizontal,
            minRating: 1,
            allowHalfRating: true,
            itemCount: 5,
            itemSize: 10,
            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
            onRatingUpdate: (val) {}),
      ],
    );
  }
}

class CustomPlayIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).accentColor,
      ),
      child: GestureDetector(
        onTap: () {
          print('tapped');
        },
        child: Icon(
          Icons.play_arrow,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}

class HeaderDetailMovie extends StatelessWidget {
  final String title;

  HeaderDetailMovie({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.height * 0.03),
      child: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.25,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.tmdb.org/t/p/original/qVygtf2vU15L2yKS4Ke44U4oMdD.jpg'))),
          ),
          Positioned.fill(
              child: Align(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Project Power',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
            alignment: Alignment.bottomCenter,
          )),
          Positioned(
            top: 58,
            left: 10,
            child: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                context.navigator.pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
