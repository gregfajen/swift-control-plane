// swift-tools-version:5.2
import PackageDescription

let package = Package(
    
    name: "Plane",
    
    platforms: [
        .macOS(.v10_15)
    ],
    
    products: [
        .library(name: "Plane", targets: ["Plane"]),
        .library(name: "Protos", targets: ["Protos"])
    ],
    
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git",
                 from: "1.0.0-alpha.12")
    ],
    
    targets: [
        
        .target(
            name: "ProtoDependencies",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift")
            ]
        ),
        
        .target(
            name: "ProtoBase",
            dependencies: [
                "ProtoDependencies"
            ]
        ),
        
        .target(
            name: "ProtoMid",
            dependencies: [
                "ProtoBase"
            ]
        ),
        
        .target(
            name: "ProtoExt",
            dependencies: [
                "ProtoMid"
            ]
        ),
        
        .target(
            name: "ProtoNet",
            dependencies: [
                "ProtoExt"
            ]
        ),
        
        .target(
            name: "ProtoServices",
            dependencies: [
                "ProtoNet"
            ]
        ),
        
        .target(
            name: "Protos",
            dependencies: [
                "ProtoServices"
            ]
        ),
        
        .target(
            name: "Plane",
            dependencies: [
                "Protos"
            ],
            swiftSettings: [
                .unsafeFlags(["-cross-module-optimization"], .when(configuration: .release))
            ]
        )
        
    ]
    
)
