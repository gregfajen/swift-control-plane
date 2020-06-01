// swift-tools-version:5.2
import PackageDescription

let package = Package(
    
    name: "Plane",
    
    platforms: [
        .macOS(.v10_15)
    ],
    
    products: [
        .library(name: "Plane", targets: ["plane"])
    ],
    
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git",
                 from: "1.0.0-alpha.12")
    ],
    
    targets: [
        
        .target(
            name: "Protos",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift")
            ]
        ),
        
        .target(
            name: "Plane",
            dependencies: [
                "Protos",
                .product(name: "GRPC", package: "grpc-swift")
            ]
        )
        
    ]
    
)s
