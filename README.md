# superappsnusa

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

--

## Architecture

We are using [Stacked Architecture](https://www.filledstacks.com/post/flutter-and-provider-architecture-using-stacked) which was an implementation of MVVM.

### Necessary

- [Flutter](https://marketplace.visualstudio.com/items?itemName=Dart-Code.flutter)
- [Dart](https://marketplace.visualstudio.com/items?itemName=Dart-Code.dart-code)

### Optional

- [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
- [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme)
- [Git Graph](https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph)
- [GitLens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens)
- [Todo Tree](https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree)
- [Dart Import](https://marketplace.visualstudio.com/items?itemName=luanpotter.dart-import)
- [Dart Data Class Generator](https://marketplace.visualstudio.com/items?itemName=BendixMa.dart-data-class-generator)
- [Pubspec Assist](https://marketplace.visualstudio.com/items?itemName=jeroen-meijer.pubspec-assist)
- [Version Lens](https://marketplace.visualstudio.com/items?itemName=pflannery.vscode-versionlens)
- [Bracket Pair Colorizer](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
- [Better Comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments)
- [Awesome Flutter Snippets](https://marketplace.visualstudio.com/items?itemName=Nash.awesome-flutter-snippets)

---

## Running The App

To launch the app in the Simulator, ensure that the Simulator is running and enter the following command from the root of the project in the terminal:

```
$ flutter pub get
$ flutter run --flavor <flavorName> -t lib/main-<flavorName>.dart

e.g.
$ flutter run --flavor dev -t lib/main-dev.dart
```

## Flutter for Apple M1 Users

Inside your _iOS Folder_ follow these commands in terminal:

```
$ sudo arch -x86_64 gem install ffi
$ arch -x86_64 pod install
```

If doesn't work try this:

```
$ arch -x86_64 pod install --repo-update
```

---

## Using Generator 

To generate the code, both package run the same command:

```
$ flutter pub run build_runner build --delete-conflicting-outputs
```

---


