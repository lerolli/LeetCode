/* 
* Для себя
* Решил использовать reduce, потому что идеально тут подходит. 
* После reduce применяю max() и получаю максимальное значение.
* Задачка оказалась простой
*/

class Solution {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map { $0.reduce(0, +) }.max() ?? 0
    }
}