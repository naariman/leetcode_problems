func isPalindrome(_ x: Int) -> Bool {
    var newArr = Array(String(x))
    newArr.reverse()
    return newArr == Array(String(x))
}

isPalindrome(10)
