import './person.dart';

class Team {
  List<Person>? members = [];

  void add(Person p) {
    members?.add(p);
  }
}
