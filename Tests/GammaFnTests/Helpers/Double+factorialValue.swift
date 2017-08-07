extension Double {
    
    private func factorial(_ n: Double) -> Double {
        return n == 0
            ? 1
            : n * factorial(n - 1)
    }
    
    public var factorialValue: Double {
        get {
            return self.factorial(self)
        }
    }
}
