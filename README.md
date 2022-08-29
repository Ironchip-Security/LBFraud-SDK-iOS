# LBFraudSDKiOS

A swift package as LBFraudSDK

# SwiftPackage

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

### Example
```swift
import LBFraudSDKiOS
...
let ironchipLBFraud = LBFraudSDK.init(apikey: "XXXXXX.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
//Call Ironchip Location Based Antifraud to Analyze transaction
//Host url (optional) you can send the url as nil the dafault enviroment was setted as production.
//TransactionID (required,unique): transaction identifier request for fraud results
//UserID (required): User identifier
//ExtraData (optional): extra information for analysis 
// {
//   "extra_value_1": "Example extra value 1",
//   "extra_value_2": 50,
//   "extra_value_3": [1,2,3]
// }
 
let data: [String: Any] = [
    "concept": "Book august",
    "amount": 60,
    "operation": "booking"
]

  let transaction: String = ironchipLBFraud.sendTransaction(url: "https://testing.transaction.lbfraud.ironchip.com/transaction", transactionId: "random_identifier_generated", userId: "john.doe@gmail.com", extraData: data)
```
