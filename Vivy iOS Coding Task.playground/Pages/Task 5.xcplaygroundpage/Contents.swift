//:### 5. Calculate the sum of numbers
//: Numbers are provided by these four functions:
//: - first
//: - second
//: - third
//: - fourth
//:
//: Result should be returned on main thread.
//:
//: ------
//:
import Foundation

var randomTime: Int {
  return Int.random(in: 0...1000)
}

func first(completion: @escaping (Int) -> Void) {
  DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(randomTime)) {
    completion(1)
  }
}

func second(completion: @escaping (Int) -> Void) {
  DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(randomTime)) {
    completion(2)
  }
}

func third(completion: @escaping (Int) -> Void) {
  DispatchQueue(label: "anotherThread").async {
    completion(3)
  }
}

func fourth(completion: @escaping (Int) -> Void) {
  DispatchQueue.main.asyncAfter(deadline: .now() + .milliseconds(randomTime)) {
    completion(4)
  }
}

import PlaygroundSupport
PlaygroundPage.current.needsIndefiniteExecution = true

// Your solution here:

third { thirdNum in
  first(completion: { firstNum in
    second(completion: { secondNum in
      fourth(completion: { fourthNum in
        let sum = firstNum + secondNum + thirdNum + fourthNum
      })
    })
  })
}

//:
//: ------
//:
//: [Previous](@previous)
