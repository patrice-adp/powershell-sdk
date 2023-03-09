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

.PARAMETER TaskResultId
The id of the task result.
.PARAMETER ReportName
The name of the report.
.OUTPUTS

IdentityExceptionReportReference1<PSCustomObject>
#>

function Initialize-BetaIdentityExceptionReportReference1 {
    [CmdletBinding()]
    Param (
        [Parameter(Position = 0, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${TaskResultId},
        [Parameter(Position = 1, ValueFromPipelineByPropertyName = $true)]
        [String]
        ${ReportName}
    )

    Process {
        'Creating PSCustomObject: PSSailpointBeta => BetaIdentityExceptionReportReference1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug


        $PSO = [PSCustomObject]@{
            "taskResultId" = ${TaskResultId}
            "reportName" = ${ReportName}
        }


        return $PSO
    }
}

<#
.SYNOPSIS

Convert from JSON to IdentityExceptionReportReference1<PSCustomObject>

.DESCRIPTION

Convert from JSON to IdentityExceptionReportReference1<PSCustomObject>

.PARAMETER Json

Json object

.OUTPUTS

IdentityExceptionReportReference1<PSCustomObject>
#>
function ConvertFrom-BetaJsonToIdentityExceptionReportReference1 {
    Param(
        [AllowEmptyString()]
        [string]$Json
    )

    Process {
        'Converting JSON to PSCustomObject: PSSailpointBeta => BetaIdentityExceptionReportReference1' | Write-Debug
        $PSBoundParameters | Out-DebugParameter | Write-Debug

        $JsonParameters = ConvertFrom-Json -InputObject $Json

        # check if Json contains properties not defined in BetaIdentityExceptionReportReference1
        $AllProperties = ("taskResultId", "reportName")
        foreach ($name in $JsonParameters.PsObject.Properties.Name) {
            if (!($AllProperties.Contains($name))) {
                throw "Error! JSON key '$name' not found in the properties: $($AllProperties)"
            }
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "taskResultId"))) { #optional property not found
            $TaskResultId = $null
        } else {
            $TaskResultId = $JsonParameters.PSobject.Properties["taskResultId"].value
        }

        if (!([bool]($JsonParameters.PSobject.Properties.name -match "reportName"))) { #optional property not found
            $ReportName = $null
        } else {
            $ReportName = $JsonParameters.PSobject.Properties["reportName"].value
        }

        $PSO = [PSCustomObject]@{
            "taskResultId" = ${TaskResultId}
            "reportName" = ${ReportName}
        }

        return $PSO
    }

}
