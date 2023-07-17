/*
You are given two non-empty linked lists representing two 
non-negative integers. The most significant digit comes first 
and each of their nodes contains a single digit. 
Add the two numbers and return the sum as a linked list.

You may assume the two numbers do not contain any leading zero, 
except the number 0 itself.
*/
extension ListNode {
    func reverse() -> ListNode {
        var node: ListNode? = self
        var prev: ListNode? = nil

        while node != nil {
            let next = node?.next
            node?.next = prev
            prev = node
            node = next
        }
        return prev!
    }

    func toString() -> String {
        var node: ListNode? = self
        var result = ""
        while node != nil {
            result += "\(node?.val ?? 0),"
            node = node?.next
        }
        return result
    }
}


extension Array where Element == Int {
    func toList() -> ListNode? {
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
 
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var l1Node = l1?.reverse()
        var l2Node = l2?.reverse()

        var resultNode: ListNode? = ListNode()
        var tempNode = resultNode
        
        var tempValue = 0
        while l1Node != nil || l2Node != nil || tempValue != 0 {
            let l1Val = l1Node?.val ?? 0
            let l2Val = l2Node?.val ?? 0
            let sum = l1Val + l2Val + tempValue
            if sum >= 10 {
                tempNode?.val = sum % 10
                tempValue = sum / 10
            } else {
                tempNode?.val = sum
                tempValue = 0
            }

            l1Node = l1Node?.next
            l2Node = l2Node?.next

            if l1Node != nil || l2Node != nil || tempValue != 0 {
                tempNode?.next = ListNode()
                tempNode = tempNode?.next
            }
        }
        return resultNode?.reverse()
    }
}


let solution = Solution()
let result = solution.addTwoNumbers([1].toList(), [9,9].toList())

print(result?.toString() ?? "Lol")

class ListNode {
    var val: Int
    var next: ListNode?

    init(_ val: Int = 0, _ next: ListNode? = nil) {
        self.val = val
        self.next = next
    }
}