import Quick
import Nimble
import Foundation

@testable import GammaFn

class GammaFnTests: QuickSpec {
    
    static var allSpecs = [ GammaFnTests.self ]
    
    override func spec() {
        
        describe("Γ function") {
            
            it("obeys: Γ(n) = (n - 1)!") {
                
                var facts: [Double] = Array.containing(factorialElementsUpTo: 11)
                var f: Double = 1.0
                
                facts.forEach { i in
                    if let index = facts.index(of: i) {
                        let res = Double.gamma(for: Double(index + 1))
                        expect(facts[index]).to(equal(round(res)))
                    }
                }
            }
            
            
            it("obeys: Γ(z) = integral(0, inf, e^(-t)*t^(z - 1))") {
                
                let zs: [Double] = [ 0.84, 1.31, 2.54, 3.01, 5.2, 6.1 ]
                
                zs.forEach { z in
                    
                    var res: Double = 0.0
                    let dx: Double = 0.0001
                    
                    for x in Swift.stride(from: 0.000001, to: 40, by: dx){
                        res += exp(-x) * pow(x, z - 1) * dx
                    }
                    
                    expect(round(res)).to(equal(round(Double.gamma(for: z))))
                    
                }
            }
            
        }
    }
}
