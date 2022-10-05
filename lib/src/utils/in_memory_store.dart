import 'package:rxdart/rxdart.dart';

/// An in-memory store backed by a [BehaviorSubject] that can be used
/// to store the data for all the fake repositories.
class InMemoryStore<T> {
  InMemoryStore(T initial) : _subject = BehaviorSubject.seeded(initial);

  /// The behavior subject that stores the data.
  final BehaviorSubject<T> _subject;

  /// The output stream that can be used to listen to the data.
  Stream<T> get stream => _subject.stream;

  /// A synchronous getter for the current value.
  T get value => _subject.value;

  /// A setter for updating the value.
  set value(T value) => _subject.add(value);

  /// Don't forget to close the subject when you're done.
  void close() => _subject.close();
}
