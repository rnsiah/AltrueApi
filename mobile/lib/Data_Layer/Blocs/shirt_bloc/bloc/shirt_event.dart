part of 'shirt_bloc.dart';

abstract class ShirtEvent extends Equatable {
  const ShirtEvent();

  @override
  List<Object> get props => [];
}

class FetchShirts extends ShirtEvent{
  
}