extension Array where Iterator.Element == Int {
    
    public static func containing (factorialElementsUpTo max: Int) -> [Double] {
        
        let base = Array(0...max)
        
        return base.map {
            return Double($0).factorialValue
        }
        
    }
    
}
