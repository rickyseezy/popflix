import 'package:flutter/material.dart';
import 'package:movie_app/data/model/movieCredit/castItem/cast_item.dart';
import 'package:movie_app/data/model/person/person.dart';

class AvatarList extends StatelessWidget {
  final List<Person> persons;

  AvatarList(this.persons);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView.builder(
        itemBuilder: (builder, index) {
          return Container(
            width: 75,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://image.tmdb.org/t/p/original/${persons[index].profile_path}'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    persons[index].name,
                    style: TextStyle(fontSize: 10),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        },
        itemCount: persons.length,
        scrollDirection: Axis.horizontal,
      ),
    );
    ;
  }
}

class AvatarRoleList extends StatelessWidget {
  final List<CastItem> cast;

  AvatarRoleList(this.cast);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        itemBuilder: (builder, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 70,
              child: Column(
                children: <Widget>[
                  cast[index].profile_path != null
                      ? Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      'https://image.tmdb.org/t/p/original/${cast[index].profile_path}'))),
                        )
                      : Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://www.recia.fr/wp-content/uploads/2018/10/default-avatar-300x300.png')),
                            shape: BoxShape.circle,
                          )),
                  SizedBox(
                    height: 10,
                  ),
                  Flexible(
                      child: Text(
                    cast[index].name,
                    style: TextStyle(fontSize: 10),
                        textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
          );
        },
        itemCount: cast.length,
        scrollDirection: Axis.horizontal,
      ),
    );
    ;
  }
}
