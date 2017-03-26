import PackageDescription

let package = Package(
    name: "Atomic",
    dependencies: [
        .Package (url: "https://github.com/itssofluffy/ISFLibrary.git", majorVersion: 0),
        .Package (url: "https://github.com/itssofluffy/Collections.git", majorVersion: 0),
        .Package (url: "https://github.com/itssofluffy/Mutex.git", majorVersion: 0)
    ]
)

let staticLibrary = Product(
    name:    "Atomic",
    type:    .Library(.Static),
    modules: ["Atomic"]
)

let dynamicLibrary = Product(
    name:    "Atomic",
    type:    .Library(.Dynamic),
    modules: ["Atomic"]
)

products.append(staticLibrary)
products.append(dynamicLibrary)
