// This is a class to create person objects

class Person {
  // Properties
  final String id;
  final String name;
  final String phoneNumber;
  DateTime lastContactDate;
  int reminderFrequency;

  //Constructor
  Person({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.lastContactDate,
    required this.reminderFrequency,
  });

  int daysSinceLastContact() {
    return DateTime.now().difference(lastContactDate).inDays;
  }

  // Returns true if needs a reminder
  bool needsReminder() {
    return reminderFrequency >= daysSinceLastContact();
  }
}
