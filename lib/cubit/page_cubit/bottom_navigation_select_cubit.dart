import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class BottomNavigationSelectCubit extends Cubit<int> {
  BottomNavigationSelectCubit() : super(0);
  setIsSelected({required selected}) {
    emit(selected);
  }
}
