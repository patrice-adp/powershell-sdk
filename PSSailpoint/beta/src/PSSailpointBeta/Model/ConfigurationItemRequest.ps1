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

The request body for creation or update of a Reassignment Configuration for a single identity and work type

.PARAMETER ReassignedFromId
The identity id to reassign an item from
.PARAMETER ReassignedToId
The identity id to reassign an item to
.PARAMETER ConfigType
No description available.
.PARAMETER StartDate
The date from which to start reassigning work items
.PARAMETER EndDate
The date from which to stop reassigning work items.  If this is an null string it indicates a permanent reassignment.
.OUTPUTS

ConfigurationItemRequest<PSCustomObject>
#>

function Initialize-BetaConfigurationItemRequest {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReassignedFromId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReassignedToId},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [ValidateSet("ACCESS_REQUESTS", "CERTIFICATIONS", "MANUAL_TASKS")]
        [PSCustomObject]
        ${ConfigType},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${StartDate},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [System.Nullable[System.DateTime]]
        ${EndDate}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaConfigurationItemRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "reassignedFromId" = ${ReassignedFromId}
            "reassignedToId" = ${ReassignedToId}
            "configType" = ${ConfigType}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ConfigurationItemRequest<PSCustomObject>

.DESCRIPTION

Convert from JSON to ConfigurationItemRequest<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ConfigurationItemRequest<PSCustomObject>
#>
function ConvertFrom-BetaJsonToConfigurationItemRequest {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaConfigurationItemRequest' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaConfigurationItemRequest
        $AllProperties = ("reassignedFromId", "reassignedToId", "configType", "startDate", "endDate")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignedFromId"))) { #optional property not found
            $ReassignedFromId = $null
        } else {
            $ReassignedFromId = $JsonParameters.PSobject.Properties["reassignedFromId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignedToId"))) { #optional property not found
            $ReassignedToId = $null
        } else {
            $ReassignedToId = $JsonParameters.PSobject.Properties["reassignedToId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "configType"))) { #optional property not found
            $ConfigType = $null
        } else {
            $ConfigType = $JsonParameters.PSobject.Properties["configType"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "startDate"))) { #optional property not found
            $StartDate = $null
        } else {
            $StartDate = $JsonParameters.PSobject.Properties["startDate"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "endDate"))) { #optional property not found
            $EndDate = $null
        } else {
            $EndDate = $JsonParameters.PSobject.Properties["endDate"].value
        }

        $PSO = [PSCustomObject]@{
            "reassignedFromId" = ${ReassignedFromId}
            "reassignedToId" = ${ReassignedToId}
            "configType" = ${ConfigType}
            "startDate" = ${StartDate}
            "endDate" = ${EndDate}
        }

        return $PSO
    }

}

