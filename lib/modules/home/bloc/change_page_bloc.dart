import 'package:bank_app/modules/home/bloc/change_page_event.dart';
import 'package:bloc/bloc.dart';

class ChangePageBloc extends Bloc<ChangePageEvent, int> {
  ChangePageBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(ChangePageEvent event) async* {
    if (event is ChangePage) {
      yield event.index;
    }
  }
}
