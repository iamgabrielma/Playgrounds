import UIKit
import PlaygroundSupport

// 2.1
var position: (x: Int, y: Int) = (0,0)
var finalAbsPosition: Int
var submarineMovements: [String] = []
// 2.2
var aim = 0

do {
    guard let fileUrl = Bundle.main.url(forResource: "input-day2", withExtension: "txt") else { fatalError() }
    let text = try String(contentsOf: fileUrl, encoding: String.Encoding.utf8)
    submarineMovements = text.components(separatedBy: "\n")
} catch {
    print(error)
}

for item in submarineMovements {
    if item.starts(with: "f") {
        // Forward
        position.x += Int(item.suffix(1))!
        position.y += Int(item.suffix(1))! * aim
    } else if item.starts(with: "d") {
        // Down
        aim += Int(item.suffix(1))!
    } else if item.starts(with: "u") {
        // Up
        aim -= Int(item.suffix(1))!
    }
}

finalAbsPosition = position.x * abs(position.y)

print(position)
print("finalAbsPosition \(finalAbsPosition)")
print("aim \(aim)")
