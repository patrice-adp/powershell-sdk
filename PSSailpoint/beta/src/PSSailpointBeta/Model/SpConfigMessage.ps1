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

Message model for Config Import/Export.

.PARAMETER Key
Message key.
.PARAMETER Text
Message text.
.PARAMETER Details
Message details if any, in key:value pairs.
.OUTPUTS

SpConfigMessage<PSCustomObject>
#>

function Initialize-BetaSpConfigMessage {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Key},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Text},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [System.Collections.Hashtable]
        ${Details}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaSpConfigMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        if ($null -eq $Key) {
            throw "invalid value for 'Key', 'Key' cannot be null."
        }

        if ($null -eq $Text) {
            throw "invalid value for 'Text', 'Text' cannot be null."
        }

        if ($null -eq $Details) {
            throw "invalid value for 'Details', 'Details' cannot be null."
        }


        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "text" = ${Text}
            "details" = ${Details}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to SpConfigMessage<PSCustomObject>

.DESCRIPTION

Convert from JSON to SpConfigMessage<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

SpConfigMessage<PSCustomObject>
#>
function ConvertFrom-BetaJsonToSpConfigMessage {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaSpConfigMessage' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaSpConfigMessage
        $AllProperties = ("key", "text", "details")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        If ([string]::IsNullOrEmpty($Json) -or $Json -eq "{}") { # empty json
            throw "Error! Empty JSON cannot be serialized due to the required property 'key' missing."
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "key"))) {
            throw "Error! JSON cannot be serialized due to the required property 'key' missing."
        } else {
            $Key = $JsonParameters.PSobject.Properties["key"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "text"))) {
            throw "Error! JSON cannot be serialized due to the required property 'text' missing."
        } else {
            $Text = $JsonParameters.PSobject.Properties["text"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "details"))) {
            throw "Error! JSON cannot be serialized due to the required property 'details' missing."
        } else {
            $Details = $JsonParameters.PSobject.Properties["details"].value
        }

        $PSO = [PSCustomObject]@{
            "key" = ${Key}
            "text" = ${Text}
            "details" = ${Details}
        }

        return $PSO
    }

}
