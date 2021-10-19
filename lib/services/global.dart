import 'package:hezion_s/services/services.dart';

class Global {
  //Data Models
  static final Map models = {
    Student: (data) => Student.fromMap(data),
  };

  //Firebase references for writes.
   static final Collection<Student> student = Collection<Student>(path: 'student');
}
