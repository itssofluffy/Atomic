import PackageDescription

let package = Package(
    name: "Atomic",
    dependencies: [
        .Package (
            url:          "https://github.com/itssofluffy/ISFLibrary.git",
            majorVersion: 0
        ),
        .Package (
            url:          "https://github.com/itssofluffy/Mutex.git",
            majorVersion: 0
        )
    ]
)
