final class NestedIterator {
    private var arr = [Int]()

    init(_ nestedList: [NestedInteger]) {
        self.arr = self.transformToArray(nestedList).reversed()
    }
    
    private func transformToArray(_ nestedList: [NestedInteger]) -> [Int] {
        var result = [Int]()
        for list in nestedList {
            if list.isInteger() {
                result.append(list.getInteger())
            } else {
                result += transformToArray(list.getList())
            }
        }
        return result
    }
    
    func next() -> Int {
        arr.removeLast()
    }
    
    func hasNext() -> Bool {
        !arr.isEmpty
    }
}
