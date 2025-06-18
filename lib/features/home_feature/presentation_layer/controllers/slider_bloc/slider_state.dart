part of 'slider_bloc.dart';

@immutable
final class SliderState extends Equatable {
  final List<String> imagesLinks;
  final RequestStateEnum getImagesState;
  final String error;


  const SliderState({
    this.getImagesState = RequestStateEnum.init,
    this.imagesLinks = const [],
    this.error=''
  });

  SliderState copyWith({
    List<String>? imagesLinks,
    RequestStateEnum? getImagesState,
    String? error

  }) {
    return SliderState(
      imagesLinks: imagesLinks ?? this.imagesLinks,
      getImagesState: getImagesState ?? this.getImagesState,
      error: error??this.error
    );
  }

  @override
  List<Object?> get props => [imagesLinks, getImagesState,error];
}
