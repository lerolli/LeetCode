/*

Given two 1d vectors, implement an iterator to 
return their elements alternately.

Example:

Input:
v1 = [1,2]
v2 = [3,4,5,6] 

Output: [1,3,2,4,5,6]

Explanation: By calling  next repeatedly until hasNext returns false, 
the order of elements returned by next should be: [1,3,2,4,5,6].
*/

func iterator(_ v1: [Int], _ v2: [Int]) -> [Int] {
    var i = 0
    var j = 0
    var isV1 = true
    var result: [Int] = []

    while i < v1.count || j < v2.count {
        defer {
            isV1.toggle()
        }

        if isV1 {
            if i < v1.count {
                result.append(v1[i])
            }
            i += 1
            
        } else {
            if j < v2.count {
                result.append(v2[j])
            }
            j += 1
        }
    }
    return result
}

print(iterator([1,2], [3,4,5,6]))