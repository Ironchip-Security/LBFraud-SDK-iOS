# LBFraudSDKiOS

A swift package as LBFraudSDK

# SwiftPackage

### upload to repo
the Package.swift must be on a root project,
to upload just commit into your public repo,
tag your commit and push the tag.

```bash
git tag 1.0.0
git push origin 1.0.0
```

### Setup
To be able to use This SwiftPackage you will need to add to the target of your app in Singing and Capabilities add **access Wifi Information**.

Then in the Target of the app in **info** tab you have to add the key values of location permission.

1. Privacy - Location Always and When In Use Usage Description, and insert the description as string
2. Privacy - Location When In Use Usage Description, and insert the description as string
3. Privacy - Location Always Usage Description, and insert the description as string

First of all you have to request Location Permission in your app

```swift
import CoreLocation

let locationManager = CLLocationManager()
locationManager.requestWhenInUseAuthorization()
``` 

To import this dependency, in xcode go to the root of your application for example ExampleApp.xcodeproj, at the top in **PROJECT** select ExampleApp item and go to the thrird tab, Package dependencies, select + button.

A pop up will open and in search or enter url copy the repositorie url and press add package button.

In this case https://gitlab.com/ironchip_dev/location_based_anti-fraud/mobility_team/ironchip_lbfraud_sdk_ios.git

A new window appears, in dependency rule you can select an exact version, a range of versions, a branch ... in this case to test it i choose exact version 1.0.0 and add the package finally to use it.

### Use in app
```swift
import LBFraudSDKiOS
...
let ironchipLBFraud = LBFraudSDK.init(apikey: "XXXXXX.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
//Call Ironchip Location Based Antifraud to Analyze transaction
//TransactionID (required,unique): transaction identifier request for fraud results
//UserID (required): User identifier
//ExtraData (optional): extra information for analysis 
// {
//   "concept": "Concept title",
//   "amount": 20,
// } two types of operations: login and transaction, if the operation is login send concept and empty amount
 
let data: [String: Any] = [
    "concept": "example1",
    "amount": "2",
    "operation": "transaction"
]

ironchipLBFraud.transactionPost(transactionId: "9273dghsg8hj", userId: "pepe", extraData: data)
```
