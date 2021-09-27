class Student{
  String? id;
  String? studentName;
  String? studentClass;
  String? studentRegNumber;
  String? parentPhoneNumber;
  String? studentFingerPrint;

  Student({this.id,this.studentName, this.studentClass,this.studentRegNumber, this.parentPhoneNumber, this.studentFingerPrint});

  factory Student.fromMap(Map data){
    return Student(
      id: data['id'] ?? "",
      studentName: data['studentName'] ?? "",
      studentRegNumber: data['studentClass'] ?? "",
      parentPhoneNumber: data['parentPhoneNumber'] ?? "",
      studentFingerPrint: data['studentFingerPrint'] ?? "",
    );
  }
}