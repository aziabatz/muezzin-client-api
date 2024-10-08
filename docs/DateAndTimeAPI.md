# DateAndTimeAPI

All URIs are relative to *http://api.aladhan.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1CurrentDateGet**](DateAndTimeAPI.md#v1currentdateget) | **GET** /v1/currentDate | Current Date
[**v1CurrentTimeGet**](DateAndTimeAPI.md#v1currenttimeget) | **GET** /v1/currentTime | Current Time
[**v1CurrentTimestampGet**](DateAndTimeAPI.md#v1currenttimestampget) | **GET** /v1/currentTimestamp | Current Timestamp


# **v1CurrentDateGet**
```swift
    open class func v1CurrentDateGet(zone: String, completion: @escaping (_ data: CurrentDateSuccess?, _ error: Error?) -> Void)
```

Current Date

Returns the current date for the specified time zone. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let zone = "zone_example" // String | A valid timezone as specified [here](http://php.net/manual/en/timezones.php).

// Current Date
DateAndTimeAPI.v1CurrentDateGet(zone: zone) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zone** | **String** | A valid timezone as specified [here](http://php.net/manual/en/timezones.php). | 

### Return type

[**CurrentDateSuccess**](CurrentDateSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1CurrentTimeGet**
```swift
    open class func v1CurrentTimeGet(zone: String, completion: @escaping (_ data: CurrentTimeSuccess?, _ error: Error?) -> Void)
```

Current Time

Returns the current time for the specified time zone. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let zone = "zone_example" // String | A valid timezone as specified [here](http://php.net/manual/en/timezones.php).

// Current Time
DateAndTimeAPI.v1CurrentTimeGet(zone: zone) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zone** | **String** | A valid timezone as specified [here](http://php.net/manual/en/timezones.php). | 

### Return type

[**CurrentTimeSuccess**](CurrentTimeSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1CurrentTimestampGet**
```swift
    open class func v1CurrentTimestampGet(zone: String, completion: @escaping (_ data: CurrentTimestampSuccess?, _ error: Error?) -> Void)
```

Current Timestamp

Returns the current [unix/epoch](https://en.wikipedia.org/wiki/Unix_time) timestamp for the specified time zone. 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let zone = "zone_example" // String | A valid timezone as specified [here](http://php.net/manual/en/timezones.php).

// Current Timestamp
DateAndTimeAPI.v1CurrentTimestampGet(zone: zone) { (response, error) in
    guard error == nil else {
        print(error)
        return
    }

    if (response) {
        dump(response)
    }
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zone** | **String** | A valid timezone as specified [here](http://php.net/manual/en/timezones.php). | 

### Return type

[**CurrentTimestampSuccess**](CurrentTimestampSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

