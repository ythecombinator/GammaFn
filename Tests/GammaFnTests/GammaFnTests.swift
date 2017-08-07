import Quick;
import Nimble;
import Foundation;

@testable import GammaFn;

class GammaFnTests: QuickSpec {
    static var allSpecs = [ GammaFnTests.self ];
    
    override func spec() {
        
        describe("Γ function") {
            
            it("obeys: Γ(n) = (n - 1)!") {
                
                var facts: [Double] = Array.containing(factorialElementsUpTo: 11)
                var f: Double = 1.0
                
                facts.forEach { i in
                    if let index = facts.index(of: i) {
                        let res = Double.gamma(for: Double(index + 1));
                        expect(facts[index]).to(equal(round(res)))
                    }
                }
            }
        }
    }
}
