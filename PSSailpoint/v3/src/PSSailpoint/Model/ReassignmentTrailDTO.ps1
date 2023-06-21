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

.PARAMETER PreviousOwner
The ID of previous owner identity.
.PARAMETER NewOwner
The ID of new owner identity.
.PARAMETER ReassignmentType
The type of reassignment.
.OUTPUTS

ReassignmentTrailDTO<PSCustomObject>
#>

function Initialize-ReassignmentTrailDTO {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${PreviousOwner},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${NewOwner},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReassignmentType}
    )

    Process {
        'Creating PSCustomObject: PSSailpoint => ReassignmentTrailDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "previousOwner" = ${PreviousOwner}
            "newOwner" = ${NewOwner}
            "reassignmentType" = ${ReassignmentType}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to ReassignmentTrailDTO<PSCustomObject>

.DESCRIPTION

Convert from JSON to ReassignmentTrailDTO<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

ReassignmentTrailDTO<PSCustomObject>
#>
function ConvertFrom-JsonToReassignmentTrailDTO {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpoint => ReassignmentTrailDTO' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in ReassignmentTrailDTO
        $AllProperties = ("previousOwner", "newOwner", "reassignmentType")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "previousOwner"))) { #optional property not found
            $PreviousOwner = $null
        } else {
            $PreviousOwner = $JsonParameters.PSobject.Properties["previousOwner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "newOwner"))) { #optional property not found
            $NewOwner = $null
        } else {
            $NewOwner = $JsonParameters.PSobject.Properties["newOwner"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reassignmentType"))) { #optional property not found
            $ReassignmentType = $null
        } else {
            $ReassignmentType = $JsonParameters.PSobject.Properties["reassignmentType"].value
        }

        $PSO = [PSCustomObject]@{
            "previousOwner" = ${PreviousOwner}
            "newOwner" = ${NewOwner}
            "reassignmentType" = ${ReassignmentType}
        }

        return $PSO
    }

}

