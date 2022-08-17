import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class PageControllerCubit extends Cubit<int> {
  PageControllerCubit() : super(0);

  getIndex({required index}) {
    emit(index);
  }
}
