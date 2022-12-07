import UIKit

extension Double {
    func add(_ stringNum: String) -> Double? {
        if let value = Double(stringNum) {
            return self + value
        } else {
            return nil
        }
    }
}


let value1: Double? = 3.5.add("1.2")
let value3: Double? = 1.5.add("words")
