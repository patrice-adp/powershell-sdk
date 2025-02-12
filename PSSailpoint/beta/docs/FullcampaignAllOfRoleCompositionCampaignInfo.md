# FullcampaignAllOfRoleCompositionCampaignInfo
## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Reviewer** | [**BaseReferenceDto1**](BaseReferenceDto1.md) | If specified, this identity or governance group will be the reviewer for all certifications in this campaign. The allowed DTO types are IDENTITY and GOVERNANCE_GROUP | [optional] 
**RoleIds** | **String[]** | Optional list of roles to include in this campaign. Only one of &#x60;roleIds&#x60; and &#x60;query&#x60; may be set; if neither are set, all roles are included. | [optional] 
**RemediatorRef** | [**FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef**](FullcampaignAllOfRoleCompositionCampaignInfoRemediatorRef.md) |  | 
**Query** | **String** | Optional search query to scope this campaign to a set of roles. Only one of &#x60;roleIds&#x60; and &#x60;query&#x60; may be set; if neither are set, all roles are included. | [optional] 
**Description** | **String** | Describes this role composition campaign. Intended for storing the query used, and possibly the number of roles selected/available. | [optional] 

## Examples

- Prepare the resource
```powershell
$FullcampaignAllOfRoleCompositionCampaignInfo = Initialize-PSSailpointBetaFullcampaignAllOfRoleCompositionCampaignInfo  -Reviewer null `
 -RoleIds [2c90ad2a70ace7d50170acf22ca90010] `
 -RemediatorRef null `
 -Query Search Query `
 -Description Role Composition Description
```

- Convert the resource to JSON
```powershell
$FullcampaignAllOfRoleCompositionCampaignInfo | ConvertTo-JSON
```

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

