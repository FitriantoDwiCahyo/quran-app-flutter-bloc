part of 'quran_bloc.dart';

sealed class QuranState extends Equatable {
  const QuranState();
  
  @override
  List<Object> get props => [];
}

final class QuranInitial extends QuranState {}
