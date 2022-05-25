import Foundation

class Conference: Identifiable {
  let id: String = UUID().uuidString
  let name: String
  let location: String

  public init(name: String, location: String) {
    self.name = name
    self.location = location
  }
}
