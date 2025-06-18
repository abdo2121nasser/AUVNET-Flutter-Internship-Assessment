part of 'service_bloc.dart';

@immutable
class ServiceState extends Equatable {
  final List<ServiceEntity> services;
  final RequestStateEnum getServicesState;
   final String error;
  const ServiceState({
    this.getServicesState = RequestStateEnum.init,
     this.services=const [],
    this.error=''
  });

  ServiceState copyWith({
    List<ServiceEntity>? services,
    RequestStateEnum? getServicesState,
    String? error
  }) {
    return ServiceState(
      services: services ?? this.services,
      getServicesState: getServicesState ?? this.getServicesState,
      error: error??this.error
    );
  }

  @override
  List<Object?> get props => [services, getServicesState,error];
}
