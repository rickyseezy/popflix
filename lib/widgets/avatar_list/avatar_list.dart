import 'package:flutter/material.dart';
import 'package:movie_app/data/model/person/person.dart';

class AvatarList extends StatelessWidget {
  final List<Person> persons;

  AvatarList(this.persons);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.13,
      child: ListView.builder(
        itemBuilder: (builder, index) {
          return Padding(
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
                SizedBox(height: 10,),
                Text(persons[index].name, style: TextStyle(fontSize: 10),)
              ],
            ),
          );
        },
        itemCount: persons.length,
        scrollDirection: Axis.horizontal,
      ),
    );;
  }
}
