//:### 1. Parse JSON string into `Person` object and print the result
//:
//: ------
//:
import Foundation

let jsonString = """
{
  "person": {
    "name":"John",
    "age":30,
    "car":null
  }
}
"""

struct Person : Codable {
  let name : String?
  let age : Int?
  let car : String?
  
  enum CodingKeys: String, CodingKey {
    
    case name = "name"
    case age = "age"
    case car = "car"
  }
  
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    name = try values.decodeIfPresent(String.self, forKey: .name)
    age = try values.decodeIfPresent(Int.self, forKey: .age)
    car = try values.decodeIfPresent(String.self, forKey: .car)
  }
  
}




// Your solution here:

struct PersonInfo : Codable {
  let person : Person?
  
  enum CodingKeys: String, CodingKey {
    case person = "person"
  }
  init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    person = try values.decodeIfPresent(Person.self, forKey: .person)
  }
}

do {
  print(jsonString  )
  let decoder = JSONDecoder()
  let data = jsonString.data(using: .utf8)!
  let personObject = try decoder.decode(PersonInfo.self, from: data)
  print (personObject)
  print(personObject.person?.age ?? "")
  print(personObject.person?.car ?? "")
  print(personObject.person?.name ?? "")
} catch {
  print(error)
}
//:
//: ------
//:
//: [Previous](@previous)  [Next](@next)
