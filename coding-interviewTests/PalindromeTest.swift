//
//  PalindromeTest.swift
//  coding-interviewTests
//
//  Created by Aldino Efendi on 2022/01/03.
//

import XCTest

class PalindromeTest: XCTestCase {

	func isPalindrome(value: String) -> Bool {
		let len = value.count / 2
		
		for i in 0..<len {
			let start = value.index(value.startIndex, offsetBy: i)
			let end = value.index(value.endIndex, offsetBy: (i * -1) - 1)
			if value[start] != value[end] {
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
