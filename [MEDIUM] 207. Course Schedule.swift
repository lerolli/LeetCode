/*
There are a total of numCourses courses you have to take, 
labeled from 0 to numCourses - 1. You are given an array 
prerequisites where prerequisites[i] = [ai, bi] indicates 
that you must take course bi first if you want to take course ai.

For example, the pair [0, 1], indicates that to take course 0 
you have to first take course 1.

Return true if you can finish all courses. Otherwise, return false.
*/

class Solution {
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        var courseDict = [Int:[Int]]()
        var visitedCourseSet: Set = Set<Int>()
        
        for course in prerequisites {
            courseDict[course[0], default: []].append(course[1])
        }
        
        for course in courseDict.keys {
            if dfs(&visitedCourseSet, course, &courseDict) == false { return false}
        }
        return true
    }
    
    func dfs(_ visitedCourseSet: inout Set<Int>, _ course: Int, _ courseDict: inout [Int:[Int]]) -> Bool {
        if visitedCourseSet.contains(course) { return false }
        if courseDict[course] == [] { return true }
        
        visitedCourseSet.insert(course)
        
        for course in courseDict[course] ?? [] {
            if dfs(&visitedCourseSet, course, &courseDict) == false { return false }
        }
        
        visitedCourseSet.remove(course)
        courseDict[course] = []
        return true
    }
}
