# elibrary

## Run the project

Type the following command to build and run the project:

```shell
flutter run lib/main.dart
```

## Configure for user and admin UI:

At `lib/main.dart`, edit the following line to switch between user and admin application:

```dart
runApp(MaterialApp(home: SplashPage(isUser: true)));
```

    - `isUser:true` : user interface
    - `isUser:false`: librarian interface


