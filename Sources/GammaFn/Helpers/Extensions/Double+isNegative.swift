extension Double {
    
    func isNegative() throws {
        if(self < 0) {
            throw GammaCalculationError.negativeInput
        }
    }
    
}
