<h1 align="center">
	<img src="Docs/Images/banner.png" alt="Logo" width="800px">
	<br>
	<br>
</h1>

<br>
<br>

<p align="center">
	🔢 gamma function (Γ) from mathematics in Swift 🔢
<br>
<br>

<a href="https://swift.org">
    <img src="http://img.shields.io/badge/swift-3.1-orange.svg" alt="Swift 3.1">
</a>

<a>
    <img src="https://img.shields.io/badge/platforms-Linux%20%7C%20OS%20X-blue.svg" alt="Platforms">
</a>

<a>
    <img src="https://img.shields.io/badge/package%20managers-SwiftPM-yellow.svg" alt="Package Managers">
</a>

<a href="https://travis-ci.org/ythecombinator/GammaFn">
    <img src="https://travis-ci.org/ythecombinator/GammaFn.svg?branch=master" alt="Build Status">
</a>

<a href="https://codebeat.co/projects/github-com-ythecombinator-gammafn-master">
    <img alt="codebeat badge" src="https://codebeat.co/badges/8b555148-33c0-42bc-9ed1-96ddae707ad9" />
</a>

<a href="LICENSE.md">
    <img src="http://img.shields.io/badge/license-MIT-brightgreen.svg" alt="MIT License">
</a>

</p>
<br>

---

## 📚 Table of Contents

<!-- DO NOT EDIT THE COMMENTS BELOW -->

<!-- toc -->

- [Installation](#-installation)
- [Getting Started](#-getting-started)
- [License](#️-license)

<!-- tocstop -->

## 📦 Installation

You just need to add this package as a dependency in your `Package.swift`:

```swift
let package = Package(
    name: "MyProject",
    dependencies: [
        .Package(url: "https://github.com/ythecombinator/GammaFn.git", majorVersion: 1),
        // ...
    ]
    // ...
)
```

## 🚀 Getting Started

### `gamma(for: Double) -> Double`

It returns the gamma function over `z`.

> *Note*: Complex ( `ℂ` ) numbers aren't supported–only Reals ( `ℝ` ).

```swift
import GammaFn

// Creating a simple `Double` value which we intend to pass to our Γ function–which is a static method from `Double`:

let simpleValue1: Double = 6.0
let resultValue1 = Double.gamma(for value: simpleValue1)
// => 120.0000000000002

// Another valid approach is accessing the property `gammaValue` from any `Double` value:

let simpleValue2: Double = 12.0
let resultValue2 = simpleValue2.gammaValue
// => 39916800.00000004
```

### `logForGamma(of: Double) -> Double`

It returns the natural log of the gamma function for `z`.

> *Note*: This function is used internally by the [spouge approximation](https://en.wikipedia.org/wiki/Spouge's_approximation) to compute large values.

```swift
import GammaFn

// Creating a simple `Double` value which we intend to pass to our Γ function–which is a static method from `Double`:

let simpleValue3: Double = 9.0
let resultValue3 = Double.gamma(for value: simpleValue3)
// => 10.64917311666183

// Accessing the property `logValueForGamma` from any `Double` value is valid as well:

let simpleValue4: Double = 112.0
let resultValue4 = simpleValue4.logValueForGamma
// => 415.0403783916892
```

## ⚖️ License

[GammaFn](https://github.com/ythecombinator/GammaFn) is distributed under
the MIT License, available in this repository.

All contributions are assumed to be also licensed under the same.
