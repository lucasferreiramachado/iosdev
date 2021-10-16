import Foundation
import ArgumentParser

struct Install: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "install",
        abstract: "Install this tool for running globally."
    )

    func run() throws {
        try runShell("swift build -c release")
        try runShell("install .build/release/iosdev /usr/local/bin/iosdev")
    }
}

struct Uninstall: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "uninstall",
        abstract: "Uninstall this tool and remove from system."
    )

    func run() throws {
        try runShell("rm -f /usr/local/bin/iosdev")
    }
}
