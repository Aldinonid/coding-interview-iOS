//
//  PalindromeTest.swift
//  coding-interviewTests
//
//  Created by Aldino Efendi on 2022/01/03.
//

import XCTest

class PalindromeTest: XCTestCase {

	func isPalindrome(value: String) -> Bool {
		for i in 0..<value.count / 2 {
			let start = Array(value)[i]
			let end = Array(value)[(value.count - 1) - i]
			
			if start != end {
				return false
			}
		}
		
		return true
		
	}
	
	
	func testPalindrome() {
		XCTAssertTrue(isPalindrome(value: "a"))
		XCTAssertTrue(isPalindrome(value: "aba"))
		XCTAssertTrue(isPalindrome(value: "kodok"))
		XCTAssertTrue(isPalindrome(value: "hannah"))
		XCTAssertTrue(isPalindrome(value: ""))
		
		XCTAssertFalse(isPalindrome(value: "ab"))
		XCTAssertFalse(isPalindrome(value: "abab"))
		XCTAssertFalse(isPalindrome(value: "kodcok"))
		XCTAssertFalse(isPalindrome(value: "aldino"))
	}
	
}
