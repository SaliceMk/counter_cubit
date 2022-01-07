# counter_cubit

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

-----------------------------------------------------------------------
#1 UI made
#2 install bloc(check in the pubspec whether bloc is in the dependency or not) and bloc extension ; create New Cubit(Automatically a cubit n a state will be created)
#3 dependency injection : Wrap the root with BlocProvider(do not forget to access the BloProvider in the onPressed part)
#4 For those widgets which need to be re-rendered when a state changes, wrap them with BlocBuilder or simply BlocConsumer:builder 
*** For an action to be performed when a state changes, wrap them with BlocListener or simply BlocConsumer: listener
*** If there are multiple floatinf action button in a screen , use the heroTag, otherwise it gives an error
#5 install equattable . extend equatable in cubit state. 
*** BlocProvider.value is also used . the name of the new context n the existing context must be different .