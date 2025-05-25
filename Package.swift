// swift-tools-version: 6.1

import PackageDescription

let package = Package(
    name: "miniupnp",
    products: [
        .library(
            name: "miniupnpc",
            targets: [
                "miniupnpc",
            ],
        ),
    ],
    targets: [
        .target(
            name: "miniupnpc",
            path: "miniupnpc",
            sources: [
                "src/igd_desc_parse.c",
                "src/miniupnpc.c",
                "src/minixml.c",
                "src/minisoap.c",
                "src/minissdpc.c",
                "src/miniwget.c",
                "src/upnpcommands.c",
                "src/upnpdev.c",
                "src/upnpreplyparse.c",
                "src/upnperrors.c",
                "src/connecthostport.c",
                "src/portlistingparse.c",
                "src/receivedata.c",
                "src/addr_is_reserved.c",
            ],
            resources: [
                .copy("LICENSE"),
            ],
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath(""),
                .headerSearchPath("SPM"),
            ],
        ),
    ]
)
