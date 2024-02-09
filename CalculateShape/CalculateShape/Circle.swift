//
//  Circle.swift
//  CalculateShape
//
//  Created by Anita Stashevskaya on 09.02.2024.
//

import Foundation

struct Circle: Shape {
    let radius: Double
    
    func calculateArea() -> Double {
        return Double.pi * radius * radius
    }
}
