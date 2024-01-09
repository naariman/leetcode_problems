func search(_ nums: [Int], _ target: Int) -> Int {
    var hightIndex = nums.count - 1
    var lowIndex = 0
    
    while lowIndex <= hightIndex {
        var midIndex = (lowIndex + hightIndex) / 2
        
        if nums[midIndex] == target {
            return midIndex
        } else if nums[midIndex] < target {
            lowIndex = midIndex
        } else {
            hightIndex = midIndex
        }
        
    }
    
    return -1
}

search([1, 2, 3, 4, 5, 6], 4)

var a = 2
var b = 5
print(b / a)
