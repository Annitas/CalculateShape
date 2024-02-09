//
//  Triangle.swift
//  CalculateShape
//
//  Created by Anita Stashevskaya on 09.02.2024.
//

import Foundation

public struct Triangle: Shape {
    let sideA: Double
    let sideB: Double
    let sideC: Double
    
    func calculateArea() -> Double {
        let s = (sideA + sideB + sideC) / 2
        return sqrt(s * (s - sideA) * (s - sideB) * (s - sideC))
    }
    
    func isRightAngled() -> Bool {
        let sides = [sideA, sideB, sideC].sorted()
        return sides[0] * sides[0] + sides[1] * sides[1] == sides[2] * sides[2]
    }
}
