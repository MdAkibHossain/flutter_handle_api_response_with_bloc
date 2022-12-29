import 'package:bloc/bloc.dart';
import 'package:bloc_test_project_3_game/models/data_model.dart';
import 'package:bloc_test_project_3_game/repo/game_repo.dart';
import 'package:meta/meta.dart';

part 'game_data_event.dart';
part 'game_data_state.dart';

class GameDataBloc extends Bloc<GameDataEvent, GameDataState> {
  final GamesRepo gamesRepo;
  GameDataBloc(this.gamesRepo) : super(GameDataInitialState()) {
    on<GameDataEvent>(
      (event, emit) async {
        if (event is LoadGameDataEvent) {
          emit(
            GameDataLoadingState(),
          );
          List<DataModel>? responseD = await gamesRepo.getGameData();
          if (responseD == null) {
            emit(
              GameDataErrorState(),
            );
          } else {
            emit(
              GameDataLoadedState(responseD),
            );
          }
        }
      },
    );
  }
}
