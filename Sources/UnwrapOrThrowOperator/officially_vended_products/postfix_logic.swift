//
//  postfix_logic.swift
//  
//
//  Created by Jeremy Bannister on 9/6/22.
//

///
extension Optional {
    
    ///
    public static postfix func |? (value: Self) throws -> Wrapped {
    
        /// Assert that the value exists, otherwise throw an error
        guard let value = value else {
            throw ErrorMessage("\(Wrapped.self)? was nil.")
        }
        
        /// Return the unwrapped value
        return value
    }
}
