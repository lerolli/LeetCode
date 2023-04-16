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

    func count() -> Int {
        var count = 0
        var currentList: ListNode? = self
        while currentList != nil {
            count += 1
            currentList = currentList?.next
        }
        
        return count
    }
}

class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard let count = head?.count() else { return nil }
        let middle = count / 2

        var head = head

        for _ in 0..<middle {
            head = head?.next
        }
        return head
    }
}