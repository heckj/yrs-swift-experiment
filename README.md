# Yrs Swift experiment

[Y-crdt](https://github.com/y-crdt/y-crdt) is a port of the popular [Yjs](https://yjs.dev) CRDT library by its creators.
The library provides a C FFI (foreign function interface) to allow it to be used from other languages.
[YrsC](https://github.com/heckj/YrsC) is a Swift package structure that uses that FFI binding, and encapsulates iOS and macOS architectures into an importable package using XCFramework. 

This project is an experiment to work with that raw C binding to determine what can, or should, be added to a Swift language package to make it more easily consumable from the swift language.

For more information about the data structures and algorithms behind Y-crdt, read [Deep dive into Yrs architecture](https://bartoszsypytkowski.com/yrs-architecture/). 
For specifics of the sequential CRDT merge algorithm used (YATA), read [Delta-state CRDTs: indexed sequences with YATA](https://bartoszsypytkowski.com/yata/).
