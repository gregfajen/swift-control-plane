// swift-tools-version:5.2
import PackageDescription

let package = Package(
    
    name: "Protos",
    
    platforms: [
        .macOS(.v10_15)
    ],
    
    dependencies: [
        .package(url: "https://github.com/grpc/grpc-swift.git",
                 from: "1.0.0-alpha.12"),
//        .package(name: "AWSSDKSwift",
//                    url: "https://github.com/swift-aws/aws-sdk-swift.git",
//                 from: "4.6.0")
    ],
    
    targets: [

        .target(
            name: "Protos",
            dependencies: [
                .product(name: "GRPC", package: "grpc-swift")
            ]
        ),
        
//        .target(
//            name: "Plane",
//            dependencies: [
//                "Protos",
//                .product(name: "GRPC", package: "grpc-swift"),
////                .product(name: "EC2", package: "AWSSDKSwift")
//            ]
//        )
        
    ]
    
)
