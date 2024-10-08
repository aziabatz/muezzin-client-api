# DailyPrayerTimesAPI

All URIs are relative to *http://api.aladhan.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1TimingsByAddressDateGet**](DailyPrayerTimesAPI.md#v1timingsbyaddressdateget) | **GET** /v1/timingsByAddress/{date} | Prayer Times By Address
[**v1TimingsByCityDateGet**](DailyPrayerTimesAPI.md#v1timingsbycitydateget) | **GET** /v1/timingsByCity/{date} | Prayer Times By City
[**v1TimingsDateGet**](DailyPrayerTimesAPI.md#v1timingsdateget) | **GET** /v1/timings/{date} | Prayer Times for date


# **v1TimingsByAddressDateGet**
```swift
    open class func v1TimingsByAddressDateGet(date: String, address: String, x7xapikey: String? = nil, method: Method_v1TimingsByAddressDateGet? = nil, shafaq: Shafaq_v1TimingsByAddressDateGet? = nil, tune: String? = nil, school: School_v1TimingsByAddressDateGet? = nil, midnightMode: MidnightMode_v1TimingsByAddressDateGet? = nil, timezonestring: String? = nil, latitudeAdjustmentMethod: LatitudeAdjustmentMethod_v1TimingsByAddressDateGet? = nil, adjustment: Int? = nil, iso8601: Bool? = nil, completion: @escaping (_ data: TimingsResponse?, _ error: Error?) -> Void)
```

Prayer Times By Address

Returns all prayer times for a specific date at a particular address.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let date = "date_example" // String | A date in the DD-MM-YYYY format. 
let address = "address_example" // String | An address string 
let x7xapikey = "x7xapikey_example" // String | An API key from https://7x.ax to geocode the address, city and country. If you do not provide one the response will mask the geocoded co-ordinates. (optional)
let method = 987 // Double | A prayer times calculation method. Methods identify various schools of thought about how to compute the timings. If not specified, it defaults to the closest authority based on the location or co-ordinates specified in the API call. This parameter accepts values from 0-23 and 99, as specified below: <br><br> Possible values: * `0` - Jafari / Shia Ithna-Ashari * `1` - University of Islamic Sciences, Karachi * `2` - Islamic Society of North America * `3` - Muslim World League * `4` - Umm Al-Qura University, Makkah * `5` - Egyptian General Authority of Survey * `7` - Institute of Geophysics, University of Tehran * `8` - Gulf Region * `9` - Kuwait * `10` - Qatar * `12` - Majlis Ugama Islam Singapura, Singapore * `12` - Union Organization islamic de France * `13` - Diyanet İşleri Başkanlığı, Turkey * `14` - Spiritual Administration of Muslims of Russia * `15` - Moonsighting Committee Worldwide (also requires shafaq parameter) * `16` - Dubai (experimental) * `17` - Jabatan Kemajuan Islam Malaysia (JAKIM) * `18` - Tunisia * `19` - Algeria * `20` - KEMENAG - Kementerian Agama Republik Indonesia * `21` - Morocco * `22` - Comunidade Islamica de Lisboa * `23` - Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan * `99` - Custom. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods)  (optional) (default to ._0)
let shafaq = "shafaq_example" // String | Which Shafaq to use if the method is Moonsighting Commitee Worldwide. Acceptable options are '`general', 'ahmer' and 'abyad'  (optional) (default to .general)
let tune = "tune_example" // String | Comma Separated String of integers to offset timings returned by the API in minutes. The order is `Imsak,Fajr,Sunrise,Dhuhr,Asr,Maghrib,Sunset,Isha,Midnight`. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods) for more details.  (optional)
let school = 987 // Int | Shafi (or the standard way) or Hanafi. <br /><br /> Possible values: * `0` - Shafi * `1` - Hanafi  (optional) (default to ._0)
let midnightMode = 987 // Int | Determines the method for calculating midnight <br><br> Possible values: * `0` - Standard (Mid Sunset to Sunrise) * `1` - Jafari (Mid Sunset to Fajr)  (optional) (default to ._0)
let timezonestring = "timezonestring_example" // String | A valid timezone name as specified on [https://php.net/manual/en/timezones.php](https://php.net/manual/en/timezones.php). <br> *If you do not specify this, we'll calcuate it using the co-ordinates you provide.*  (optional)
let latitudeAdjustmentMethod = 987 // Int | Method for adjusting times at higher latitudes. For example, if you are checking timings in the UK or Sweden. <br><br> Possible values: * `1` - Middle of the Night * `2` - One Seventh * `3` - Angle Based  (optional)
let adjustment = 987 // Int | Number of days to adjust hijri date(s).  (optional)
let iso8601 = true // Bool | Whether to return the prayer times in the iso8601 format. Example: true will return 2020-07-01T02:56:00+01:00 instead of 02:56  (optional) (default to false)

// Prayer Times By Address
DailyPrayerTimesAPI.v1TimingsByAddressDateGet(date: date, address: address, x7xapikey: x7xapikey, method: method, shafaq: shafaq, tune: tune, school: school, midnightMode: midnightMode, timezonestring: timezonestring, latitudeAdjustmentMethod: latitudeAdjustmentMethod, adjustment: adjustment, iso8601: iso8601) { (response, error) in
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
 **date** | **String** | A date in the DD-MM-YYYY format.  | 
 **address** | **String** | An address string  | 
 **x7xapikey** | **String** | An API key from https://7x.ax to geocode the address, city and country. If you do not provide one the response will mask the geocoded co-ordinates. | [optional] 
 **method** | **Double** | A prayer times calculation method. Methods identify various schools of thought about how to compute the timings. If not specified, it defaults to the closest authority based on the location or co-ordinates specified in the API call. This parameter accepts values from 0-23 and 99, as specified below: &lt;br&gt;&lt;br&gt; Possible values: * &#x60;0&#x60; - Jafari / Shia Ithna-Ashari * &#x60;1&#x60; - University of Islamic Sciences, Karachi * &#x60;2&#x60; - Islamic Society of North America * &#x60;3&#x60; - Muslim World League * &#x60;4&#x60; - Umm Al-Qura University, Makkah * &#x60;5&#x60; - Egyptian General Authority of Survey * &#x60;7&#x60; - Institute of Geophysics, University of Tehran * &#x60;8&#x60; - Gulf Region * &#x60;9&#x60; - Kuwait * &#x60;10&#x60; - Qatar * &#x60;12&#x60; - Majlis Ugama Islam Singapura, Singapore * &#x60;12&#x60; - Union Organization islamic de France * &#x60;13&#x60; - Diyanet İşleri Başkanlığı, Turkey * &#x60;14&#x60; - Spiritual Administration of Muslims of Russia * &#x60;15&#x60; - Moonsighting Committee Worldwide (also requires shafaq parameter) * &#x60;16&#x60; - Dubai (experimental) * &#x60;17&#x60; - Jabatan Kemajuan Islam Malaysia (JAKIM) * &#x60;18&#x60; - Tunisia * &#x60;19&#x60; - Algeria * &#x60;20&#x60; - KEMENAG - Kementerian Agama Republik Indonesia * &#x60;21&#x60; - Morocco * &#x60;22&#x60; - Comunidade Islamica de Lisboa * &#x60;23&#x60; - Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan * &#x60;99&#x60; - Custom. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods)  | [optional] [default to ._0]
 **shafaq** | **String** | Which Shafaq to use if the method is Moonsighting Commitee Worldwide. Acceptable options are &#39;&#x60;general&#39;, &#39;ahmer&#39; and &#39;abyad&#39;  | [optional] [default to .general]
 **tune** | **String** | Comma Separated String of integers to offset timings returned by the API in minutes. The order is &#x60;Imsak,Fajr,Sunrise,Dhuhr,Asr,Maghrib,Sunset,Isha,Midnight&#x60;. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods) for more details.  | [optional] 
 **school** | **Int** | Shafi (or the standard way) or Hanafi. &lt;br /&gt;&lt;br /&gt; Possible values: * &#x60;0&#x60; - Shafi * &#x60;1&#x60; - Hanafi  | [optional] [default to ._0]
 **midnightMode** | **Int** | Determines the method for calculating midnight &lt;br&gt;&lt;br&gt; Possible values: * &#x60;0&#x60; - Standard (Mid Sunset to Sunrise) * &#x60;1&#x60; - Jafari (Mid Sunset to Fajr)  | [optional] [default to ._0]
 **timezonestring** | **String** | A valid timezone name as specified on [https://php.net/manual/en/timezones.php](https://php.net/manual/en/timezones.php). &lt;br&gt; *If you do not specify this, we&#39;ll calcuate it using the co-ordinates you provide.*  | [optional] 
 **latitudeAdjustmentMethod** | **Int** | Method for adjusting times at higher latitudes. For example, if you are checking timings in the UK or Sweden. &lt;br&gt;&lt;br&gt; Possible values: * &#x60;1&#x60; - Middle of the Night * &#x60;2&#x60; - One Seventh * &#x60;3&#x60; - Angle Based  | [optional] 
 **adjustment** | **Int** | Number of days to adjust hijri date(s).  | [optional] 
 **iso8601** | **Bool** | Whether to return the prayer times in the iso8601 format. Example: true will return 2020-07-01T02:56:00+01:00 instead of 02:56  | [optional] [default to false]

### Return type

[**TimingsResponse**](TimingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TimingsByCityDateGet**
```swift
    open class func v1TimingsByCityDateGet(date: String, city: String, country: String, state: String? = nil, x7xapikey: String? = nil, method: Method_v1TimingsByCityDateGet? = nil, shafaq: Shafaq_v1TimingsByCityDateGet? = nil, tune: String? = nil, school: School_v1TimingsByCityDateGet? = nil, midnightMode: MidnightMode_v1TimingsByCityDateGet? = nil, timezonestring: String? = nil, latitudeAdjustmentMethod: LatitudeAdjustmentMethod_v1TimingsByCityDateGet? = nil, adjustment: Int? = nil, iso8601: Bool? = nil, completion: @escaping (_ data: TimingsResponse?, _ error: Error?) -> Void)
```

Prayer Times By City

Returns all prayer times for a specific date in a particular city.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let date = "date_example" // String | A date in the DD-MM-YYYY format. 
let city = "city_example" // String | A city name 
let country = "country_example" // String | A country name or 2 character alpha ISO 3166 code 
let state = "state_example" // String | State or province. A state name or abbreviation. Examples: Colorado / CO / Punjab / Bengal  (optional)
let x7xapikey = "x7xapikey_example" // String | An API key from https://7x.ax to geocode the address, city and country. If you do not provide one the response will mask the geocoded co-ordinates. (optional)
let method = 987 // Double | A prayer times calculation method. Methods identify various schools of thought about how to compute the timings. If not specified, it defaults to the closest authority based on the location or co-ordinates specified in the API call. This parameter accepts values from 0-23 and 99, as specified below: <br><br> Possible values: * `0` - Jafari / Shia Ithna-Ashari * `1` - University of Islamic Sciences, Karachi * `2` - Islamic Society of North America * `3` - Muslim World League * `4` - Umm Al-Qura University, Makkah * `5` - Egyptian General Authority of Survey * `7` - Institute of Geophysics, University of Tehran * `8` - Gulf Region * `9` - Kuwait * `10` - Qatar * `12` - Majlis Ugama Islam Singapura, Singapore * `12` - Union Organization islamic de France * `13` - Diyanet İşleri Başkanlığı, Turkey * `14` - Spiritual Administration of Muslims of Russia * `15` - Moonsighting Committee Worldwide (also requires shafaq parameter) * `16` - Dubai (experimental) * `17` - Jabatan Kemajuan Islam Malaysia (JAKIM) * `18` - Tunisia * `19` - Algeria * `20` - KEMENAG - Kementerian Agama Republik Indonesia * `21` - Morocco * `22` - Comunidade Islamica de Lisboa * `23` - Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan * `99` - Custom. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods)  (optional) (default to ._0)
let shafaq = "shafaq_example" // String | Which Shafaq to use if the method is Moonsighting Commitee Worldwide. Acceptable options are '`general', 'ahmer' and 'abyad'  (optional) (default to .general)
let tune = "tune_example" // String | Comma Separated String of integers to offset timings returned by the API in minutes. The order is `Imsak,Fajr,Sunrise,Dhuhr,Asr,Maghrib,Sunset,Isha,Midnight`. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods) for more details.  (optional)
let school = 987 // Int | Shafi (or the standard way) or Hanafi. <br /><br /> Possible values: * `0` - Shafi * `1` - Hanafi  (optional) (default to ._0)
let midnightMode = 987 // Int | Determines the method for calculating midnight <br><br> Possible values: * `0` - Standard (Mid Sunset to Sunrise) * `1` - Jafari (Mid Sunset to Fajr)  (optional) (default to ._0)
let timezonestring = "timezonestring_example" // String | A valid timezone name as specified on [https://php.net/manual/en/timezones.php](https://php.net/manual/en/timezones.php). <br> *If you do not specify this, we'll calcuate it using the co-ordinates you provide.*  (optional)
let latitudeAdjustmentMethod = 987 // Int | Method for adjusting times at higher latitudes. For example, if you are checking timings in the UK or Sweden. <br><br> Possible values: * `1` - Middle of the Night * `2` - One Seventh * `3` - Angle Based  (optional)
let adjustment = 987 // Int | Number of days to adjust hijri date(s).  (optional)
let iso8601 = true // Bool | Whether to return the prayer times in the iso8601 format. Example: true will return 2020-07-01T02:56:00+01:00 instead of 02:56  (optional) (default to false)

// Prayer Times By City
DailyPrayerTimesAPI.v1TimingsByCityDateGet(date: date, city: city, country: country, state: state, x7xapikey: x7xapikey, method: method, shafaq: shafaq, tune: tune, school: school, midnightMode: midnightMode, timezonestring: timezonestring, latitudeAdjustmentMethod: latitudeAdjustmentMethod, adjustment: adjustment, iso8601: iso8601) { (response, error) in
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
 **date** | **String** | A date in the DD-MM-YYYY format.  | 
 **city** | **String** | A city name  | 
 **country** | **String** | A country name or 2 character alpha ISO 3166 code  | 
 **state** | **String** | State or province. A state name or abbreviation. Examples: Colorado / CO / Punjab / Bengal  | [optional] 
 **x7xapikey** | **String** | An API key from https://7x.ax to geocode the address, city and country. If you do not provide one the response will mask the geocoded co-ordinates. | [optional] 
 **method** | **Double** | A prayer times calculation method. Methods identify various schools of thought about how to compute the timings. If not specified, it defaults to the closest authority based on the location or co-ordinates specified in the API call. This parameter accepts values from 0-23 and 99, as specified below: &lt;br&gt;&lt;br&gt; Possible values: * &#x60;0&#x60; - Jafari / Shia Ithna-Ashari * &#x60;1&#x60; - University of Islamic Sciences, Karachi * &#x60;2&#x60; - Islamic Society of North America * &#x60;3&#x60; - Muslim World League * &#x60;4&#x60; - Umm Al-Qura University, Makkah * &#x60;5&#x60; - Egyptian General Authority of Survey * &#x60;7&#x60; - Institute of Geophysics, University of Tehran * &#x60;8&#x60; - Gulf Region * &#x60;9&#x60; - Kuwait * &#x60;10&#x60; - Qatar * &#x60;12&#x60; - Majlis Ugama Islam Singapura, Singapore * &#x60;12&#x60; - Union Organization islamic de France * &#x60;13&#x60; - Diyanet İşleri Başkanlığı, Turkey * &#x60;14&#x60; - Spiritual Administration of Muslims of Russia * &#x60;15&#x60; - Moonsighting Committee Worldwide (also requires shafaq parameter) * &#x60;16&#x60; - Dubai (experimental) * &#x60;17&#x60; - Jabatan Kemajuan Islam Malaysia (JAKIM) * &#x60;18&#x60; - Tunisia * &#x60;19&#x60; - Algeria * &#x60;20&#x60; - KEMENAG - Kementerian Agama Republik Indonesia * &#x60;21&#x60; - Morocco * &#x60;22&#x60; - Comunidade Islamica de Lisboa * &#x60;23&#x60; - Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan * &#x60;99&#x60; - Custom. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods)  | [optional] [default to ._0]
 **shafaq** | **String** | Which Shafaq to use if the method is Moonsighting Commitee Worldwide. Acceptable options are &#39;&#x60;general&#39;, &#39;ahmer&#39; and &#39;abyad&#39;  | [optional] [default to .general]
 **tune** | **String** | Comma Separated String of integers to offset timings returned by the API in minutes. The order is &#x60;Imsak,Fajr,Sunrise,Dhuhr,Asr,Maghrib,Sunset,Isha,Midnight&#x60;. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods) for more details.  | [optional] 
 **school** | **Int** | Shafi (or the standard way) or Hanafi. &lt;br /&gt;&lt;br /&gt; Possible values: * &#x60;0&#x60; - Shafi * &#x60;1&#x60; - Hanafi  | [optional] [default to ._0]
 **midnightMode** | **Int** | Determines the method for calculating midnight &lt;br&gt;&lt;br&gt; Possible values: * &#x60;0&#x60; - Standard (Mid Sunset to Sunrise) * &#x60;1&#x60; - Jafari (Mid Sunset to Fajr)  | [optional] [default to ._0]
 **timezonestring** | **String** | A valid timezone name as specified on [https://php.net/manual/en/timezones.php](https://php.net/manual/en/timezones.php). &lt;br&gt; *If you do not specify this, we&#39;ll calcuate it using the co-ordinates you provide.*  | [optional] 
 **latitudeAdjustmentMethod** | **Int** | Method for adjusting times at higher latitudes. For example, if you are checking timings in the UK or Sweden. &lt;br&gt;&lt;br&gt; Possible values: * &#x60;1&#x60; - Middle of the Night * &#x60;2&#x60; - One Seventh * &#x60;3&#x60; - Angle Based  | [optional] 
 **adjustment** | **Int** | Number of days to adjust hijri date(s).  | [optional] 
 **iso8601** | **Bool** | Whether to return the prayer times in the iso8601 format. Example: true will return 2020-07-01T02:56:00+01:00 instead of 02:56  | [optional] [default to false]

### Return type

[**TimingsResponse**](TimingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1TimingsDateGet**
```swift
    open class func v1TimingsDateGet(date: String, latitude: Double, longitude: Double, method: Method_v1TimingsDateGet? = nil, shafaq: Shafaq_v1TimingsDateGet? = nil, tune: String? = nil, school: School_v1TimingsDateGet? = nil, midnightMode: MidnightMode_v1TimingsDateGet? = nil, timezonestring: String? = nil, latitudeAdjustmentMethod: LatitudeAdjustmentMethod_v1TimingsDateGet? = nil, adjustment: Int? = nil, iso8601: Bool? = nil, completion: @escaping (_ data: TimingsResponse?, _ error: Error?) -> Void)
```

Prayer Times for date

Returns all prayer times for a specific date.

### Example
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import OpenAPIClient

let date = "date_example" // String | A date in the DD-MM-YYYY format. 
let latitude = 987 // Double | The decimal value for the latitude co-ordinate of the location you want the time computed for. 
let longitude = 987 // Double | The decimal value for the longitude co-ordinate of the location you want the time computed for. 
let method = 987 // Double | A prayer times calculation method. Methods identify various schools of thought about how to compute the timings. If not specified, it defaults to the closest authority based on the location or co-ordinates specified in the API call. This parameter accepts values from 0-23 and 99, as specified below: <br><br> Possible values: * `0` - Jafari / Shia Ithna-Ashari * `1` - University of Islamic Sciences, Karachi * `2` - Islamic Society of North America * `3` - Muslim World League * `4` - Umm Al-Qura University, Makkah * `5` - Egyptian General Authority of Survey * `7` - Institute of Geophysics, University of Tehran * `8` - Gulf Region * `9` - Kuwait * `10` - Qatar * `12` - Majlis Ugama Islam Singapura, Singapore * `12` - Union Organization islamic de France * `13` - Diyanet İşleri Başkanlığı, Turkey * `14` - Spiritual Administration of Muslims of Russia * `15` - Moonsighting Committee Worldwide (also requires shafaq parameter) * `16` - Dubai (experimental) * `17` - Jabatan Kemajuan Islam Malaysia (JAKIM) * `18` - Tunisia * `19` - Algeria * `20` - KEMENAG - Kementerian Agama Republik Indonesia * `21` - Morocco * `22` - Comunidade Islamica de Lisboa * `23` - Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan * `99` - Custom. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods)  (optional) (default to ._0)
let shafaq = "shafaq_example" // String | Which Shafaq to use if the method is Moonsighting Commitee Worldwide. Acceptable options are '`general', 'ahmer' and 'abyad'  (optional) (default to .general)
let tune = "tune_example" // String | Comma Separated String of integers to offset timings returned by the API in minutes. The order is `Imsak,Fajr,Sunrise,Dhuhr,Asr,Maghrib,Sunset,Isha,Midnight`. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods) for more details.  (optional)
let school = 987 // Int | Shafi (or the standard way) or Hanafi. <br /><br /> Possible values: * `0` - Shafi * `1` - Hanafi  (optional) (default to ._0)
let midnightMode = 987 // Int | Determines the method for calculating midnight <br><br> Possible values: * `0` - Standard (Mid Sunset to Sunrise) * `1` - Jafari (Mid Sunset to Fajr)  (optional) (default to ._0)
let timezonestring = "timezonestring_example" // String | A valid timezone name as specified on [https://php.net/manual/en/timezones.php](https://php.net/manual/en/timezones.php). <br> *If you do not specify this, we'll calcuate it using the co-ordinates you provide.*  (optional)
let latitudeAdjustmentMethod = 987 // Int | Method for adjusting times at higher latitudes. For example, if you are checking timings in the UK or Sweden. <br><br> Possible values: * `1` - Middle of the Night * `2` - One Seventh * `3` - Angle Based  (optional)
let adjustment = 987 // Int | Number of days to adjust hijri date(s).  (optional)
let iso8601 = true // Bool | Whether to return the prayer times in the iso8601 format. Example: true will return 2020-07-01T02:56:00+01:00 instead of 02:56  (optional) (default to false)

// Prayer Times for date
DailyPrayerTimesAPI.v1TimingsDateGet(date: date, latitude: latitude, longitude: longitude, method: method, shafaq: shafaq, tune: tune, school: school, midnightMode: midnightMode, timezonestring: timezonestring, latitudeAdjustmentMethod: latitudeAdjustmentMethod, adjustment: adjustment, iso8601: iso8601) { (response, error) in
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
 **date** | **String** | A date in the DD-MM-YYYY format.  | 
 **latitude** | **Double** | The decimal value for the latitude co-ordinate of the location you want the time computed for.  | 
 **longitude** | **Double** | The decimal value for the longitude co-ordinate of the location you want the time computed for.  | 
 **method** | **Double** | A prayer times calculation method. Methods identify various schools of thought about how to compute the timings. If not specified, it defaults to the closest authority based on the location or co-ordinates specified in the API call. This parameter accepts values from 0-23 and 99, as specified below: &lt;br&gt;&lt;br&gt; Possible values: * &#x60;0&#x60; - Jafari / Shia Ithna-Ashari * &#x60;1&#x60; - University of Islamic Sciences, Karachi * &#x60;2&#x60; - Islamic Society of North America * &#x60;3&#x60; - Muslim World League * &#x60;4&#x60; - Umm Al-Qura University, Makkah * &#x60;5&#x60; - Egyptian General Authority of Survey * &#x60;7&#x60; - Institute of Geophysics, University of Tehran * &#x60;8&#x60; - Gulf Region * &#x60;9&#x60; - Kuwait * &#x60;10&#x60; - Qatar * &#x60;12&#x60; - Majlis Ugama Islam Singapura, Singapore * &#x60;12&#x60; - Union Organization islamic de France * &#x60;13&#x60; - Diyanet İşleri Başkanlığı, Turkey * &#x60;14&#x60; - Spiritual Administration of Muslims of Russia * &#x60;15&#x60; - Moonsighting Committee Worldwide (also requires shafaq parameter) * &#x60;16&#x60; - Dubai (experimental) * &#x60;17&#x60; - Jabatan Kemajuan Islam Malaysia (JAKIM) * &#x60;18&#x60; - Tunisia * &#x60;19&#x60; - Algeria * &#x60;20&#x60; - KEMENAG - Kementerian Agama Republik Indonesia * &#x60;21&#x60; - Morocco * &#x60;22&#x60; - Comunidade Islamica de Lisboa * &#x60;23&#x60; - Ministry of Awqaf, Islamic Affairs and Holy Places, Jordan * &#x60;99&#x60; - Custom. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods)  | [optional] [default to ._0]
 **shafaq** | **String** | Which Shafaq to use if the method is Moonsighting Commitee Worldwide. Acceptable options are &#39;&#x60;general&#39;, &#39;ahmer&#39; and &#39;abyad&#39;  | [optional] [default to .general]
 **tune** | **String** | Comma Separated String of integers to offset timings returned by the API in minutes. The order is &#x60;Imsak,Fajr,Sunrise,Dhuhr,Asr,Maghrib,Sunset,Isha,Midnight&#x60;. See [https://aladhan.com/calculation-methods](https://aladhan.com/calculation-methods) for more details.  | [optional] 
 **school** | **Int** | Shafi (or the standard way) or Hanafi. &lt;br /&gt;&lt;br /&gt; Possible values: * &#x60;0&#x60; - Shafi * &#x60;1&#x60; - Hanafi  | [optional] [default to ._0]
 **midnightMode** | **Int** | Determines the method for calculating midnight &lt;br&gt;&lt;br&gt; Possible values: * &#x60;0&#x60; - Standard (Mid Sunset to Sunrise) * &#x60;1&#x60; - Jafari (Mid Sunset to Fajr)  | [optional] [default to ._0]
 **timezonestring** | **String** | A valid timezone name as specified on [https://php.net/manual/en/timezones.php](https://php.net/manual/en/timezones.php). &lt;br&gt; *If you do not specify this, we&#39;ll calcuate it using the co-ordinates you provide.*  | [optional] 
 **latitudeAdjustmentMethod** | **Int** | Method for adjusting times at higher latitudes. For example, if you are checking timings in the UK or Sweden. &lt;br&gt;&lt;br&gt; Possible values: * &#x60;1&#x60; - Middle of the Night * &#x60;2&#x60; - One Seventh * &#x60;3&#x60; - Angle Based  | [optional] 
 **adjustment** | **Int** | Number of days to adjust hijri date(s).  | [optional] 
 **iso8601** | **Bool** | Whether to return the prayer times in the iso8601 format. Example: true will return 2020-07-01T02:56:00+01:00 instead of 02:56  | [optional] [default to false]

### Return type

[**TimingsResponse**](TimingsResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

