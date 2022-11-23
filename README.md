# LBFraudSDKiOS

A swift package as LBFraudSDK

# SwiftPackage

### Setup

#### Supported Versions

| Platform | Suported versions |
| --- | --- |
| iOS | 13.0+ |

To be able to use This SwiftPackage you will need to add to the target of your app in Singing and Capabilities add **access Wifi Information**.

Then in the Target of the app in **info** tab you have to add the key values of location permission.

1. Privacy - Location Always and When In Use Usage Description, and insert the description as string
2. Privacy - Location When In Use Usage Description, and insert the description as string
3. Privacy - Location Always Usage Description, and insert the description as string
4. LSApplicationQueriesSchemes, and insert the description (this permission is to be able to know if the device is jailbroken)

First of all you have to request Location Permission in your app

```swift
import CoreLocation

let locationManager = CLLocationManager()
locationManager.requestWhenInUseAuthorization()
``` 

To import this dependency, in xcode go to the root of your application for example ExampleApp.xcodeproj, at the top in **PROJECT** select ExampleApp item and go to the thrird tab, Package dependencies, select + button.

A pop up will open and in search or enter url copy the repositorie url and press add package button.

In this case https://github.com/Ironchip-Security/LBFraud-SDK-iOS.git

A new window appears, in dependency rule you can select an exact version, a range of versions, a branch ... in this case to test it i choose exact version 1.2.0 and add the package finally to use it.

### Usage
```swift
import LBFraudSDKiOS
...

// Replace apikey with the desired generated api key.
let ironchipLBFraud = LBFraudSDK.init(apikey: "XXXXXX.XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
// In case you desire to target a diferent enviroment:
// let ironchipLBFraud = LBFraudSDK.init(apikey: "XXXXXX.XXXXXXXXXXXXXXXXXXXXX", environment: Environment.Testing)

//public enum Environment: String {
//    case Production = ""
//    case Testing = "testing."
//    case Development = "dev."
//}

//Call Ironchip Location Based Antifraud to Analyze transaction

let extraData: [String: Any] = [
    "concept": "Book august",
    "amount": 60,
    "operation": "booking"
]

//TransactionID (required,unique): transaction identifier request for fraud results
//UserID (required): User identifier
//ExtraData (optional): extra information for analysis 
// The sendTransaction can be provided with 2 callbacks, one is executed when the transaction is finished
// and the other one is called in case an error did occure during the transaction process.
ironchipLBFraud.sendTransaction(transactionId: "random_identifier_generated", userId: "john.doe@gmail.com", extraData: extraData, finish: {
        // Add here any code you want to be executed after the transaction has finished.
    }, onError: {(err) in
        // Add here any code you want to perform in case of an error
        // during the transaction.
        
        // example:
        //if(err is TransactionError) {
        //    let transactionError = err as! TransactionError

        //    print(transactionError.traceability_id)
        //    print(transactionError.message)
        //    print(transactionError.http_code)
        //    print(transactionError.code)
        //} else {
        //    print("NetworkError: ", err)                
        //}
    })
```
