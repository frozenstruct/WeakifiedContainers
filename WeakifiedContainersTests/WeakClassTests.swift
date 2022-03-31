//
//  WeakClassTests.swift
//  WeakifiedContainersTests
//
//  Created by Dmitry Aksyonov on 27.03.2022.
//

import XCTest

final class WeakClassTests: XCTestCase {

	// MARK: SUT

	var sut: WeakifiedClass<Foo>!

	// MARK: Tests

	func testObjectsAreNilAfterLocalScope() {

		// Arrange

		var weakPointersArray = [WeakifiedClass<Foo>]()
		var arrayOfFoos = makeArrayOfFoos()

		// Act

		arrayOfFoos?.forEach({
			let a = WeakifiedClass<Foo>(withRefType: $0)
			weakPointersArray.append(a)
		})

		arrayOfFoos = nil

		// Assert

		weakPointersArray.forEach {
			XCTAssertNil($0.object)
		}
	}

	func testWeakRefIsNilAfterStrongRemoval() {

		// Arrange

		let wrapper = WeakifiedClass<Foo>.init(withRefType: Foo(0))
		var objectRef = wrapper.object
		weak var objectWeakRef = objectRef

		// Act

		objectRef = nil

		// Assert

		XCTAssertNil(objectWeakRef)
	}
}

extension WeakClassTests {

	func makeArrayOfFoos() -> [Foo]? {
		(0..<10).map { Foo($0) }
	}
}
