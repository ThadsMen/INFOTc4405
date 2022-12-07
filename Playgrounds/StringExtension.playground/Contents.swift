import UIKit

extension String {
    func add(_ number: Int) -> Int? {
        if let string = Int(self) {
            return string + number
        } else {
            return nil
        }
    }
}


let x:Int? = "5".add(100)
let y:Int? = "-2".add(2)

let z:Int? = "hello world".add(1)
