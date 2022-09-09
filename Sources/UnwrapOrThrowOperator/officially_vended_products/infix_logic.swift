//
//  infix_logic.swift
//  
//
//  Created by Jeremy Bannister on 9/6/22.
//

///
public extension Optional {
    
    ///
    static func |? (lhs: Self, rhs: String) throws -> Wrapped {
        try lhs |? rhs.asErrorMessage()
    }
}

///
public extension Optional {
    
    ///
    static func |? <E: Error> (lhs: Self, rhs: E) throws -> Wrapped {
        if let lhs = lhs {
            return lhs
        } else {
            throw rhs
        }
    }
}
