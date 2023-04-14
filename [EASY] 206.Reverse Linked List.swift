final class ListNode {
    var val: Int
    var next: ListNode?
    
    init(
        _ val: Int = 0,
        _ next: ListNode? = nil
    ) {
        self.val = val
        self.next = next
    }
}

extension ListNode {
    func toArray() -> [Int] {
        var values: [Int] = []
        var currentList: ListNode? = self
        while currentList != nil {
            if let value = currentList?.val {
                values.append(value)
            }
            currentList = currentList?.next
        }
        
        return values
    }
}


final class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else { return nil }
        var values = head.toArray()
        values = values.reversed()
        
        
        return values.toListNode()
    }
}

extension Array where Element == Int {
    func toListNode() -> ListNode? {
        var tempNode: ListNode? = ListNode()
        var currentNode = tempNode
        var i = 0
        self.forEach { element in
            tempNode?.val = element
            if i + 1 < self.count {
                tempNode?.next = ListNode()
                tempNode = tempNode?.next
            }

            i += 1
        }
        return currentNode
    }
}

var solution = Solution()
solution.reverseList(ListNode())
