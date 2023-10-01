# Localization Generate Terminal
Step 1: flutter update-packages --force-upgrade
Step 2: flutter gen-l10n
Step 3: flutter pub run build_runner build --delete-conflicting-outputs

# blog
https://medium.com/@kamal.lakhani56/clean-architecture-f23b7d9c6ee7

# security
Pagination: emit(state.copyWith(laps: [...state.laps, state.ticks]));
Switch case condition: state.runtimeType
```
ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
        const SnackBar(content: Text('Authentication Failure')),
    ;
        
final state = context.watch<LoginCubit>().state;
   
BlocConsumer<CartCubit, CartState>(
      listener: (context, state) {
        state.maybeWhen(
            success: (products) => ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(content: Text('Cart updated 😍'))),
            orElse: () {});
        state.maybeWhen(
          error: (error, products) => ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(error))),
          orElse: () {},
        );
   
BlocBuilder<AppCubit, AppState>(
    buildWhen: (previous, current) => previous.value != current.value,
    builder: (context, state) { }
   
BlocConsumer<SearchCubit, SearchState>(
    builder: (context, state) {
        switch (state.status) {
            case SearchStatus.initial:
                return const SearchInitial();
            case SearchStatus.searching:
                return const SearchLoading();
            default:
                return const SearchPopulated();
            }
       },
    listener: (context, state) {
        if (state.status == SearchStatus.failure) {}
    })
             
part 'breed.freezed.dart';
part 'breed.g.dart';

   @freezed
   class Breed with _$Breed {
    const factory Breed({
        required int id
    }) = _Breed;

    factory Breed.fromJson(Map<String, dynamic> json) => _$BreedFromJson(json);

    factory Breed.fromRepo(breed_repository.Breed breed) => Breed(
        id: breed.id
    );
   }  
   ```