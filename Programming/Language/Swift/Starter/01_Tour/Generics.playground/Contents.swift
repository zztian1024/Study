import UIKit

/*
 Write a name inside angle brackets to make a generic function or type.
 */

func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item]{
    var result = [Item]()
    for _ in 0..<numberOfTimes {
        result.append(item)
    }
    
    return result
}

print(makeArray(repeating: "knock", numberOfTimes: 4))

var obj = 4
print(makeArray(repeating: obj, numberOfTimes: 5))

var dict = [String:Int]()
dict["Key"] = 10
dict["SomeKey"] = 100
print(makeArray(repeating: dict, numberOfTimes: 3))

/**
 You can make generic froms of functions and methods , as well as classes, enumerations, and structures
 */

enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}

var possibleInteger: OptionalValue<Int> = .none
possibleInteger = .some(100)
print(possibleInteger)

/**
 Use where right before the body to specify a list of requirements -- for example,
 to require the type to implement a protocol , to require two types to be the same,
 or to require a class to have a particular superclass.
 */

func anyCommonElements<T: Sequence, U: Sequence>(_ lhs: T, _ rhs: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

var res = anyCommonElements([1,2,3], [4])
print(res)

