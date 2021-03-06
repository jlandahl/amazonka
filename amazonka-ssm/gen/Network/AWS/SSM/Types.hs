{-# LANGUAGE OverloadedStrings #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.AWS.SSM.Types
    (
    -- * Service Configuration
      ssm

    -- * Errors
    , _AutomationDefinitionVersionNotFoundException
    , _InvalidDocumentVersion
    , _InvalidSchedule
    , _UnsupportedParameterType
    , _InvalidPluginName
    , _UnsupportedPlatformType
    , _InvalidFilterValue
    , _InvalidItemContentException
    , _InvalidPermissionType
    , _AssociatedInstances
    , _InvalidInstanceId
    , _StatusUnchanged
    , _InvalidNextToken
    , _InvalidOutputFolder
    , _InvalidActivationId
    , _InvalidResultAttributeException
    , _ResourceLimitExceededException
    , _InvalidCommandId
    , _DuplicateInstanceId
    , _InvalidResourceType
    , _UnsupportedInventorySchemaVersionException
    , _InvalidDocument
    , _AutomationDefinitionNotFoundException
    , _InvalidFilterKey
    , _InvalidAutomationExecutionParametersException
    , _AutomationExecutionNotFoundException
    , _InvalidTypeNameException
    , _ItemSizeLimitExceededException
    , _DoesNotExistException
    , _AutomationExecutionLimitExceededException
    , _IdempotentParameterMismatch
    , _InvalidInstanceInformationFilterValue
    , _ItemContentMismatchException
    , _ParameterAlreadyExists
    , _AssociationAlreadyExists
    , _InvalidDocumentContent
    , _ParameterLimitExceeded
    , _AssociationLimitExceeded
    , _AssociationDoesNotExist
    , _ParameterNotFound
    , _InternalServerError
    , _InvalidRole
    , _TooManyUpdates
    , _InvalidActivation
    , _InvalidDocumentSchemaVersion
    , _MaxDocumentSizeExceeded
    , _InvalidUpdate
    , _CustomSchemaCountLimitExceededException
    , _InvalidTarget
    , _InvalidDocumentOperation
    , _InvocationDoesNotExist
    , _DocumentVersionLimitExceeded
    , _InvalidOutputLocation
    , _InvalidKeyId
    , _InvalidParameters
    , _InvalidResourceId
    , _InvalidNotificationConfig
    , _TotalSizeLimitExceededException
    , _TooManyTagsError
    , _DocumentPermissionLimit
    , _DuplicateDocumentContent
    , _DocumentAlreadyExists
    , _DocumentLimitExceeded
    , _InvalidFilter

    -- * AssociationFilterKey
    , AssociationFilterKey (..)

    -- * AssociationStatusName
    , AssociationStatusName (..)

    -- * AutomationExecutionFilterKey
    , AutomationExecutionFilterKey (..)

    -- * AutomationExecutionStatus
    , AutomationExecutionStatus (..)

    -- * CommandFilterKey
    , CommandFilterKey (..)

    -- * CommandInvocationStatus
    , CommandInvocationStatus (..)

    -- * CommandPluginStatus
    , CommandPluginStatus (..)

    -- * CommandStatus
    , CommandStatus (..)

    -- * DescribeActivationsFilterKeys
    , DescribeActivationsFilterKeys (..)

    -- * DocumentFilterKey
    , DocumentFilterKey (..)

    -- * DocumentHashType
    , DocumentHashType (..)

    -- * DocumentParameterType
    , DocumentParameterType (..)

    -- * DocumentPermissionType
    , DocumentPermissionType (..)

    -- * DocumentStatus
    , DocumentStatus (..)

    -- * DocumentType
    , DocumentType (..)

    -- * Fault
    , Fault (..)

    -- * InstanceInformationFilterKey
    , InstanceInformationFilterKey (..)

    -- * InventoryAttributeDataType
    , InventoryAttributeDataType (..)

    -- * InventoryQueryOperatorType
    , InventoryQueryOperatorType (..)

    -- * MaintenanceWindowExecutionStatus
    , MaintenanceWindowExecutionStatus (..)

    -- * MaintenanceWindowResourceType
    , MaintenanceWindowResourceType (..)

    -- * MaintenanceWindowTaskType
    , MaintenanceWindowTaskType (..)

    -- * NotificationEvent
    , NotificationEvent (..)

    -- * NotificationType
    , NotificationType (..)

    -- * ParameterType
    , ParameterType (..)

    -- * ParametersFilterKey
    , ParametersFilterKey (..)

    -- * PingStatus
    , PingStatus (..)

    -- * PlatformType
    , PlatformType (..)

    -- * ResourceType
    , ResourceType (..)

    -- * ResourceTypeForTagging
    , ResourceTypeForTagging (..)

    -- * Activation
    , Activation
    , activation
    , aExpired
    , aDefaultInstanceName
    , aActivationId
    , aCreatedDate
    , aRegistrationLimit
    , aExpirationDate
    , aDescription
    , aRegistrationsCount
    , aIAMRole

    -- * Association
    , Association
    , association
    , aAssociationId
    , aInstanceId
    , aOverview
    , aLastExecutionDate
    , aScheduleExpression
    , aName
    , aTargets
    , aDocumentVersion

    -- * AssociationDescription
    , AssociationDescription
    , associationDescription
    , adAssociationId
    , adInstanceId
    , adStatus
    , adLastSuccessfulExecutionDate
    , adOverview
    , adLastUpdateAssociationDate
    , adDate
    , adLastExecutionDate
    , adScheduleExpression
    , adName
    , adOutputLocation
    , adTargets
    , adParameters
    , adDocumentVersion

    -- * AssociationFilter
    , AssociationFilter
    , associationFilter
    , afKey
    , afValue

    -- * AssociationOverview
    , AssociationOverview
    , associationOverview
    , aoDetailedStatus
    , aoStatus
    , aoAssociationStatusAggregatedCount

    -- * AssociationStatus
    , AssociationStatus
    , associationStatus
    , asAdditionalInfo
    , asDate
    , asName
    , asMessage

    -- * AutomationExecution
    , AutomationExecution
    , automationExecution
    , aeDocumentName
    , aeExecutionEndTime
    , aeFailureMessage
    , aeAutomationExecutionStatus
    , aeOutputs
    , aeExecutionStartTime
    , aeParameters
    , aeDocumentVersion
    , aeAutomationExecutionId
    , aeStepExecutions

    -- * AutomationExecutionFilter
    , AutomationExecutionFilter
    , automationExecutionFilter
    , aefKey
    , aefValues

    -- * AutomationExecutionMetadata
    , AutomationExecutionMetadata
    , automationExecutionMetadata
    , aemLogFile
    , aemExecutedBy
    , aemDocumentName
    , aemExecutionEndTime
    , aemAutomationExecutionStatus
    , aemOutputs
    , aemExecutionStartTime
    , aemDocumentVersion
    , aemAutomationExecutionId

    -- * Command
    , Command
    , command
    , cStatus
    , cExpiresAfter
    , cNotificationConfig
    , cTargetCount
    , cOutputS3KeyPrefix
    , cDocumentName
    , cErrorCount
    , cStatusDetails
    , cMaxErrors
    , cInstanceIds
    , cOutputS3Region
    , cTargets
    , cCommandId
    , cParameters
    , cComment
    , cCompletedCount
    , cOutputS3BucketName
    , cMaxConcurrency
    , cRequestedDateTime
    , cServiceRole

    -- * CommandFilter
    , CommandFilter
    , commandFilter
    , cfKey
    , cfValue

    -- * CommandInvocation
    , CommandInvocation
    , commandInvocation
    , ciInstanceId
    , ciStatus
    , ciNotificationConfig
    , ciCommandPlugins
    , ciDocumentName
    , ciStandardErrorURL
    , ciStatusDetails
    , ciStandardOutputURL
    , ciCommandId
    , ciComment
    , ciTraceOutput
    , ciInstanceName
    , ciRequestedDateTime
    , ciServiceRole

    -- * CommandPlugin
    , CommandPlugin
    , commandPlugin
    , cpStatus
    , cpResponseStartDateTime
    , cpOutputS3KeyPrefix
    , cpStandardErrorURL
    , cpResponseCode
    , cpStatusDetails
    , cpOutput
    , cpStandardOutputURL
    , cpName
    , cpOutputS3Region
    , cpOutputS3BucketName
    , cpResponseFinishDateTime

    -- * CreateAssociationBatchRequestEntry
    , CreateAssociationBatchRequestEntry
    , createAssociationBatchRequestEntry
    , cabreInstanceId
    , cabreScheduleExpression
    , cabreOutputLocation
    , cabreTargets
    , cabreParameters
    , cabreDocumentVersion
    , cabreName

    -- * DescribeActivationsFilter
    , DescribeActivationsFilter
    , describeActivationsFilter
    , dafFilterKey
    , dafFilterValues

    -- * DocumentDefaultVersionDescription
    , DocumentDefaultVersionDescription
    , documentDefaultVersionDescription
    , ddvdDefaultVersion
    , ddvdName

    -- * DocumentDescription
    , DocumentDescription
    , documentDescription
    , dStatus
    , dDocumentType
    , dHash
    , dSchemaVersion
    , dSha1
    , dDefaultVersion
    , dOwner
    , dPlatformTypes
    , dCreatedDate
    , dName
    , dHashType
    , dParameters
    , dDocumentVersion
    , dDescription
    , dLatestVersion

    -- * DocumentFilter
    , DocumentFilter
    , documentFilter
    , dfKey
    , dfValue

    -- * DocumentIdentifier
    , DocumentIdentifier
    , documentIdentifier
    , diDocumentType
    , diSchemaVersion
    , diOwner
    , diPlatformTypes
    , diName
    , diDocumentVersion

    -- * DocumentParameter
    , DocumentParameter
    , documentParameter
    , dpName
    , dpDefaultValue
    , dpType
    , dpDescription

    -- * DocumentVersionInfo
    , DocumentVersionInfo
    , documentVersionInfo
    , dviCreatedDate
    , dviName
    , dviDocumentVersion
    , dviIsDefaultVersion

    -- * FailedCreateAssociation
    , FailedCreateAssociation
    , failedCreateAssociation
    , fcaEntry
    , fcaFault
    , fcaMessage

    -- * InstanceAggregatedAssociationOverview
    , InstanceAggregatedAssociationOverview
    , instanceAggregatedAssociationOverview
    , iaaoDetailedStatus
    , iaaoInstanceAssociationStatusAggregatedCount

    -- * InstanceAssociation
    , InstanceAssociation
    , instanceAssociation
    , iaAssociationId
    , iaInstanceId
    , iaContent

    -- * InstanceAssociationOutputLocation
    , InstanceAssociationOutputLocation
    , instanceAssociationOutputLocation
    , iaolS3Location

    -- * InstanceAssociationOutputURL
    , InstanceAssociationOutputURL
    , instanceAssociationOutputURL
    , iaouS3OutputURL

    -- * InstanceAssociationStatusInfo
    , InstanceAssociationStatusInfo
    , instanceAssociationStatusInfo
    , iasiAssociationId
    , iasiInstanceId
    , iasiDetailedStatus
    , iasiStatus
    , iasiOutputURL
    , iasiExecutionSummary
    , iasiName
    , iasiErrorCode
    , iasiDocumentVersion
    , iasiExecutionDate

    -- * InstanceInformation
    , InstanceInformation
    , instanceInformation
    , iiInstanceId
    , iiPingStatus
    , iiIPAddress
    , iiResourceType
    , iiRegistrationDate
    , iiPlatformVersion
    , iiIsLatestVersion
    , iiAgentVersion
    , iiLastPingDateTime
    , iiLastSuccessfulAssociationExecutionDate
    , iiActivationId
    , iiName
    , iiPlatformType
    , iiAssociationOverview
    , iiAssociationStatus
    , iiLastAssociationExecutionDate
    , iiPlatformName
    , iiComputerName
    , iiIAMRole

    -- * InstanceInformationFilter
    , InstanceInformationFilter
    , instanceInformationFilter
    , iifKey
    , iifValueSet

    -- * InstanceInformationStringFilter
    , InstanceInformationStringFilter
    , instanceInformationStringFilter
    , iisfKey
    , iisfValues

    -- * InventoryFilter
    , InventoryFilter
    , inventoryFilter
    , ifType
    , ifKey
    , ifValues

    -- * InventoryItem
    , InventoryItem
    , inventoryItem
    , iiContentHash
    , iiContent
    , iiTypeName
    , iiSchemaVersion
    , iiCaptureTime

    -- * InventoryItemAttribute
    , InventoryItemAttribute
    , inventoryItemAttribute
    , iiaName
    , iiaDataType

    -- * InventoryItemSchema
    , InventoryItemSchema
    , inventoryItemSchema
    , iisVersion
    , iisTypeName
    , iisAttributes

    -- * InventoryResultEntity
    , InventoryResultEntity
    , inventoryResultEntity
    , ireData
    , ireId

    -- * InventoryResultItem
    , InventoryResultItem
    , inventoryResultItem
    , iriContentHash
    , iriCaptureTime
    , iriTypeName
    , iriSchemaVersion
    , iriContent

    -- * LoggingInfo
    , LoggingInfo
    , loggingInfo
    , liS3KeyPrefix
    , liS3BucketName
    , liS3Region

    -- * MaintenanceWindowExecution
    , MaintenanceWindowExecution
    , maintenanceWindowExecution
    , mweStatus
    , mweStartTime
    , mweWindowExecutionId
    , mweStatusDetails
    , mweEndTime
    , mweWindowId

    -- * MaintenanceWindowExecutionTaskIdentity
    , MaintenanceWindowExecutionTaskIdentity
    , maintenanceWindowExecutionTaskIdentity
    , mwetiStatus
    , mwetiTaskExecutionId
    , mwetiStartTime
    , mwetiTaskType
    , mwetiTaskARN
    , mwetiWindowExecutionId
    , mwetiStatusDetails
    , mwetiEndTime

    -- * MaintenanceWindowExecutionTaskInvocationIdentity
    , MaintenanceWindowExecutionTaskInvocationIdentity
    , maintenanceWindowExecutionTaskInvocationIdentity
    , mwetiiStatus
    , mwetiiExecutionId
    , mwetiiTaskExecutionId
    , mwetiiStartTime
    , mwetiiInvocationId
    , mwetiiOwnerInformation
    , mwetiiWindowTargetId
    , mwetiiWindowExecutionId
    , mwetiiStatusDetails
    , mwetiiEndTime
    , mwetiiParameters

    -- * MaintenanceWindowFilter
    , MaintenanceWindowFilter
    , maintenanceWindowFilter
    , mwfValues
    , mwfKey

    -- * MaintenanceWindowIdentity
    , MaintenanceWindowIdentity
    , maintenanceWindowIdentity
    , mwiEnabled
    , mwiName
    , mwiCutoff
    , mwiDuration
    , mwiWindowId

    -- * MaintenanceWindowTarget
    , MaintenanceWindowTarget
    , maintenanceWindowTarget
    , mResourceType
    , mOwnerInformation
    , mWindowTargetId
    , mTargets
    , mWindowId

    -- * MaintenanceWindowTask
    , MaintenanceWindowTask
    , maintenanceWindowTask
    , mwtServiceRoleARN
    , mwtWindowTaskId
    , mwtTaskParameters
    , mwtPriority
    , mwtTaskARN
    , mwtMaxErrors
    , mwtTargets
    , mwtLoggingInfo
    , mwtType
    , mwtMaxConcurrency
    , mwtWindowId

    -- * MaintenanceWindowTaskParameterValueExpression
    , MaintenanceWindowTaskParameterValueExpression
    , maintenanceWindowTaskParameterValueExpression
    , mwtpveValues

    -- * NotificationConfig
    , NotificationConfig
    , notificationConfig
    , ncNotificationEvents
    , ncNotificationType
    , ncNotificationARN

    -- * Parameter
    , Parameter
    , parameter
    , pValue
    , pName
    , pType

    -- * ParameterHistory
    , ParameterHistory
    , parameterHistory
    , phLastModifiedDate
    , phKeyId
    , phValue
    , phName
    , phLastModifiedUser
    , phType
    , phDescription

    -- * ParameterMetadata
    , ParameterMetadata
    , parameterMetadata
    , pmLastModifiedDate
    , pmKeyId
    , pmName
    , pmLastModifiedUser
    , pmType
    , pmDescription

    -- * ParametersFilter
    , ParametersFilter
    , parametersFilter
    , pfKey
    , pfValues

    -- * ResultAttribute
    , ResultAttribute
    , resultAttribute
    , raTypeName

    -- * S3OutputLocation
    , S3OutputLocation
    , s3OutputLocation
    , solOutputS3KeyPrefix
    , solOutputS3Region
    , solOutputS3BucketName

    -- * S3OutputURL
    , S3OutputURL
    , s3OutputURL
    , souOutputURL

    -- * StepExecution
    , StepExecution
    , stepExecution
    , seInputs
    , seStepName
    , seExecutionEndTime
    , seFailureMessage
    , seResponse
    , seAction
    , seResponseCode
    , seStepStatus
    , seOutputs
    , seExecutionStartTime

    -- * Tag
    , Tag
    , tag
    , tagKey
    , tagValue

    -- * Target
    , Target
    , target
    , tValues
    , tKey
    ) where

import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Sign.V4
import           Network.AWS.SSM.Types.Product
import           Network.AWS.SSM.Types.Sum

-- | API version @2014-11-06@ of the Amazon Simple Systems Manager (SSM) SDK configuration.
ssm :: Service
ssm =
    Service
    { _svcAbbrev = "SSM"
    , _svcSigner = v4
    , _svcPrefix = "ssm"
    , _svcVersion = "2014-11-06"
    , _svcEndpoint = defaultEndpoint ssm
    , _svcTimeout = Just 70
    , _svcCheck = statusSuccess
    , _svcError = parseJSONError "SSM"
    , _svcRetry = retry
    }
  where
    retry =
        Exponential
        { _retryBase = 5.0e-2
        , _retryGrowth = 2
        , _retryAttempts = 5
        , _retryCheck = check
        }
    check e
      | has (hasStatus 429) e = Just "too_many_requests"
      | has (hasCode "ThrottlingException" . hasStatus 400) e =
          Just "throttling_exception"
      | has (hasCode "Throttling" . hasStatus 400) e = Just "throttling"
      | has (hasStatus 504) e = Just "gateway_timeout"
      | has (hasStatus 502) e = Just "bad_gateway"
      | has (hasStatus 503) e = Just "service_unavailable"
      | has (hasStatus 500) e = Just "general_server_error"
      | has (hasStatus 509) e = Just "limit_exceeded"
      | otherwise = Nothing

-- | An Automation document with the specified name and version could not be found.
--
--
_AutomationDefinitionVersionNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationDefinitionVersionNotFoundException =
    _ServiceError . hasCode "AutomationDefinitionVersionNotFoundException"

-- | The document version is not valid or does not exist.
--
--
_InvalidDocumentVersion :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentVersion = _ServiceError . hasCode "InvalidDocumentVersion"

-- | The schedule is invalid. Verify your cron or rate expression and try again.
--
--
_InvalidSchedule :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidSchedule = _ServiceError . hasCode "InvalidSchedule"

-- | The parameter type is not supported.
--
--
_UnsupportedParameterType :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedParameterType = _ServiceError . hasCode "UnsupportedParameterType"

-- | The plugin name is not valid.
--
--
_InvalidPluginName :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPluginName = _ServiceError . hasCode "InvalidPluginName"

-- | The document does not support the platform type of the given instance ID(s). For example, you sent an SSM document for a Windows instance to a Linux instance.
--
--
_UnsupportedPlatformType :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedPlatformType = _ServiceError . hasCode "UnsupportedPlatformType"

-- | The filter value is not valid. Verify the value and try again.
--
--
_InvalidFilterValue :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilterValue = _ServiceError . hasCode "InvalidFilterValue"

-- | One or more content items is not valid.
--
--
_InvalidItemContentException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidItemContentException =
    _ServiceError . hasCode "InvalidItemContentException"

-- | The permission type is not supported. /Share/ is the only supported permission type.
--
--
_InvalidPermissionType :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidPermissionType = _ServiceError . hasCode "InvalidPermissionType"

-- | You must disassociate an SSM document from all instances before you can delete it.
--
--
_AssociatedInstances :: AsError a => Getting (First ServiceError) a ServiceError
_AssociatedInstances = _ServiceError . hasCode "AssociatedInstances"

-- | The following problems can cause this exception:
--
--
-- You do not have permission to access the instance.
--
-- The SSM agent is not running. On managed instances and Linux instances, verify that the SSM agent is running. On EC2 Windows instances, verify that the EC2Config service is running.
--
-- The SSM agent or EC2Config service is not registered to the SSM endpoint. Try reinstalling the SSM agent or EC2Config service.
--
-- The instance is not in valid state. Valid states are: Running, Pending, Stopped, Stopping. Invalid states are: Shutting-down and Terminated.
--
_InvalidInstanceId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceId = _ServiceError . hasCode "InvalidInstanceId"

-- | The updated status is the same as the current status.
--
--
_StatusUnchanged :: AsError a => Getting (First ServiceError) a ServiceError
_StatusUnchanged = _ServiceError . hasCode "StatusUnchanged"

-- | The specified token is not valid.
--
--
_InvalidNextToken :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNextToken = _ServiceError . hasCode "InvalidNextToken"

-- | The S3 bucket does not exist.
--
--
_InvalidOutputFolder :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOutputFolder = _ServiceError . hasCode "InvalidOutputFolder"

-- | The activation ID is not valid. Verify the you entered the correct ActivationId or ActivationCode and try again.
--
--
_InvalidActivationId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidActivationId = _ServiceError . hasCode "InvalidActivationId"

-- | The specified inventory item result attribute is not valid.
--
--
_InvalidResultAttributeException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResultAttributeException =
    _ServiceError . hasCode "InvalidResultAttributeException"

-- | Error returned when the caller has exceeded the default resource limits (e.g. too many Maintenance Windows have been created).
--
--
_ResourceLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ResourceLimitExceededException =
    _ServiceError . hasCode "ResourceLimitExceededException"

-- | Prism for InvalidCommandId' errors.
_InvalidCommandId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidCommandId = _ServiceError . hasCode "InvalidCommandId"

-- | You cannot specify an instance ID in more than one association.
--
--
_DuplicateInstanceId :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateInstanceId = _ServiceError . hasCode "DuplicateInstanceId"

-- | The resource type is not valid. If you are attempting to tag an instance, the instance must be a registered, managed instance.
--
--
_InvalidResourceType :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceType = _ServiceError . hasCode "InvalidResourceType"

-- | Inventory item type schema version has to match supported versions in the service. Check output of @GetInventorySchema@ to see the available schema version for each type.
--
--
_UnsupportedInventorySchemaVersionException :: AsError a => Getting (First ServiceError) a ServiceError
_UnsupportedInventorySchemaVersionException =
    _ServiceError . hasCode "UnsupportedInventorySchemaVersionException"

-- | The specified document does not exist.
--
--
_InvalidDocument :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocument = _ServiceError . hasCode "InvalidDocument"

-- | An Automation document with the specified name could not be found.
--
--
_AutomationDefinitionNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationDefinitionNotFoundException =
    _ServiceError . hasCode "AutomationDefinitionNotFoundException"

-- | The specified key is not valid.
--
--
_InvalidFilterKey :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilterKey = _ServiceError . hasCode "InvalidFilterKey"

-- | The supplied parameters for invoking the specified Automation document are incorrect. For example, they may not match the set of parameters permitted for the specified Automation document.
--
--
_InvalidAutomationExecutionParametersException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidAutomationExecutionParametersException =
    _ServiceError . hasCode "InvalidAutomationExecutionParametersException"

-- | There is no automation execution information for the requested automation execution ID.
--
--
_AutomationExecutionNotFoundException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationExecutionNotFoundException =
    _ServiceError . hasCode "AutomationExecutionNotFoundException"

-- | The parameter type name is not valid.
--
--
_InvalidTypeNameException :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTypeNameException = _ServiceError . hasCode "InvalidTypeNameException"

-- | The inventory item size has exceeded the size limit.
--
--
_ItemSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_ItemSizeLimitExceededException =
    _ServiceError . hasCode "ItemSizeLimitExceededException"

-- | Error returned when the ID specified for a resource (e.g. a Maintenance Window) doesn’t exist.
--
--
_DoesNotExistException :: AsError a => Getting (First ServiceError) a ServiceError
_DoesNotExistException = _ServiceError . hasCode "DoesNotExistException"

-- | The number of simultaneously running Automation executions exceeded the allowable limit.
--
--
_AutomationExecutionLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_AutomationExecutionLimitExceededException =
    _ServiceError . hasCode "AutomationExecutionLimitExceededException"

-- | Error returned when an idempotent operation is retried and the parameters don’t match the original call to the API with the same idempotency token.
--
--
_IdempotentParameterMismatch :: AsError a => Getting (First ServiceError) a ServiceError
_IdempotentParameterMismatch =
    _ServiceError . hasCode "IdempotentParameterMismatch"

-- | The specified filter value is not valid.
--
--
_InvalidInstanceInformationFilterValue :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidInstanceInformationFilterValue =
    _ServiceError . hasCode "InvalidInstanceInformationFilterValue"

-- | The inventory item has invalid content.
--
--
_ItemContentMismatchException :: AsError a => Getting (First ServiceError) a ServiceError
_ItemContentMismatchException =
    _ServiceError . hasCode "ItemContentMismatchException"

-- | The parameter already exists. You can't create duplicate parameters.
--
--
_ParameterAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterAlreadyExists = _ServiceError . hasCode "ParameterAlreadyExists"

-- | The specified association already exists.
--
--
_AssociationAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationAlreadyExists = _ServiceError . hasCode "AssociationAlreadyExists"

-- | The content for the SSM document is not valid.
--
--
_InvalidDocumentContent :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentContent = _ServiceError . hasCode "InvalidDocumentContent"

-- | You have exceeded the number of parameters for this AWS account. Delete one or more parameters and try again.
--
--
_ParameterLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterLimitExceeded = _ServiceError . hasCode "ParameterLimitExceeded"

-- | You can have at most 2,000 active associations.
--
--
_AssociationLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationLimitExceeded = _ServiceError . hasCode "AssociationLimitExceeded"

-- | The specified association does not exist.
--
--
_AssociationDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_AssociationDoesNotExist = _ServiceError . hasCode "AssociationDoesNotExist"

-- | The parameter could not be found. Verify the name and try again.
--
--
_ParameterNotFound :: AsError a => Getting (First ServiceError) a ServiceError
_ParameterNotFound = _ServiceError . hasCode "ParameterNotFound"

-- | An error occurred on the server side.
--
--
_InternalServerError :: AsError a => Getting (First ServiceError) a ServiceError
_InternalServerError = _ServiceError . hasCode "InternalServerError"

-- | The role name can't contain invalid characters. Also verify that you specified an IAM role for notifications that includes the required trust policy. For information about configuring the IAM role for Run Command notifications, see <http://docs.aws.amazon.com/AWSEC2/latest/UserGuide/rc-sns.html Getting Amazon SNS Notifications When a Command Changes Status> in the /Amazon Elastic Compute Cloud User Guide / .
--
--
_InvalidRole :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidRole = _ServiceError . hasCode "InvalidRole"

-- | There are concurrent updates for a resource that supports one update at a time.
--
--
_TooManyUpdates :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyUpdates = _ServiceError . hasCode "TooManyUpdates"

-- | The activation is not valid. The activation might have been deleted, or the ActivationId and the ActivationCode do not match.
--
--
_InvalidActivation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidActivation = _ServiceError . hasCode "InvalidActivation"

-- | The version of the document schema is not supported.
--
--
_InvalidDocumentSchemaVersion :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentSchemaVersion =
    _ServiceError . hasCode "InvalidDocumentSchemaVersion"

-- | The size limit of an SSM document is 64 KB.
--
--
_MaxDocumentSizeExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_MaxDocumentSizeExceeded = _ServiceError . hasCode "MaxDocumentSizeExceeded"

-- | The update is not valid.
--
--
_InvalidUpdate :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidUpdate = _ServiceError . hasCode "InvalidUpdate"

-- | You have exceeded the limit for custom schemas. Delete one or more custom schemas and try again.
--
--
_CustomSchemaCountLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_CustomSchemaCountLimitExceededException =
    _ServiceError . hasCode "CustomSchemaCountLimitExceededException"

-- | The target is not valid or does not exist. It might not be configured for EC2 Systems Manager or you might not have permission to perform the operation.
--
--
_InvalidTarget :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidTarget = _ServiceError . hasCode "InvalidTarget"

-- | You attempted to delete a document while it is still shared. You must stop sharing the document before you can delete it.
--
--
_InvalidDocumentOperation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidDocumentOperation = _ServiceError . hasCode "InvalidDocumentOperation"

-- | The command ID and instance ID you specified did not match any invocations. Verify the command ID adn the instance ID and try again.
--
--
_InvocationDoesNotExist :: AsError a => Getting (First ServiceError) a ServiceError
_InvocationDoesNotExist = _ServiceError . hasCode "InvocationDoesNotExist"

-- | The document has too many versions. Delete one or more document versions and try again.
--
--
_DocumentVersionLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentVersionLimitExceeded =
    _ServiceError . hasCode "DocumentVersionLimitExceeded"

-- | The output location is not valid or does not exist.
--
--
_InvalidOutputLocation :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidOutputLocation = _ServiceError . hasCode "InvalidOutputLocation"

-- | The query key ID is not valid.
--
--
_InvalidKeyId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidKeyId = _ServiceError . hasCode "InvalidKeyId"

-- | You must specify values for all required parameters in the SSM document. You can only supply values to parameters defined in the SSM document.
--
--
_InvalidParameters :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidParameters = _ServiceError . hasCode "InvalidParameters"

-- | The resource ID is not valid. Verify that you entered the correct ID and try again.
--
--
_InvalidResourceId :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidResourceId = _ServiceError . hasCode "InvalidResourceId"

-- | One or more configuration items is not valid. Verify that a valid Amazon Resource Name (ARN) was provided for an Amazon SNS topic.
--
--
_InvalidNotificationConfig :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidNotificationConfig =
    _ServiceError . hasCode "InvalidNotificationConfig"

-- | The size of inventory data has exceeded the total size limit for the resource.
--
--
_TotalSizeLimitExceededException :: AsError a => Getting (First ServiceError) a ServiceError
_TotalSizeLimitExceededException =
    _ServiceError . hasCode "TotalSizeLimitExceededException"

-- | The @Targets@ parameter includes too many tags. Remove one or more tags and try the command again.
--
--
_TooManyTagsError :: AsError a => Getting (First ServiceError) a ServiceError
_TooManyTagsError = _ServiceError . hasCode "TooManyTagsError"

-- | The document cannot be shared with more AWS user accounts. You can share a document with a maximum of 20 accounts. You can publicly share up to five documents. If you need to increase this limit, contact AWS Support.
--
--
_DocumentPermissionLimit :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentPermissionLimit = _ServiceError . hasCode "DocumentPermissionLimit"

-- | The content of the association document matches another document. Change the content of the document and try again.
--
--
_DuplicateDocumentContent :: AsError a => Getting (First ServiceError) a ServiceError
_DuplicateDocumentContent = _ServiceError . hasCode "DuplicateDocumentContent"

-- | The specified SSM document already exists.
--
--
_DocumentAlreadyExists :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentAlreadyExists = _ServiceError . hasCode "DocumentAlreadyExists"

-- | You can have at most 200 active SSM documents.
--
--
_DocumentLimitExceeded :: AsError a => Getting (First ServiceError) a ServiceError
_DocumentLimitExceeded = _ServiceError . hasCode "DocumentLimitExceeded"

-- | The filter name is not valid. Verify the you entered the correct name and try again.
--
--
_InvalidFilter :: AsError a => Getting (First ServiceError) a ServiceError
_InvalidFilter = _ServiceError . hasCode "InvalidFilter"
