//
//  Model.swift
//  BreakingDemo
//
//  Created by Eugene KIRILLOV on 01/08/2023.
//

import Foundation

struct Model {
    let initialText = "Liberté"
    
    private var pointer = 0
    private let lines = [
        "Liberté",
        "Égalité",
        "Fraternité",
        "Ou mort"
    ]

    mutating func nextLine() -> String? {
        do {
            return try calculateLine()
        } catch {
            return nil
        }
    }

    private mutating func calculateLine() throws -> String {
        if pointer >= lines.index(before: lines.endIndex) {
            throw DemoError.oops
        } else {
            pointer += 1
            return lines[pointer]
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
    case oops
}
