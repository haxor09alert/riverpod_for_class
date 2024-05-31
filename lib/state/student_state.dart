import 'package:riverpod_for_class/model/student.dart';

class StudentState {
  final List<Student> lstStudents;
  final bool isLoading;

  StudentState({
    required this.lstStudents,
    required this.isLoading,
  });

  factory StudentState.inital(){
    return StudentState(lstStudents: [], isLoading: false);
  }

  StudentState copyWith({
    Student? student,
    bool? isLoading
  }){
    return StudentState(
      lstStudents: student !=null? [...lstStudents,student]:lstStudents,
      isLoading: isLoading ?? this.isLoading,
    );
  }
}
