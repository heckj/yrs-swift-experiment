@_implementationOnly import YrsC

// ref: https://developer.apple.com/documentation/swift/using-imported-c-functions-in-swift
// example: https://github.com/jpsim/Yams
// - https://github.com/jpsim/Yams/blob/main/Sources/Yams/Parser.swift
// - https://github.com/jpsim/Yams/blob/main/Sources/Yams/YamlError.swift


public struct yrs_swift_experiment {
    public private(set) var text = "Hello, World!"

    public init() {
        if let x: UnsafeMutablePointer<YDoc> = ydoc_new() {
            // do stuff here
            
            ydoc_destroy(x)
        }
    }
}
