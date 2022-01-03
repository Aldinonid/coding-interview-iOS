//
//  FactorialTest.swift
//  coding-interviewTests
//
//  Created by Aldino Efendi on 2022/01/03.
//

import XCTest

class FactorialTest: XCTestCase {

	func factorial(value: Int) -> Int {
		if value <= 0 { return 1 }
		var result: Int = 1
		for i in (1...value).reversed() {
			result *= i
		}
		return result
	}
	
	func factorialRecursive(value: Int) -> Int {
		if value <= 0 {
			return 1
		} else {
			return value * factorialRecursive(value: value - 1)
		}
	}
	
	func factorialTailRecursive(total: Int, value: Int) -> Int {
		if value <= 0 {
			return total
		} else {
			return factorialTailRecursive(total: total * value, value: value - 1)
		}
	}
	
	func testFactorial() {
		XCTAssertEqual(1, factorial(value: 0))
		XCTAssertEqual(1, factorial(value: 1))
		XCTAssertEqual(2, factorial(value: 2))
		XCTAssertEqual(6, factorial(value: 3))
		XCTAssertEqual(24, factorial(value: 4))
		XCTAssertEqual(120, factorial(value: 5))
		XCTAssertEqual(720, factorial(value: 6))
	}
	
	func testFactorialRecursive() {
		XCTAssertEqual(1, factorialRecursive(value: 0))
		XCTAssertEqual(1, factorialRecursive(value: 1))
		XCTAssertEqual(2, factorialRecursive(value: 2))
		XCTAssertEqual(6, factorialRecursive(value: 3))
		XCTAssertEqual(24, factorialRecursive(value: 4))
		XCTAssertEqual(120, factorialRecursive(value: 5))
		XCTAssertEqual(720, factorialRecursive(value: 6))
	}
	
	func testFactorialTailRecursive() {
		XCTAssertEqual(1, factorialTailRecursive(total: 1, value: 0))
		XCTAssertEqual(1, factorialTailRecursive(total: 1, value: 1))
		XCTAssertEqual(2, factorialTailRecursive(total: 1, value: 2))
		XCTAssertEqual(6, factorialTailRecursive(total: 1, value: 3))
		XCTAssertEqual(24, factorialTailRecursive(total: 1, value: 4))
		XCTAssertEqual(120, factorialTailRecursive(total: 1, value: 5))
		XCTAssertEqual(720, factorialTailRecursive(total: 1, value: 6))
	}
	
}
