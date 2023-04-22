void main() {
  const one = 'one'; // Is compile-time constant.
  // two = '2';  // Error: does not change.
  // var api = unknownAPI();  // ok.
  // late api = fetchAPI();  // ok.
  // const api = fetchAPI();  // Error: Is not compile-time constant.
}
