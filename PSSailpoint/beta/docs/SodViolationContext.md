# SodViolationContext
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Policy** | [**BaseReferenceDto1**](BaseReferenceDto1.md) |  | [optional] 
**ConflictingAccessCriteria** | [**SodViolationContextConflictingAccessCriteria**](SodViolationContextConflictingAccessCriteria.md) |  | [optional] 

## Examples

- Prepare the resource
```powershell
$SodViolationContext = Initialize-PSSailpointBetaSodViolationContext  -Policy null `
 -ConflictingAccessCriteria null
```

- Convert the resource to JSON
```powershell
$SodViolationContext | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

