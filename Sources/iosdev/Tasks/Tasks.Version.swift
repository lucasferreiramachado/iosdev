import Foundation
import ArgumentParser

struct Version: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "version",
        abstract: "Show the version of the tool."
    )

    func run() throws {
        print("1.0.0")
    }
}