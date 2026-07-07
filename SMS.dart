class Student {
  String name;
  String course;

  int _age;

  Student(this.name, this._age, this.course);

  int get age => _age;

  set age(int value) {
    if (value < 0) {
      print('Invalid age!');
    } else {
      _age = value;
    }
  }

  void displayInfo() {
    print('Name: $name');
    print('Age: $_age');
    print('Course: $course');
  }

  void study() {
    print('$name is studying Dart.');
  }
}

class Teacher extends Student {
  String subject;

  Teacher(String name, int age, String course, this.subject)
    : super(name, age, course);

  @override
  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Course: $course');
    print('Subject: $subject');
  }
}

class School {
  String schoolName;
  List<Student> students = [];

  School(this.schoolName);

  void addStudent(Student student) {
    students.add(student);
    print('${student.name} has been added to $schoolName.');
  }

  void removeStudent(Student student) {
    students.remove(student);
    print('${student.name} has been removed from $schoolName.');
  }

  void showStudents() {
    print('--- Students at $schoolName ---');
    for (var student in students) {
      student.displayInfo();
      print('---------------------------');
    }
  }
}

void main() {
  print('===== Part 2: Creating Student Objects =====');
  Student student1 = Student('Alice', 20, 'Computer Science');
  Student student2 = Student('John', 22, 'Mathematics');

  student1.displayInfo();
  print('---------------------------');
  student2.displayInfo();

  print('\n===== Part 3: Calling study() =====');
  student1.study();
  student2.study();

  print('\n===== Part 4: Encapsulation Test =====');
  student1.age = 21;
  print('Updated age for ${student1.name}: ${student1.age}');

  student1.age = -5;
  print('Age remains: ${student1.age}');

  print('\n===== Part 5 & 6: Teacher (Inheritance & Override) =====');
  Teacher teacher1 = Teacher('Mr. Smith', 40, 'Education', 'Physics');
  teacher1.displayInfo();
  teacher1.study();

  print('\n===== Part 7: List of Students & Teacher =====');
  List<Student> people = [
    Student('Alice', 20, 'Computer Science'),
    Student('John', 22, 'Mathematics'),
    Student('Emma', 19, 'Biology'),
    Teacher('Mr. Smith', 40, 'Education', 'Physics'),
  ];

  for (var person in people) {
    person.displayInfo();
    print('---------------------------');
  }

  print('\n===== Bonus: School Class =====');
  School mySchool = School('Green Valley High');

  mySchool.addStudent(student1);
  mySchool.addStudent(student2);
  mySchool.addStudent(teacher1);

  mySchool.showStudents();

  mySchool.removeStudent(student2);

  print('\nAfter removal:');
  mySchool.showStudents();
}
