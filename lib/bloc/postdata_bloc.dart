import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:webzent_tech_test/postDataModel.dart';
import 'package:webzent_tech_test/postDataService.dart';

part 'postdata_event.dart';
part 'postdata_state.dart';

class PostdataBloc extends Bloc<PostdataEvent, PostdataState> {
  PostdataBloc() : super(PostdataInitial());
  PostDataService postDataService = new PostDataService();
  List<PostDataModel> _postDataModel;

  @override
  Stream<PostdataState> mapEventToState(
    PostdataEvent event,
  ) async* {
    if (event is InitialEvent) {
      try {
        _postDataModel = await postDataService.getPostData();
        yield GetDataState(_postDataModel);
      } catch (e) {
        yield FailedResponseState();
      }
    }
    // TODO: implement mapEventToState
  }
}
