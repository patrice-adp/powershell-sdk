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
Action ID. This is a static namespaced ID for the action
.PARAMETER Name
Action Name
.PARAMETER Description
Action Description
.PARAMETER FormFields
One or more inputs that the action accepts
.PARAMETER OutputSchema
Defines the output schema, if any, that this action produces.
.OUTPUTS

WorkflowLibraryAction<PSCustomObject>
#>

function Initialize-BetaWorkflowLibraryAction {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Id},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Name},
        [Parameter(Position = 2, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${Description},
        [Parameter(Position = 3, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject[]]
        ${FormFields},
        [Parameter(Position = 4, ValueFromPipelineByPropertyName = $true)]
        [PSCustomObject]
        ${OutputSchema}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaWorkflowLibraryAction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "formFields" = ${FormFields}
            "outputSchema" = ${OutputSchema}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to WorkflowLibraryAction<PSCustomObject>

.DESCRIPTION

Convert from JSON to WorkflowLibraryAction<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

WorkflowLibraryAction<PSCustomObject>
#>
function ConvertFrom-BetaJsonToWorkflowLibraryAction {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaWorkflowLibraryAction' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaWorkflowLibraryAction
        $AllProperties = ("id", "name", "description", "formFields", "outputSchema")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "id"))) { #optional property not found
            $Id = $null
        } else {
            $Id = $JsonParameters.PSobject.Properties["id"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "name"))) { #optional property not found
            $Name = $null
        } else {
            $Name = $JsonParameters.PSobject.Properties["name"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "description"))) { #optional property not found
            $Description = $null
        } else {
            $Description = $JsonParameters.PSobject.Properties["description"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "formFields"))) { #optional property not found
            $FormFields = $null
        } else {
            $FormFields = $JsonParameters.PSobject.Properties["formFields"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "outputSchema"))) { #optional property not found
            $OutputSchema = $null
        } else {
            $OutputSchema = $JsonParameters.PSobject.Properties["outputSchema"].value
        }

        $PSO = [PSCustomObject]@{
            "id" = ${Id}
            "name" = ${Name}
            "description" = ${Description}
            "formFields" = ${FormFields}
            "outputSchema" = ${OutputSchema}
        }

        return $PSO
    }

}
