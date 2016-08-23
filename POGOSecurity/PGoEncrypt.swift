import Foundation

public class PGoEncrypt {
    public init () {
    }
    
    public func randomBytes(len: Int? = 32) -> NSData {
        var randomBytes = [UInt8](count: len!, repeatedValue: 0)
        SecRandomCopyBytes(kSecRandomDefault, len!, &randomBytes)
        return NSData(bytes: randomBytes, length: len!)
    }
    
    public func encryptUsingLib(input: NSData, iv_: NSData? = nil) -> NSData {
        var iv: NSData? = iv_
        if iv_ == nil {
            iv = randomBytes()
        }
        var outputSize: size_t = 0
        encryptUnknown6(UnsafePointer<UInt8>(input.bytes), input.length,
                        UnsafePointer<UInt8>(iv!.bytes), iv!.length, nil, &outputSize)
        
        let output: NSData = NSMutableData(length: outputSize)!
        encryptUnknown6(UnsafePointer<UInt8>(input.bytes), input.length,
                        UnsafePointer<UInt8>(iv!.bytes), iv!.length,
                        UnsafeMutablePointer<UInt8>(output.bytes), &outputSize)
        
        let usedOutput = outputSize < output.length ? output.subdataWithRange(NSMakeRange(0, outputSize)) : output
        return usedOutput
    }
}
