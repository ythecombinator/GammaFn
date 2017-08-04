import PackageDescription
import Foundation

var isSwiftPackagerManagerTestEnvironment: Bool {
    return ProcessInfo.processInfo.environment["SPM_ENV"] == "test"
}

let package = Package(
    name: "GammaFn",
    dependencies: {
        var deps: [Package.Dependency] = [            
        ]
        if isSwiftPackagerManagerTestEnvironment {
            deps += [
                .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1, minor: 1),
                .Package(url: "https://github.com/Quick/Nimble.git", majorVersion: 7)
            ]
        }
        return deps
    }(),
    swiftLanguageVersions: [3]
)
