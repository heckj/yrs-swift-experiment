@_implementationOnly import YrsC

// No real docs exist for YrsC, but there's some darned handy clues about how to interact with it through it's FFI tests:
// https://github.com/y-crdt/y-crdt/blob/main/tests-ffi/main.cpp

// ref: https://developer.apple.com/documentation/swift/using-imported-c-functions-in-swift
// ref: https://github.com/apple/swift/blob/main/docs/HowSwiftImportsCAPIs.md

// C example code: https://github.com/jpsim/Yams
// - https://github.com/jpsim/Yams/blob/main/Sources/Yams/Parser.swift
// - https://github.com/jpsim/Yams/blob/main/Sources/Yams/YamlError.swift

public class YrsDoc {
    let _YDoc: UnsafeMutablePointer<YDoc>
    
    public init(_ id: UInt) {
        let opts = YOptions(id: id, encoding: Y_OFFSET_UTF16, skip_gc: 0)
        _YDoc = ydoc_new_with_options(opts)
        //let doc = _YDoc.pointee
    }
    
    public init?() {
        if let maybeDoc = ydoc_new() {
            _YDoc = maybeDoc
        }
        return nil
    }
    
    deinit {
        ydoc_destroy(_YDoc)
    }
        
}

/// A read-write transaction for a given document.
public class YrsTransaction {
    let _YTransaction: UnsafeMutablePointer<YTransaction>
    
    init(_ doc: YrsDoc) {
        _YTransaction = ytransaction_new(doc._YDoc)
    }
        
    deinit {
        _YTransaction.deallocate()
    }
    
    func commit() {
        ytransaction_commit(_YTransaction)
    }
}

public struct yrs_swift_experiment {
    public private(set) var text = "Hello, World!"

    public init() {
        if let x: UnsafeMutablePointer<YDoc> = ydoc_new() {
            // do stuff here
            
            ydoc_destroy(x)
        }
    }
}
