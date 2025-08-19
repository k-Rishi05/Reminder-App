import 'person.dart';

abstract class PersonRepository {
  Future<void> addPerson(Person person);
  Future<List<Person>> getAllPersons();
  Future<Person?> getPersonByID(String id);
  Future<void> updatePerson(Person person);
  Future<void> deletePerson(String id);
}
