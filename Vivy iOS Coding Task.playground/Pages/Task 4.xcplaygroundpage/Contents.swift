//:### 4. Test the placemark storage object
//: Implementation of `PlacemarkStorage` can be modified to support testability as long as it provides the same functionality. Test as much as is meaningful for you.
//:
//: ------
//:
import CoreLocation

class PlacemarkStorage {
  func storeName(for location: CLLocation) {
    CLGeocoder().reverseGeocodeLocation(location) { placemarks, error in
      guard let name = placemarks?.first?.name else {
        print(placemarks?.first?.name!)
        return
      }
      UserDefaults.standard.set(name, forKey: "myAmazingLocation")
    }
  }
}

import XCTest
class PlacemarkTests: XCTestCase {
  // Your tests here
  var placemarkTest: PlacemarkStorage!
  
  override func setUp() {
    super.setUp()
    placemarkTest = PlacemarkStorage()
  }
  
  
  func testStoreName() {
    placemarkTest.storeName(for: CLLocation(latitude: 30.206268, longitude: 31.104092))
    XCTAssertEqual(
  }
//  placemarkTest.
//   XCTAssertEqual(sut.scoreRound, 95, "Score computed from  guess is wrong")
}

//:
//: ------
//:
PlacemarkTests.defaultTestSuite.run()
//:
//: ------
//:
//: [Previous](@previous)  [Next](@next)
