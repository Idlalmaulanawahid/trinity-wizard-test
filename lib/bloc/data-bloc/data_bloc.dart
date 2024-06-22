import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:trinity_wizard_test/models/data-model.dart';
import 'package:trinity_wizard_test/repository/data-repository.dart';

part 'data_event.dart';
part 'data_state.dart';

class DataBloc extends Bloc<DataEvent, DataState> {
  DataRepository ataRepository;
  DataBloc(this.ataRepository,) : super(DataInitial())  {
    on<GetDataBlocEvent>((event, emit) async {
      emit(DataBlocLoading());
      final result = await ataRepository.getData();
      result.fold(
        (error) => emit(DataBlocError(message: error)),
        (data) => emit(DataBlocSuccess(dataModel: data)),
      );
    });
  }
}
