import UIKit
import PlaygroundSupport

// AOC 1.1
var seaFloorDepths: [String]
var intArray: [Int]?
var count = 0
// AOC 1.2
var slidingWindowCount = 0
var depth1 = 0
var depth2 = 0
var newSlidingWindowArray: [Int] = []

do {
    guard let fileUrl = Bundle.main.url(forResource: "input", withExtension: "txt") else { fatalError() }
    let text = try String(contentsOf: fileUrl, encoding: String.Encoding.utf8)
    seaFloorDepths = text.components(separatedBy: "\n")
    intArray = seaFloorDepths.compactMap{ Int($0) }
    print(intArray?.count ?? 0)
} catch {
    print(error)
}

// 1.1
for (i, _) in intArray!.enumerated() where i != 0 {
    if intArray![i] > intArray![i-1]{
        count+=1
    }
}
// 1.2
for (i, _) in intArray!.enumerated() where i < intArray!.count - 3 {
    depth1 = intArray![i] + intArray![i+1] + intArray![i+2]
    depth2 = intArray![i + 1] + intArray![i+2] + intArray![i+3]
    if depth2 > depth1 {
        slidingWindowCount+=1
    }
}

print(count)
print(slidingWindowCount)
