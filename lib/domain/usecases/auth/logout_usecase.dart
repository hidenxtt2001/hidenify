import 'package:injectable/injectable.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_app/core/usecase.dart';
import 'package:streaming_app/domain/repositories/auth_repository.dart';

@lazySingleton
class LogoutUsecase implements Usecase<void, NoParams> {
  final AuthRepository _authRepository;

  LogoutUsecase(this._authRepository);
  @override
  Future<Either<Failure, void>> call(NoParams params) {
    return _authRepository.logout();
  }
}
