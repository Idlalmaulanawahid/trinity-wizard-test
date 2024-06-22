part of 'data_bloc.dart';

sealed class DataState extends Equatable {
  const DataState();

  @override
  List<Object> get props => [];
}

final class DataInitial extends DataState {}

class DataBlocLoading extends DataState {}

class DataBlocSuccess extends DataState {
  final List<ListDataModel> dataModel;
  const DataBlocSuccess({
    required this.dataModel,
  });
  @override
  List<Object> get props => [dataModel];
}

class DataBlocError extends DataState {
  final String message;
  const DataBlocError({
    required this.message,
  });
  @override
  List<Object> get props => [message];
}
