func isAlienSorted(_ words: [String], _ order: String) -> Bool {
    let characters = Array(order)
    var rightArray: [String] = []
    
    for character in characters {
        for word in words {
            if word.first == character {
                rightArray.append(word)
            }
        }
    }
    
    return words == rightArray
}

let words = ["hello","leetcode"]
let order = "hlabcdefgijkmnopqrstuvwxyz"

//isAlienSorted(words, order)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    for i in 0...nums.count - 1 {
        if let idx = nums.firstIndex(of: target - nums[i]), idx != i {
            return [idx, i]
        }
    }

    return []
}
let nums = [3,2,4]
let target = 6
twoSum(nums, target)


func containsDuplicate(_ nums: [Int]) -> Bool {
    Set(nums).count != nums.count
 }

func isAnagram(_ s: String, _ t: String) -> Bool {
    let ss = Array(s)
    let tt = Array(t)
    var dictS: [Character: Int] = [:]
    var dictT: [Character: Int] = [:]
    
    for s in ss {
        if let existingValue = dictS[s] {
            
            dictS[s] = existingValue + 1
        } else {
            dictS[s] = 1
        }
    }
    
    for t in tt {
        if let existingValue = dictT[t] {
            dictT[t] = existingValue + 1
        } else {
            dictT[t] = 1
        }
    }

    
    return dictS == dictT
}

isAnagram(
    "anagram",
    "nagaram"
)
