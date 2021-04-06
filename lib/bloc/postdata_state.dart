part of 'postdata_bloc.dart';

abstract class PostdataState extends Equatable {
  const PostdataState();

  @override
  List<Object> get props => [];
}

class PostdataInitial extends PostdataState {}

class GetDataState extends PostdataState {
  List<PostDataModel> postDataModel;
  GetDataState(this.postDataModel);
}
class FailedResponseState extends PostdataState{}
