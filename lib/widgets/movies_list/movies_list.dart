import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:movie_app/data/model/models.dart';
import 'package:movie_app/router/router.gr.dart';

class MovieList extends StatelessWidget {
  final List<VideoItem> movies;
  final int searchIndex;

  MovieList({@required this.movies, @required this.searchIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
          key: PageStorageKey('page-$searchIndex'),
          itemCount: movies.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext ctx, index) {
            return GestureDetector(
              onTap: (){
                context.navigator.push(Routes.detailMovieScreen, arguments: DetailMovieScreenArguments(id: movies[index].id));
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 5.0, right: 5.0),
                child: Container(
                  width: 120,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        width: 110,
                        height: 170,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://image.tmdb.org/t/p/w200/${movies[index].poster_path}'))),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Flexible(
                        child: Text(
                          movies[index].title,
                          style: TextStyle(fontSize: 10),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            movies[index].vote_average.toString(),
                            style: TextStyle(fontSize: 10),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                          SizedBox(width: 5,),
                          RatingBar(
                            initialRating: movies[index].vote_average / 2,
                            direction: Axis.horizontal,
                            minRating: 1,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 10,
                            itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
                            onRatingUpdate: (val) {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
