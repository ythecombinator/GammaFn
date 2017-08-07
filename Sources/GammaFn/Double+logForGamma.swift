import Foundation

extension Double {
    
    public static func logForGamma(of value: Double) -> Double {
        
        do {
            try value.isNegative()
        } catch {
            print(error.localizedDescription)
        }
        
        var x = Array.pLn[0]
        
        for i in (0..<Array.pLn.count - 1).reversed() {
            let index = Double(i)
            x += Array.pLn[i] / (value + index)
        }
        
        let t = value + Double.gLn + 0.5
        
        return
            0.5
                * log(2 * Double.pi)
                + (value + 0.5)
                * log(t)
                - t
                + log(x)
                - log(value)
    }
    
    public var logValueForGamma: Double {
        get {
            return Double.logForGamma(of: self)
        }
    }
    
}
