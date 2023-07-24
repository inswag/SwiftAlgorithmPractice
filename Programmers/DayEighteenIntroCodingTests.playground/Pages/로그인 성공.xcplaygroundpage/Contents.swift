//: [Previous](@previous)

import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    return db.filter { id_pw == $0 }.count == 1 ? "login" : issueFailReason(id_pw, db)
}

func issueFailReason(_ id_pw: [String], _ db:[[String]]) -> String {
    let id = db.filter { id_pw.first! == $0.first! }
    let pw = db.filter { id_pw.last! == $0.last! }
    return id.count == 0 ? "fail" : id_pw.last! != id.first!.last! ? "wrong pw" : "fail"
}
