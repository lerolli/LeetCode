class ListNode {
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
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var currentL1 = l1
        var currentL2 = l2
        
        var tempList: ListNode? = ListNode()
        var currentList = tempList
        
        var i = 0
        var additionalNumber = 0
        var maxLength = max(countList(list: l1), countList(list: l2))
        while i < maxLength || additionalNumber != 0 {
            tempList?.val += additionalNumber
            additionalNumber = 0
            
            var sum = (tempList?.val ?? 0) + (currentL1?.val ?? 0) + (currentL2?.val ?? 0)
            if sum >= 10 {
                sum = sum % 10
                additionalNumber = 1
            } else {
                additionalNumber = 0
            }
            
            tempList?.val = sum
            if i + 1 < maxLength || additionalNumber != 0 {
                tempList?.next = ListNode()
                tempList = tempList?.next
                currentL1 = currentL1?.next
                currentL2 = currentL2?.next
            }
            
            i += 1
        }
        tempList?.next = nil
        return currentList
    }
    
    func countList(list: ListNode?) -> Int {
        var count = 0
        var currentList = list
        while currentList != nil {
            count += 1
            currentList = currentList?.next
        }
        return count
    }
    
    func listToString(list: ListNode?) -> String {
        var stringList = ""
        var currentList = list
        while currentList != nil {
            stringList += String(currentList?.val ?? 0)
            currentList = currentList?.next
        }
        return stringList
    }
    
    func arrayToListNode(array: [Int]) -> ListNode? {
        var tempNode: ListNode? = ListNode()
        var currentNode = tempNode
        var i = 0
        array.forEach { element in
            tempNode?.val = element
            if i + 1 < array.count {
                tempNode?.next = ListNode()
                tempNode = tempNode?.next
            }
            
            i += 1
        }
        return currentNode
    }
}

let solution = Solution()
let l1 = solution.arrayToListNode(array: [9,9,9,9,9,9,9])
let l2 = solution.arrayToListNode(array: [9,9,9,9])
solution.listToString(list: solution.addTwoNumbers(l1, l2))

