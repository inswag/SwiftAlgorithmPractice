import UIKit

let line = (Int(readLine()!) ?? 0) / 10

switch line {
case 9, 10:
    print("A")
case 8:
    print("B")
case 7:
    print("C")
case 6:
    print("D")
default:
    print("F")
}
