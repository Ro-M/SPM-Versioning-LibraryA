import MyLibraryB

public struct MyLibraryA {
  public let MyLibraryBText = MyLibraryB().text
  public private(set) var text = "MyLibraryA"
  public init() {}
}
