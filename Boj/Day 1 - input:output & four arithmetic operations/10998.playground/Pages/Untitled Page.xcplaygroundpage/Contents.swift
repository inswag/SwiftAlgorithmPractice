let line = readLine()!
let result = line
    .split(separator: " ")
    .map { Int($0) ?? 0 }
    .reduce(1, *)

print(result)
