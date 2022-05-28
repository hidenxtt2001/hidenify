import 'package:injectable/injectable.dart';
import 'package:streaming_app/core/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:streaming_app/core/usecase.dart';
import 'package:streaming_app/domain/entities/user_entity.dart';
import 'package:streaming_app/domain/repositories/auth_repository.dart';

@lazySingleton
class GetExistUserUsecase implements Usecase<UserEntity, NoParams> {
  final AuthRepository _authRepository;

  GetExistUserUsecase(this._authRepository);
  @override
  Future<Either<Failure, UserEntity>> call(NoParams params) {
    return _authRepository.getExistUser();
  }
}
