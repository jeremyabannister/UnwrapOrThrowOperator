/**
 This is an awesome little piece of code given in comment number 22 on the thread below - tldr; this allows you to try to pass optional values as non-optional function arguments, converting the function return type to an optional to allow for returning nil in the case that any of the function arguments turned out to be nil
 Swift Forums Thread: https://forums.swift.org/t/unwrapped-arguments-for-functions/28548/22
 
 Here's a basic example of how it's used:
 
 /// Imagine we have this function
func flip (_ bool: Bool) -> Bool {
    return bool.toggled()
}

 /// But we have an optional bool as our argument
let opt: Bool? = true

 /// We can attempt to pass our optional bool to the flip function by using the throwing unwrap operator, and provide a default value if it fails
let flippedOrTrue = (try? flip(opt |?)) ?? true
 */

/// This operator performs the magic of leveraging the power of throwing expressions to allow conditional calling of a function based on optional arguments
postfix operator |?

/// This operator is the "throwing unwrap" operator, which unwraps and returns the value or throws an error if it's nil
public postfix func |? <T> (value: T?) throws -> T {
    
    /// Assert that the value exists, otherwise throw the NilError
    guard let value = value else { throw ErrorMessage("\(T.self) was nil.") }
    
    /// Return the unwrapped value
    return value
}
