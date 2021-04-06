part of 'postdata_bloc.dart';

abstract class PostdataEvent extends Equatable {
  const PostdataEvent();

  @override
  List<Object> get props => [];
}

class InitialEvent extends PostdataEvent {}
