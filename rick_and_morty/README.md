# Rick and Morty Companion

Feature-first Flutter application that lists characters from the Rick and Morty
universe, supports searching/pagination, and lets users manage favourites. The
codebase follows Clean Architecture, uses `flutter_bloc` for presentation logic,
and splits reusable widgets into a dedicated `packages/ui` module.

## Tech Stack & Versions

- **Flutter**: 3.32.6 (stable)  
- **Dart**: 3.8.1  
- Core packages:
  - `flutter_bloc` ^9.0.0
  - `auto_route` ^9.2.0
  - `dio` 5.x + `retrofit` 4.6.0 for networking
  - `get_it` ^7.7.0 and `injectable` ^2.5.0 for dependency injection
  - `freezed` / `json_serializable` for immutable models & JSON
  - `infinite_scroll_pagination` ^4.0.0 for endless lists
  - `flutter_screenutil` ^5.9.0 for adaptive layouts
  - `shared_preferences` ^2.3.2 for simple caching

Check `pubspec.yaml` for the full list of dependencies.

## Project Structure

```
lib/
 ├─ core/            # shared utilities, errors, result types
 ├─ config/          # routing, networking, service locator
 ├─ domain/          # entities, repositories, use cases
 ├─ data/            # repository implementations, data sources
 ├─ presentation/    # feature-first UI with blocs/pages/widgets
 └─ main.dart        # app entry point
packages/
 └─ ui/              # shared widgets (AppErrorView, AppTheme, etc.)
```

## Prerequisites

1. Install Flutter 3.32.6 (or ensure `flutter upgrade` brings you to that
   version).  
2. Enable the corresponding platforms (`flutter config --enable-<platform>`).  
3. (Optional) Install `melos`/`fvm` if you plan to manage multiple packages or
   SDK versions.

## Build & Run

```bash
# 1. Install dependencies
flutter pub get

# 2. Generate code (freezed, json_serializable, retrofit, injectable)
flutter pub run build_runner build --delete-conflicting-outputs

# 3. Run the app on the desired platform
flutter run                     # or flutter run -d chrome / ios / macos ...
```

### Testing

```bash
flutter test                 # package-wide tests
flutter test packages/ui     # shared UI module tests
```

## Additional Notes

- **Environment variables**: none required; API base URL is configured in
  `lib/config/network/constants/constants.dart`.
- **Offline caching**: Characters pages and favourites are cached locally using
  `shared_preferences`.
- **Adaptive UI**: All primary widgets are scaled through `flutter_screenutil`
  for consistent look across devices.

For more information about Flutter, see the [official documentation](https://docs.flutter.dev/).
