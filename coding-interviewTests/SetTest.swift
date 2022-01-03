//
//  SetTest.swift
//  coding-interviewTests
//
//  Created by Aldino Efendi on 2022/01/03.
//

import XCTest

class SetTest: XCTestCase {

	class Set {
		var total: Int = 0
		var array: [String] = ["", "", "", "", "", "", "", "", "", ""]
		
		func add(value: String) -> Bool {
			if contains(value: value) {
				return false
			} else {
				array[total] = value
				total += 1
				return true
			}
		}
		
		func contains(value: String) -> Bool {
			for i in array {
				if value == i {
					return true
				}
			}
			return false
		}
		
		func size() -> Int {
			return total
		}
		
		func remove(value: String) -> Bool {
			if contains(value: value) {
				let indexRemoved = array.firstIndex(of: value)
				for i in indexRemoved! ..< total {
					array[i] = array[i + 1]
				}
				total -= 1
				return true
			} else {
				return false
			}
		}
		
	}
	
	
	func testAdd() {
		let set = Set()
		XCTAssertTrue(set.add(value: "Aldino"))
		XCTAssertFalse(set.add(value: "Aldino"))
		XCTAssertTrue(set.add(value: "Efendi"))
		XCTAssertFalse(set.add(value: "Efendi"))
	}
	
	func testContains() {
		let set = Set()
		XCTAssertTrue(set.add(value: "Aldino"))
		XCTAssertTrue(set.add(value: "Efendi"))
		
		XCTAssertTrue(set.contains(value: "Aldino"))
		XCTAssertTrue(set.contains(value: "Efendi"))
		XCTAssertFalse(set.contains(value: "Shinovvibu"))
	}
	
	func testSize() {
		let set = Set()
		XCTAssertEqual(0, set.size())
		
		XCTAssertTrue(set.add(value: "Aldino"))
		XCTAssertEqual(1, set.size())
		
		XCTAssertFalse(set.add(value: "Aldino"))
		XCTAssertEqual(1, set.size())
		
		XCTAssertTrue(set.add(value: "Efendi"))
		XCTAssertEqual(2, set.size())
	}
	
	func testRemove() {
		let set = Set()
		XCTAssertTrue(set.add(value: "Aldino"))
		XCTAssertTrue(set.add(value: "Efendi"))
		XCTAssertTrue(set.add(value: "Aldinonid"))
		XCTAssertTrue(set.add(value: "Shinovvibu"))
		XCTAssertEqual(4, set.size())
		
		XCTAssertTrue(set.remove(value: "Efendi"))
		XCTAssertEqual(3, set.size())
		XCTAssertFalse(set.remove(value: "Efendi"))
		XCTAssertEqual(3, set.size())
		
		XCTAssertTrue(set.remove(value: "Shinovvibu"))
		XCTAssertEqual(2, set.size())
	}
	
}
