//:### 3. Construct the distance text such that it can be appropriately displayed on a road sign
//: For more context expand the Assistant Editor to see the Live View.
//: ![ae](assistant_editor.png)
//:
//: ------
//:
let distanceToNextDoctor = 5650.0  // in meters
var distanceText = ""

// Your solution here:



//:
//: ------
//:
import PlaygroundSupport
distanceText = String(distanceToNextDoctor)
PlaygroundPage.current.liveView = RoadSignView(distanceText: distanceText)
//:
//: ------
//:
//: [Previous](@previous)  [Next](@next)
