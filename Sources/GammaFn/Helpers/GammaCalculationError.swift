enum GammaCalculationError {
    case negativeInput
}

extension GammaCalculationError: Error {
    
    var localizedDescription: String {
        switch self {
        case .negativeInput:
            return "Please consider: z ∈ ℝ | z > 0"
        }
    }
    
}
