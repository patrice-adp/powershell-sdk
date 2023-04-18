#
# IdentityNow Beta API
# Use these APIs to interact with the IdentityNow platform to achieve repeatable, automated processes with greater scalability. These APIs are in beta and are subject to change. We encourage you to join the SailPoint Developer Community forum at https://developer.sailpoint.com/discuss to connect with other developers using our APIs.
# Version: 3.1.0-beta
# Generated by OpenAPI Generator: https://openapi-generator.tech
#

<#
.SYNOPSIS

No summary available.

.DESCRIPTION

No description available.

.PARAMETER Id
The identity ID
.PARAMETER InternalCloudStatus
Internal cloud status of identity.
.OUTPUTS

InternalIdentityDto<PSCustomObject>
#>

function Initialize-BetaInternalIdentityDto {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${InternalCloudStatus}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaInternalIdentityDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Id) {
            throw "invalid value for 'Id', 'Id' cannot be null."
        }

        if ($null -eq $InternalCloudStatus) {
            throw "invalid value for 'InternalCloudStatus', 'InternalCloudStatus' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "internalCloudStatus" = ${InternalCloudStatus}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to InternalIdentityDto<PSCustomObject>

.DESCRIPTION

Convert from JSON to InternalIdentityDto<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

InternalIdentityDto<PSCustomObject>
#>
function ConvertFrom-BetaJsonToInternalIdentityDto {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaInternalIdentityDto' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaInternalIdentityDto
        $AllProperties = ("id", "internalCloudStatus")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'id' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) {
            throw "Error! JSON cannot be serialized due to the required property 'id' missing."
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "internalCloudStatus"))) {
            throw "Error! JSON cannot be serialized due to the required property 'internalCloudStatus' missing."
        } else {
            $InternalCloudStatus = $JsonParameters.PSobject.Properties["internalCloudStatus"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "internalCloudStatus" = ${InternalCloudStatus}
        }

        return $PSO
    }

}
