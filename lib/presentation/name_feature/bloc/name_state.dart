part of 'name_bloc.dart';


class NameState extends Equatable {
  final NameStatus nameStatus;
  final String message;
  final Map<String, dynamic>? data; // Add the data field

  const NameState({
    this.message = "",
    this.nameStatus = NameStatus.loading,
    this.data,  // Initialize data
  });

  NameState copyWith({
    NameStatus? nameStatus,
    String? message,
    Map<String, dynamic>? data,  // Add data to copyWith method
  }) {
    return NameState(
      nameStatus: nameStatus ?? this.nameStatus,
      message: message ?? this.message,
      data: data ?? this.data,  // Copy the new data
    );
  }

  @override
  List<Object?> get props => [
    nameStatus,
    message,
    data,  // Include data in props
  ];
}


enum NameStatus {loading, success, error}