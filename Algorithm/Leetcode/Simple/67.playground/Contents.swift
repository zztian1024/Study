import UIKit

/**
 给定两个二进制字符串，返回他们的和（用二进制表示）。
 输入为非空字符串且只包含数字 1 和 0
 
 示例 1:
 输入: a = "11", b = "1"
 输出: "100"
 
 示例 2:
 输入: a = "1010", b = "1011"
 输出: "10101"
 */

class Solution {
    func addBinary(_ a: String, _ b: String) -> String {
        var sum = 0, carry = 0, res = ""
        let aChars = Array(a), bChars = Array(b)
        var i = aChars.count - 1, j = bChars.count - 1
        
        while i >= 0 || j >= 0 || carry > 0 {
            sum = carry
            if i >= 0 {
                sum += Int(String(aChars[i]))!
                i -= 1
            }
            if j >= 0 {
                sum += Int(String(bChars[j]))!
                j -= 1
            }
            carry = sum / 2
            sum = sum % 2
            res = String(sum) + res
        }
        
        return res
    }
}

var s = Solution()
print(s.addBinary("11", "1"))//"100"
print(s.addBinary("1010", "1011"))//"10101"
print(s.addBinary("10100000100100110110010000010101111011011001101110111111111101000000101111001110001111100001101", "110101001011101110001111100110001010100001101011101010000011011011001011101111001100000011011110011"))

