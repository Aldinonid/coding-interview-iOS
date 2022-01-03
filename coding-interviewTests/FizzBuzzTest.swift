//
//  FizzBuzzTest.swift
//  coding-interviewTests
//
//  Created by Aldino Efendi on 2022/01/03.
//

import XCTest

class FizzBuzzTest: XCTestCase {

	func fizzBuzz(value: Int) {
		for i in 0 ... value {
			if (i % 3 == 0 && i % 5 == 0) {
				print ("FizzBuzz")
			} else if (i % 3 == 0) {
				print("Fizz")
			} else if (i % 5 == 0) {
				print("Buzz")
			} else {
				print(i)
			}
		}
		
	}
	
	func testFizzBuzz() {
		fizzBuzz(value: 100)
	}
	
}
