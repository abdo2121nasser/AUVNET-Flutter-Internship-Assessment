part of 'service_bloc.dart';

@immutable
class ServiceState extends Equatable {
  final List<ServiceEntity> services;
  final RequestStateEnum getServicesState;

  const ServiceState({
    this.getServicesState = RequestStateEnum.init,
     this.services=const [],
  });

  ServiceState copyWith({
    List<ServiceEntity>? services,
    RequestStateEnum? getServicesState,
  }) {
    return ServiceState(
      services: services ?? this.services,
      getServicesState: getServicesState ?? this.getServicesState,
    );
  }

  @override
  List<Object?> get props => [services, getServicesState];
}
