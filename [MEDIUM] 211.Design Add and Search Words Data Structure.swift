private final class TrieNode: Hashable, Equatable {

    var value: Character
    var isTerminal: Bool
    var children: [Character: TrieNode] = [:]

    init(_ value: Character, isTerminal: Bool = false) {
        self.value = value
        self.isTerminal = isTerminal
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(value)
    }

    static func ==(lhs: TrieNode, rhs: TrieNode) -> Bool {
        return lhs.value == rhs.value
    }
}

class WordDictionary {

    private var foundWordsCache: [String: Bool] = [:]
    private var root: TrieNode = TrieNode("R")
    private var needToUpdateCache: Bool = false

    func addWord(_ word: String) {
        var current = root
        for c in word {
            if current.children[c] == nil {
                current.children[c] = TrieNode(c)
            }
            current = current.children[c]!
        }
        current.isTerminal = true
        needToUpdateCache = true
    }

    func search(_ word: String) -> Bool {
        let _word = Array(word)
        guard !needToUpdateCache else {
            foundWordsCache = [:]
            foundWordsCache[word] = _search(_word)
            needToUpdateCache = false
            return foundWordsCache[word]!
        }

        if let wasFound = foundWordsCache[word] {
            return wasFound
        }

        foundWordsCache[word] = _search(_word)
        return foundWordsCache[word]!
    }

    private func _search(_ word: [Character]) -> Bool {
        let word = Array(word)
        func dfs(j: Int, root: TrieNode) -> Bool {
            var current = root

            for i in j..<word.count {
                let c = word[i]

                if c == "." {
                    for child in current.children.values {
                        if dfs(j: i + 1, root: child) {
                            return true
                        }
                    }
                    return false
                } else {
                    if current.children[c] == nil {
                        return false
                    }
                    current = current.children[c]!
                }
            }

            return current.isTerminal
        }
        return dfs(j: 0, root: root)
    }
}
