// RUN: %target-parse-verify-swift

var �x = "" // expected-error{{invalid UTF-8 found in source file}} 

// Make sure we don't stop processing the whole file.
static func foo() {} // expected-error{{static methods may only be declared on a type}}
