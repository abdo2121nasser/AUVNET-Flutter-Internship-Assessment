part of 'service_bloc.dart';

@immutable
sealed class ServiceEvent {}
 class GetServicesEvent extends ServiceEvent {}
