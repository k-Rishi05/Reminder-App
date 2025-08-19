import '../domain/person.dart';
import '../domain/person_repository.dart';

class InMemoryPersonRepository implements PersonRepository {
  Map<String, Person> persons;

  InMemoryPersonRepository({required this.persons});

  @override
  Future<void> addPerson(Person person) async {
    persons[person.id] = person;
  }

  @override
  Future<List<Person>> getAllPersons() async {
    // List<Person> allPersons =[];
    // for (var tempPerson in persons.values){
    //   allPersons.add(tempPerson);
    // }
    return persons.values.toList();
  }

  @override
  Future<Person?> getPersonByID(String id) async {
    return persons[id];
  }

  @override
  Future<void> updatePerson(Person person) async {
    persons[person.id] = person;
  }

  @override
  Future<void> deletePerson(String id) async {
    persons.remove(id);
  }
}
