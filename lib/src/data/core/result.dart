class Result<T> {
  Status status;
  T? data;
  String? message;

  Result.completed(this.data, [this.message]) : status = Status.completed;

  Result.error(this.message) : status = Status.error;

  @override
  String toString() {
    return '$status $message $data';
  }
}

enum Status { completed, error }
