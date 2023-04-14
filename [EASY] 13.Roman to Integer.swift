import Foundation

class Solution {
    func romanToInt(_ s: String) -> Int {
        var sum = 0
        var i = 0
        while i < s.count {
            
            let currentIndex = String.Index(utf16Offset: i, in: s)
            let element = s[currentIndex]
            
            var nextIndex: String.Index
            var nextElement: Character = "0"
            if i + 1 < s.count {
                nextIndex = String.Index(utf16Offset: i + 1, in: s)
                nextElement = s[nextIndex]
            }
            switch element {
            case "I":
                switch nextElement {
                case "V":
                    sum += 4
                    i += 1
                case "X":
                    sum += 9
                    i += 1
                default:
                    sum += 1
                }
            case "V":
                sum += 5
            case "X":
                switch nextElement {
                case "L":
                    sum += 40
                    i += 1
                case "C":
                    sum += 90
                    i += 1
                default:
                    sum += 10
                }
            case "L":
                sum += 50
            case "C":
                switch nextElement {
                case "D":
                    sum += 400
                    i += 1
                case "M":
                    sum += 900
                    i += 1
                default:
                    sum += 100
                }
            case "D":
                sum += 500
            case "M":
                sum += 1000
            default:
                break
            }
            i += 1
        }
        return sum
    }
}

var solution = Solution()
solution.romanToInt("MCMXCIV")
