import Foundation
import Poppler

let version = getVersionString()
print("Poppler verison is \(version)")

let file = FileManager()
    .homeDirectoryForCurrentUser
    .appendingPathComponent("Desktop")
    .appendingPathComponent("test.pdf")

if let document = Document(file: file) {
    print("Number of pages in \(file.lastPathComponent) is \(document.pages)")
} else {
    print("File \(file.lastPathComponent) is invalid or missing.")
}
