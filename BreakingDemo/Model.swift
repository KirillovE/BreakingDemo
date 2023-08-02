//
//  Model.swift
//  BreakingDemo
//
//  Created by Eugene KIRILLOV on 01/08/2023.
//

import Foundation

class Model {
    let initialText = "Liberté"

    private let doIHaveTiketToParis = true
    private var pointer = 0
    private let lines = [
        "Liberté",
        "Égalité",
        "Fraternité",
        "Ou mort"
    ]

    func nextLine() -> String? {
        do {
            return try calculateLine()
        } catch {
            return nil
        }
    }

    private func calculateLine() throws -> String {
        if pointer < lines.index(before: lines.endIndex), doIHaveTiketToParis {
            pointer += 1
            return lines[pointer]
        } else {
            throw DemoError.zut
        }
    }
}

extension Model: CustomStringConvertible {
    var description: String {
        "Some description"
    }
}

extension Model: CustomDebugStringConvertible {
    var debugDescription: String {
        "Some debug description"
    }
}

enum DemoError: Error {
    case zut
}
