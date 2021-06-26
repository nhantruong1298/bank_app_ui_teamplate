import 'package:bank_app/modules/login/bloc/login_event.dart';
import 'package:bank_app/modules/login/bloc/login_state.dart';
import 'package:bloc/bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(LoginState initialState) : super(initialState);

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginInitEvent) {
      yield LoginInitState();
    } else if (event is LoginAuthEvent) {
      yield LoginAuthState();
    }
  }
}
