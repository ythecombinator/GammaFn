import Foundation

extension Double {
    
    public static func gamma(for value: Double) -> Double {
   
        switch value {
        case let x where x < 0.5:
            return Double.pi / (sin(Double.pi * value) * Double.logForGamma(of: (1 - value)))
        case let x where x > 100:
            return exp(Double.logForGamma(of: value))
        default:
            let decreasedValue: Double = value - 1
            var x = Array.p[0]
            
            for i in Swift.stride(from: 1, to: Double.g + 2, by: 1){
                let index = Int(i)
                x += Array.p[index] / (decreasedValue + i)
            }
            
            let t = decreasedValue + Double.g + 0.5
            
            return
                sqrt(2 * Double.pi)
                    * pow(t, decreasedValue + 0.5)
                    * exp(-t)
                    * x
        }
    }
    
    public var gammaValue: Double {
        get {
            return Double.gamma(for: self)
        }
    }
    
}


