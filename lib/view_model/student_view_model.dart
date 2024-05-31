import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_for_class/model/student.dart';
import 'package:riverpod_for_class/state/student_state.dart';

final studentViewModelProvider =
    StateNotifierProvider<StudentViewModel, StudentState>(
        (ref) => StudentViewModel());

class StudentViewModel extends StateNotifier<StudentState> {
  StudentViewModel() : super(StudentState.inital());

  void addStudent(Student student) async {
    state = state.copyWith(isLoading: true);
    await Future.delayed(const Duration(seconds: 3));
    state = state.copyWith(isLoading: false, student: student);
  }
}
