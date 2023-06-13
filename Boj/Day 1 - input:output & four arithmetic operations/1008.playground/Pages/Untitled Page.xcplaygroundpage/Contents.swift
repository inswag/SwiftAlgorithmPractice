let line = readLine()!
let result = line
    .split(separator: " ")
    .map { Double($0) ?? 0 }

print(result[0] / result[1])
