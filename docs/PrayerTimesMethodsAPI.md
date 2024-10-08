# PrayerTimesMethodsAPI

All URIs are relative to *http://api.aladhan.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1MethodsGet**](PrayerTimesMethodsAPI.md#v1methodsget) | **GET** /v1/methods | Prayer Times Methods


# **v1MethodsGet**
```swift
    open class func v1MethodsGet(completion: @escaping (_ data: MethodsSuccess?, _ error: Error?) -> Void)
```

Prayer Times Methods

Returns all the prayer times calculation methods & details supported by Islamic Network API. \\  Furthermore, [you can use customize the methods & create your own if needed](https://aladhan.com/calculation-methods). 

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient


// Prayer Times Methods
PrayerTimesMethodsAPI.v1MethodsGet() { (response, error) in
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
This endpoint does not need any parameter.

### Return type

[**MethodsSuccess**](MethodsSuccess.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

