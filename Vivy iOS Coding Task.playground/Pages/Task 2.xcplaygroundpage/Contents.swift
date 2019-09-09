//:### 2. Create a function which will filter an array of VaccinationShots
//: Only include shots which have been taken in the last 10 years and sort by most recent.
//:
//: ------
//:
import Foundation
struct VaccinationShot {
  let diseaseName: String
  let yearLastTaken: Int
}

let vaccinationShots = [
  VaccinationShot(diseaseName: "Polio", yearLastTaken: 2010),
  VaccinationShot(diseaseName: "Measles", yearLastTaken: 2015),
  VaccinationShot(diseaseName: "Mumps", yearLastTaken: 2000),
  VaccinationShot(diseaseName: "Rubella", yearLastTaken: 2000),
  VaccinationShot(diseaseName: "Tetanus", yearLastTaken: 1978),
  VaccinationShot(diseaseName: "Whooping cough", yearLastTaken: 2009),
  VaccinationShot(diseaseName: "Cholera", yearLastTaken: 1999)
]

// Your solution here:

func filterVaccinationShots() -> [VaccinationShot] {
  
  let currentYear = Calendar.current.component(.year, from: Date())
  let filteredBooks = vaccinationShots.filter({$0.yearLastTaken >= (currentYear - 10) })
  let sortedBooks = filteredBooks.sorted(by: {$0.yearLastTaken > $1.yearLastTaken})
  return sortedBooks
}

filterVaccinationShots()
//:
//: ------
//:
//: [Previous](@previous)  [Next](@next)
