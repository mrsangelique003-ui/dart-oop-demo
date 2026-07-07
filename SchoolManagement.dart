class Students {
  String name;
  int age;
  String course;

  Students(this.name, this.age, this.course);

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Course: $course');
  }

  void Study() {
    print('$name is Studying Dart');
  }

  void printline() {
    print('-----------------');
  }
}

void main() {
  var d = Students("Alice", 20, "Computer science");
  d.displayInfo();
  d.printline();
  var Students1 = Students("Bob", 30, "Geography");
  Students1.displayInfo();
  Students1.Study();
  Students1.printline();
  var Students2 = Students("Muhirwa", 18, "Biology");
  Students2.displayInfo();
  Students2.Study();
  Students2.printline();
}
