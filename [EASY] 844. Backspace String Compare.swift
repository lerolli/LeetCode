final class Solution {
    func backspaceCompare(_ s: String, _ t: String) -> Bool {
        getString(s) == getString(t)
    }

    private func getString(_ string: String) -> String {
        var stringArray: [Character] = []
        for character in string {
            if character == "#" && !stringArray.isEmpty {
                stringArray.removeLast()
            } else if character != "#" {
                stringArray.append(character)
            }
        }
        return String(stringArray)
    }
}

print(Solution().backspaceCompare("y#fo##f", "y#f#o##f"))