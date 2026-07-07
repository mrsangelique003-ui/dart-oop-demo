# Dart OOP Demo: Student, Teacher & School

A simple Dart console program demonstrating core object-oriented programming concepts: classes, encapsulation, inheritance, method overriding, and polymorphism.

## Features Demonstrated

- **Encapsulation** — `Student` stores age in a private field `_age`, exposed safely through a getter/setter that validates input (rejects negative ages).
- **Inheritance** — `Teacher` extends `Student`, inheriting its properties and methods while adding a new `subject` field.
- **Method Overriding & Polymorphism** — `Teacher` overrides `displayInfo()` to include the subject; when stored in a `List<Student>`, each object calls its own version of the method at runtime.
- **Composition / Aggregation** — `School` holds a list of `Student` objects (which can also be `Teacher` instances) and manages them via `addStudent()`, `removeStudent()`, and `showStudents()`.

## Classes

### `Student`
| Member | Type | Description |
|---|---|---|
| `name` | `String` | Student's name |
| `course` | `String` | Enrolled course |
| `_age` | `int` (private) | Age, accessed via getter/setter |
| `age` (getter/setter) | `int` | Returns age; setter rejects negative values with an "Invalid age!" message |
| `displayInfo()` | `void` | Prints name, age, and course |
| `study()` | `void` | Prints a message that the student is studying Dart |

### `Teacher extends Student`
| Member | Type | Description |
|---|---|---|
| `subject` | `String` | Subject taught |
| `displayInfo()` (override) | `void` | Prints name, age, course, and subject |

Inherits `study()` unchanged from `Student`.

### `School`
| Member | Type | Description |
|---|---|---|
| `schoolName` | `String` | Name of the school |
| `students` | `List<Student>` | Collection of students/teachers enrolled |
| `addStudent(Student)` | `void` | Adds a student/teacher and confirms via print |
| `removeStudent(Student)` | `void` | Removes a student/teacher and confirms via print |
| `showStudents()` | `void` | Prints info for every person in the list |

## Program Flow (`main()`)

1. **Part 2** — Creates two `Student` objects and displays their info.
2. **Part 3** — Calls `study()` on each student.
3. **Part 4** — Tests encapsulation: updates age validly, then attempts an invalid (negative) age.
4. **Part 5 & 6** — Creates a `Teacher` and shows overridden `displayInfo()` plus inherited `study()`.
5. **Part 7** — Builds a mixed `List<Student>` (including a `Teacher`) to demonstrate polymorphism.
6. **Bonus** — Uses the `School` class to add, list, and remove students/teachers.

## How to Run

1. Make sure the [Dart SDK](https://dart.dev/get-dart) is installed.
2. Save the code to a file, e.g. `main.dart`.
3. Run it from the terminal:
   ```bash
   dart run main.dart
   ```

## Expected Output (abridged)

```
===== Part 2: Creating Student Objects =====
Name: Alice
Age: 20
Course: Computer Science
---------------------------
...
===== Part 4: Encapsulation Test =====
Updated age for Alice: 21
Invalid age!
Age remains: 21
...
```

## Notes / Possible Improvements

- `age` is printed using the private field `_age` directly inside `Student.displayInfo()` instead of the public getter — works fine within the class but is inconsistent style-wise with `Teacher`'s override, which uses the `age` getter.
- Consider adding an `id` field to `Student` so `School.removeStudent()` can match by ID instead of relying on object equality via `List.remove()`.
- Could add a custom `toString()` override instead of (or alongside) `displayInfo()` for more idiomatic Dart.

