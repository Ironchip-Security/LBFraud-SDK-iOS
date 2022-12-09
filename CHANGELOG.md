# Changelog
All notable changes to this project will be documented in this file.

# [Unreleased]
## [1.2.3] - 2022-12-09 - nowadays
### Added 
### Changed 
  - Fixed issue with the fingerprint id.
  - Handle external HTTP calls
### Removed

## [1.2.2] - 2022-11-30 - 2022-12-09
### Added 
### Changed 
  - Change some property of the device in the transaction model.
### Removed
 
## [1.2.1] - 2022-11-22 - 2022-11-30
### Added 
### Changed 
  - Class name refactorization.
  - Changed the tags on the logs to match the refactorization.
  - Fraud constructor no longer supports a url host, it only allow to select the desired environment.
  - GPS service, throw error when permission is not granted or Location service is disabled
### Removed 

## [1.2.0] - 2022-11-16 - 2022-11-23
### Added
 - Debug Logs
### Changed
 - Some custom errors
### Removed
 - Network errors, now throw the generic not custom ones

## [1.1.8] - 2022-10-26 - 2022-11-16
### Added
### Changed
 - Change transaction Model
### Removed

## [1.1.7] - 2022-10-25 - nowadays
### Added
### Changed
 - Change url from nexus to github
### Removed
 - Unnecesary prints

## [1.1.6] - 2022-09-14 - 2022-10-25
### Added
### Changed
### Removed
 - Unnecesary prints

## [1.1.5] - 2022-09-14 - 2022-09-14
### Added
 - In commons throw custom errors, and in Fraud rethrow them
### Changed
 - Rename commons Services
### Removed

## [1.1.4] - 2022-09-12 - 2022-09-14
### Added
 - Add CHANGELOG file to the project
### Changed
### Removed

## [1.1.3] - 2022-09-12 - nowadays
### Added
### Changed
 - Pass url parameter to constructor not in sendTransaction method

## [1.1.2] - 2022-09-03 - 2022-09-12
### Added
### Changed
    - Change nexus repository name of .xcframework.zip
### Removed

## [1.1.1] - 2022-08-27 - 2022-09-03
### Added
    - Now the project have two .xcframework one from Commons and the other from LBFraud
### Changed
    - Now the Swift Package is getting the .xcframework from remote not local one
### Removed

## [1.1.0] - 2022-08-24 - 2022-09-27
### Added
     - LICENSE file added to the project

### Changed
### Removed
    
## [1.0.9] - 2022-08-23
### Added
    - First Stable version of a SwiftPackage with one XCFramework called LBFraudSDKiOS.xcframework

### Changed
### Removed
