func isValid(_ s: String) -> Bool {
    var isGood = true
    var stack: [Character] = []
    
    for character in s {
        if character == "[" || character == "(" || character == "{" {
            stack.append(character)
        } else if character == "]" || character == ")" || character == "}" {
            if stack.isEmpty {
                isGood = false
                break
                
            }
            var openBracket = stack.remove(at: stack.count - 1)
            
            if character == "]" && openBracket == "[" {
                continue
            }
            
            if character == ")" && openBracket == "(" {
                continue
            }
            
            if character == "}" && openBracket == "{" {
                continue
            }
            
            isGood = false
            break
        }
    }
    
    if isGood && stack.isEmpty {
        isGood = true
    } else {
        isGood = false
    }
    
    return isGood
}

isValid("{[")
