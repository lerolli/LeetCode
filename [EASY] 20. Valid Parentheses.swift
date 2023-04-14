class Solution {
    func isValid(_ s: String) -> Bool {
        var countBrackets1 = 0
        var countBrackets2 = 0
        var countBrackets3 = 0
        
        var stack: [Character] = []
        for character in s {
            switch character {
                case "(":
                    stack.append(")")
                case "{":
                    stack.append("}")
                case "[":
                    stack.append("]")
                default:
                    if stack.isEmpty || stack.removeLast() != character {
                        return false
                    }
            }
        }
        return stack.isEmpty
    }
}
