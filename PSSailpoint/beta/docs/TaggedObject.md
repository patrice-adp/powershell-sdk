# TaggedObject
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ObjectRef** | [**BaseReferenceDto1**](BaseReferenceDto1.md) |  | [optional] 
**Tags** | **String[]** | Labels to be applied to an Object | [optional] 

## Examples

- Prepare the resource
```powershell
$TaggedObject = Initialize-PSSailpointBetaTaggedObject  -ObjectRef null `
 -Tags [BU_FINANCE, PCI]
```

- Convert the resource to JSON
```powershell
$TaggedObject | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

