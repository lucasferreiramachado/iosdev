import Foundation
import ArgumentParser

let VERBOSE = false

struct iosdev: ParsableCommand {
    static let configuration = CommandConfiguration(
        commandName: "iosdev",
        abstract: "An automation task runner for iOS Development infrastructure.",
        subcommands: [
            Install.self, 
            Uninstall.self]
    )
}

iosdev.main()
