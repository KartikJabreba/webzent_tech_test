import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:webzent_tech_test/bloc/postdata_bloc.dart';

class Assignment1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => PostdataBloc(),
        child: BlocBuilder<PostdataBloc, PostdataState>(
          builder: (context, state) {
            if (state is PostdataInitial) {
              context.read<PostdataBloc>().add(InitialEvent());
              return Center(child: CircularProgressIndicator());
            } else if (state is FailedResponseState) {
              return Center(
                child: Text('Invalid data response'),
              );
            } else if (state is GetDataState) {
              ListView.builder(
                  itemCount: state.postDataModel.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(10),
                      title: Text('${state.postDataModel[index].userId}'),
                      subtitle: Text(state.postDataModel[index].title),
                    );
                  });
            }
            
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
