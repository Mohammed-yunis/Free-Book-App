import 'package:equatable/equatable.dart';

abstract class ChoiceBooksStates extends Equatable {
  const ChoiceBooksStates();

  @override
  List<Object> get props => [];
}

class ChoiceBooksInitial extends ChoiceBooksStates {}
class ChoiceBooksLoading extends ChoiceBooksStates {}
class ChoiceBooksFailures extends ChoiceBooksStates {}
class ChoiceBooksSuccess extends ChoiceBooksStates {}