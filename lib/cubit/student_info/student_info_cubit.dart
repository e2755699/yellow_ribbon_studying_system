import 'package:bloc/bloc.dart';

import 'student_info_state.dart';

class StudentInfoCubit extends Cubit<StudentInfoState> {
  StudentInfoCubit() : super(StudentInfoState().init());
}
