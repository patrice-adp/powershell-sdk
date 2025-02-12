#
# IdentityNow V3 API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.0.0
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER AllowEntitlementRequest
Flag for allowing entitlement request.
.PARAMETER RequestCommentsRequired
Flag for requiring comments while submitting an entitlement request.
.PARAMETER DeniedCommentsRequired
Flag for requiring comments while rejecting an entitlement request.
.PARAMETER GrantRequestApprovalSchemes
Approval schemes for granting entitlement request. This can be empty if no approval is needed. Multiple schemes must be comma-separated. The valid schemes are ""entitlementOwner"", ""sourceOwner"", ""manager"" and ""workgroup:{id}"". Multiple workgroups (governance groups) can be used. 
.OUTPUTS

EntitlementRequestConfig<PSCustomObject>
#>

function Initialize-EntitlementRequestConfig {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${AllowEntitlementRequest},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${RequestCommentsRequired} = $false,
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[Boolean]]
        ${DeniedCommentsRequired} = $false,
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${GrantRequestApprovalSchemes} = "sourceOwner"
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => EntitlementRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "allowEntitlementRequest" = ${AllowEntitlementRequest}
            "requestCommentsRequired" = ${RequestCommentsRequired}
            "deniedCommentsRequired" = ${DeniedCommentsRequired}
            "grantRequestApprovalSchemes" = ${GrantRequestApprovalSchemes}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to EntitlementRequestConfig<PSCustomObject>

.DESCRIPTION

Convert from JSON to EntitlementRequestConfig<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

EntitlementRequestConfig<PSCustomObject>
#>
function ConvertFrom-JsonToEntitlementRequestConfig {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => EntitlementRequestConfig' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in EntitlementRequestConfig
        $AllProperties = ("allowEntitlementRequest", "requestCommentsRequired", "deniedCommentsRequired", "grantRequestApprovalSchemes")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "allowEntitlementRequest"))) { #optional property not found
            $AllowEntitlementRequest = $null
        } else {
            $AllowEntitlementRequest = $JsonParameters.PSobject.Properties["allowEntitlementRequest"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "requestCommentsRequired"))) { #optional property not found
            $RequestCommentsRequired = $null
        } else {
            $RequestCommentsRequired = $JsonParameters.PSobject.Properties["requestCommentsRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "deniedCommentsRequired"))) { #optional property not found
            $DeniedCommentsRequired = $null
        } else {
            $DeniedCommentsRequired = $JsonParameters.PSobject.Properties["deniedCommentsRequired"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "grantRequestApprovalSchemes"))) { #optional property not found
            $GrantRequestApprovalSchemes = $null
        } else {
            $GrantRequestApprovalSchemes = $JsonParameters.PSobject.Properties["grantRequestApprovalSchemes"].value
        }

        $PSO = [PSCustomObject]@{
            "allowEntitlementRequest" = ${AllowEntitlementRequest}
            "requestCommentsRequired" = ${RequestCommentsRequired}
            "deniedCommentsRequired" = ${DeniedCommentsRequired}
            "grantRequestApprovalSchemes" = ${GrantRequestApprovalSchemes}
        }

        return $PSO
    }

}

