//
//  CalculateShapeTests.swift
//  CalculateShapeTests
//
//  Created by Anita Stashevskaya on 09.02.2024.
//

import XCTest
@testable import CalculateShape

final class CalculateShapeTests: XCTestCase {
    
    func testCircleAreaCalculation() {
            let circle = Circle(radius: 5)
            XCTAssertEqual(circle.calculateArea(), 78.54, accuracy: 0.01)
        }
        
        func testTriangleAreaCalculation() {
            let triangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
            XCTAssertEqual(triangle.calculateArea(), 6.0, accuracy: 0.01)
        }
        
        func testRightAngledTriangleCheck() {
            let rightTriangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
            XCTAssertTrue(rightTriangle.isRightAngled())
            
            let nonRightTriangle = Triangle(sideA: 2, sideB: 3, sideC: 4)
            XCTAssertFalse(nonRightTriangle.isRightAngled())
        }
    
        func testUnknowShapeCheck() {
            
            let rightTriangle = Triangle(sideA: 3, sideB: 4, sideC: 5)
            let circle = Circle(radius: 5)
            XCTAssertEqual(DontKnowShapeCalculator.calculateUnknownArea(of: rightTriangle), 6.0, accuracy: 0.01)
            XCTAssertEqual(DontKnowShapeCalculator.calculateUnknownArea(of: circle), 78.54, accuracy: 0.01)
        }
}
