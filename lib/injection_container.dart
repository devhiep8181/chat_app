import 'package:chat_app/data/datasource/chat_user/chat_user_datasource.dart';
import 'package:chat_app/data/repositories/chat_user/chat_user_repository_impl.dart';
import 'package:chat_app/domain/repositories/chat_user/chat_user_repository.dart';
import 'package:chat_app/domain/usecases/chat_user/chat_user_usecase.dart';
import 'package:chat_app/presentation/bloc/blocs.dart';

import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

///* registerFactory: Mỗi khi gọi sẽ có 1 instance mới được tạo ra và trả về
///* registerSingleton: Chỉ tạo ra 1 instance duy nhất, ngay khi khởi động app
///* registerLazySingleton: Khởi tạo vào lần gọi lấy instance đầu tiên, chứ không phải khi app khởi động

void init() {
//! BLocs
  sl.registerLazySingleton(() => ChatUserBloc(chatUserUseCase: sl()));

//! Use cases
  sl.registerLazySingleton(() => ChatUserUseCase(chatUserRepository: sl()));

//! Repositories
  sl.registerLazySingleton<ChatUserRepository>(
      () => ChatUserRepositoryImpl(chatUserDataSoure: sl()));

//! Data sources
  sl.registerLazySingleton<ChatUserDataSoure>(() => ChatUserDataSoureImpl());
}
