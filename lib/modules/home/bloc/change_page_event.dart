import 'package:equatable/equatable.dart';

abstract class ChangePageEvent extends Equatable {
  const ChangePageEvent();
}

class ChangePage extends ChangePageEvent {
  final int index;
  const ChangePage(this.index);

  @override
  List<Object?> get props => [];
}
