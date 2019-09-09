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
        return
      }
      UserDefaults.standard.set(name, forKey: "myAmazingLocation")
    }
  }
}

import XCTest
class PlacemarkTests: XCTestCase {
  // Your tests here
}

//:
//: ------
//:
PlacemarkTests.defaultTestSuite.run()
//:
//: ------
//:
//: [Previous](@previous)  [Next](@next)
