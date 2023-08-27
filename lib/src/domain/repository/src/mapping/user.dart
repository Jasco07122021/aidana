import 'package:aidana/src/data/network/response/user_dto.dart';
import 'package:aidana/src/domain/model/user.dart';

extension UserDTOExt on UserDTO {
  UserModel toMapping() {
    return UserModel(id, email, nickname);
  }
}
