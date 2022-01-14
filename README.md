# Swift RSA Key Loader

## Requirements

* **iOS 9.0+**

## Installation

See the subsections below for details about the different installation methods.
1. [Swift Package Manager](#swift-package-manager)

### Swift Package Manager

1. Go to project
2. `File` → `Add Packages...`
3. Search for library, using URL: 
```
https://github.com/dmytriigolovanov/swift-rsa-key-loader
```
4. Set the `Dependency Rule` to `Up to Next Major Version`
5. `Add Package`

## Using

1. Import library to needed swift file.

```swift
import RSAKeyLoader
```
2. Add RSA key file to project (xcodeproj)
3. Load file with name and file extension (type)

Private Key
```swift
let fileName = "rsa_file_name"

do {
  let privateKey = try RSAKeyLoader.loadPrivateKey(fileName: fileName, fileType: .pem)
  // use private key
} catch {
  print(error
}
```

```swift
let fileName = "rsa_file_name"

do {
  let privateKey = try RSAKeyLoader.loadPublicKey(fileName: fileName, fileType: .pem)
  // use public key
} catch {
  print(error
}
```

## Supported file formats

| Version | PEM |
| :---: | :---: |
| 1.0.0 | + |

## License

The contents of this repository are licensed under the
[MIT License](https://github.com/dmytriigolovanov/swift-rsa-key-loader/blob/main/LICENSE).


