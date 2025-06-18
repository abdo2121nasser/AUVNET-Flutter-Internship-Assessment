part of 'slider_bloc.dart';

@immutable
final class SliderState extends Equatable {
  final List<String> imagesLinks;
  final RequestStateEnum getImagesState;

  const SliderState({
    this.getImagesState = RequestStateEnum.init,
    this.imagesLinks = const [],
  });

  SliderState copyWith({
    List<String>? imagesLinks,
    RequestStateEnum? getImagesState,
  }) {
    return SliderState(
      imagesLinks: imagesLinks ?? this.imagesLinks,
      getImagesState: getImagesState ?? this.getImagesState,
    );
  }

  @override
  List<Object?> get props => [imagesLinks, getImagesState];
}
