import Foundation
import ShellOut

func runShell(_ command: String, continueOnError: Bool = false) throws {
    do {
        try shellOut(
            to: command,
            outputHandle: .standardOutput,
            errorHandle: .standardError
        )
    } catch {
        if !continueOnError {
            throw ShellError()
        }
    }
}

struct ShellError: Error, CustomStringConvertible {
    var description: String {
        "Failed when running shell command"
    }
}
