# PSSailpoint.PSSailpoint/Api.PasswordDictionaryApi

All URIs are relative to *https://sailpoint.api.identitynow.com/v3*

Method | HTTP request | Description
------------- | ------------- | -------------
[**Get-PasswordDictionary**](PasswordDictionaryApi.md#Get-PasswordDictionary) | **GET** /password-dictionary | Get Password Dictionary


<a name="Get-PasswordDictionary"></a>
# **Get-PasswordDictionary**
> String Get-PasswordDictionary<br>

Get Password Dictionary

This gets password dictionary for the organization. A token with ORG_ADMIN authority is required to call this API.

### Example
```powershell
# general setting of the PowerShell module, e.g. base URL, authentication, etc
$Configuration = Get-Configuration
# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"

# Configure OAuth2 access token for authorization: oauth2
$Configuration.AccessToken = "YOUR_ACCESS_TOKEN"


# Get Password Dictionary
try {
    $Result = Get-PasswordDictionary
} catch {
    Write-Host ("Exception occurred when calling Get-PasswordDictionary: {0}" -f ($_.ErrorDetails | ConvertFrom-Json))
    Write-Host ("Response headers: {0}" -f ($_.Exception.Response.Headers | ConvertTo-Json))
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

**String**

### Authorization

[oauth2](../README.md#oauth2), [oauth2](../README.md#oauth2)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)
