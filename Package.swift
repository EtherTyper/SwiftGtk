import PackageDescription

#if os(OSX)
    let gtkUrl = "https://github.com/EtherTyper/CGtk-OSX"
#elseif os(Linux)
    let gtkUrl = "https://github.com/EtherTyper/CGtk-Linux"
#else
    fatalError("Unsupported platform.")
#endif

let package = Package(
  name:  "SwiftGtk",
  dependencies: [
    .Package(url: gtkUrl, majorVersion: 1)
  ]
)
