// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorGoogleAds",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorGoogleAds", targets: ["XMediatorGoogleAdsTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "12.14.0"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.167.0")),
    ],
    targets: [
        .target(
            name: "XMediatorGoogleAdsTarget",
            dependencies: [
                .target(name: "XMediatorGoogleAds"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
            ],
            path: "XMediatorGoogleAdsTarget",
            linkerSettings: [
                .linkedFramework("AdSupport"),
            ]
        ),
        .binaryTarget(
            name: "XMediatorGoogleAds",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorGoogleAds/XMediatorGoogleAds-12.14.0.8.zip",
            checksum: "6596c477c9fd4c0c3b551672b2b0dae0eb095127e2bee71313aa4cfe59795c19"
        ),
    ]
)
