{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StepFunctions
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __AWS Step Functions__
--
-- AWS Step Functions is a web service that enables you to coordinate the components of distributed applications and microservices using visual workflows. You build applications from individual components that each perform a discrete function, or /task/ , allowing you to scale and change applications quickly. Step Functions provides a graphical console to visualize the components of your application as a series of steps. It automatically triggers and tracks each step, and retries when there are errors, so your application executes in order and as expected, every time. Step Functions logs the state of each step, so when things do go wrong, you can diagnose and debug problems quickly.
--
-- Step Functions manages the operations and underlying infrastructure for you to ensure your application is available at any scale. You can run tasks on the AWS cloud, on your own servers, or an any system that has access to AWS. Step Functions can be accessed and used with the Step Functions console, the AWS SDKs (included with your Beta release invitation email), or an HTTP API (the subject of this document).
--
module Network.AWS.StepFunctions
    (
    -- * Service Configuration
      stepFunctions

    -- * Errors
    -- $errors

    -- ** ExecutionLimitExceeded
    , _ExecutionLimitExceeded

    -- ** InvalidDefinition
    , _InvalidDefinition

    -- ** StateMachineLimitExceeded
    , _StateMachineLimitExceeded

    -- ** ExecutionAlreadyExists
    , _ExecutionAlreadyExists

    -- ** StateMachineAlreadyExists
    , _StateMachineAlreadyExists

    -- ** TaskTimedOut
    , _TaskTimedOut

    -- ** InvalidExecutionInput
    , _InvalidExecutionInput

    -- ** InvalidOutput
    , _InvalidOutput

    -- ** InvalidName
    , _InvalidName

    -- ** TaskDoesNotExist
    , _TaskDoesNotExist

    -- ** ActivityDoesNotExist
    , _ActivityDoesNotExist

    -- ** StateMachineDeleting
    , _StateMachineDeleting

    -- ** InvalidARN
    , _InvalidARN

    -- ** InvalidToken
    , _InvalidToken

    -- ** ActivityWorkerLimitExceeded
    , _ActivityWorkerLimitExceeded

    -- ** ActivityLimitExceeded
    , _ActivityLimitExceeded

    -- ** ExecutionDoesNotExist
    , _ExecutionDoesNotExist

    -- ** StateMachineDoesNotExist
    , _StateMachineDoesNotExist

    -- * Waiters
    -- $waiters

    -- * Operations
    -- $operations

    -- ** DeleteActivity
    , module Network.AWS.StepFunctions.DeleteActivity

    -- ** DescribeStateMachine
    , module Network.AWS.StepFunctions.DescribeStateMachine

    -- ** StopExecution
    , module Network.AWS.StepFunctions.StopExecution

    -- ** DescribeActivity
    , module Network.AWS.StepFunctions.DescribeActivity

    -- ** ListStateMachines
    , module Network.AWS.StepFunctions.ListStateMachines

    -- ** ListExecutions
    , module Network.AWS.StepFunctions.ListExecutions

    -- ** DeleteStateMachine
    , module Network.AWS.StepFunctions.DeleteStateMachine

    -- ** GetActivityTask
    , module Network.AWS.StepFunctions.GetActivityTask

    -- ** CreateActivity
    , module Network.AWS.StepFunctions.CreateActivity

    -- ** ListActivities
    , module Network.AWS.StepFunctions.ListActivities

    -- ** SendTaskHeartbeat
    , module Network.AWS.StepFunctions.SendTaskHeartbeat

    -- ** SendTaskFailure
    , module Network.AWS.StepFunctions.SendTaskFailure

    -- ** DescribeExecution
    , module Network.AWS.StepFunctions.DescribeExecution

    -- ** SendTaskSuccess
    , module Network.AWS.StepFunctions.SendTaskSuccess

    -- ** StartExecution
    , module Network.AWS.StepFunctions.StartExecution

    -- ** GetExecutionHistory
    , module Network.AWS.StepFunctions.GetExecutionHistory

    -- ** CreateStateMachine
    , module Network.AWS.StepFunctions.CreateStateMachine

    -- * Types

    -- ** ExecutionStatus
    , ExecutionStatus (..)

    -- ** HistoryEventType
    , HistoryEventType (..)

    -- ** StateMachineStatus
    , StateMachineStatus (..)

    -- ** ActivityFailedEventDetails
    , ActivityFailedEventDetails
    , activityFailedEventDetails
    , afedError
    , afedCause

    -- ** ActivityListItem
    , ActivityListItem
    , activityListItem
    , aliActivityARN
    , aliName
    , aliCreationDate

    -- ** ActivityScheduleFailedEventDetails
    , ActivityScheduleFailedEventDetails
    , activityScheduleFailedEventDetails
    , asfedError
    , asfedCause

    -- ** ActivityScheduledEventDetails
    , ActivityScheduledEventDetails
    , activityScheduledEventDetails
    , asedHeartbeatInSeconds
    , asedInput
    , asedTimeoutInSeconds
    , asedResource

    -- ** ActivityStartedEventDetails
    , ActivityStartedEventDetails
    , activityStartedEventDetails
    , asedWorkerName

    -- ** ActivitySucceededEventDetails
    , ActivitySucceededEventDetails
    , activitySucceededEventDetails
    , asedOutput

    -- ** ActivityTimedOutEventDetails
    , ActivityTimedOutEventDetails
    , activityTimedOutEventDetails
    , atoedError
    , atoedCause

    -- ** ExecutionAbortedEventDetails
    , ExecutionAbortedEventDetails
    , executionAbortedEventDetails
    , eaedError
    , eaedCause

    -- ** ExecutionFailedEventDetails
    , ExecutionFailedEventDetails
    , executionFailedEventDetails
    , efedError
    , efedCause

    -- ** ExecutionListItem
    , ExecutionListItem
    , executionListItem
    , eliStopDate
    , eliExecutionARN
    , eliStateMachineARN
    , eliName
    , eliStatus
    , eliStartDate

    -- ** ExecutionStartedEventDetails
    , ExecutionStartedEventDetails
    , executionStartedEventDetails
    , esedInput
    , esedRoleARN

    -- ** ExecutionSucceededEventDetails
    , ExecutionSucceededEventDetails
    , executionSucceededEventDetails
    , esedOutput

    -- ** ExecutionTimedOutEventDetails
    , ExecutionTimedOutEventDetails
    , executionTimedOutEventDetails
    , etoedError
    , etoedCause

    -- ** HistoryEvent
    , HistoryEvent
    , historyEvent
    , heActivityStartedEventDetails
    , heLambdaFunctionStartFailedEventDetails
    , heStateExitedEventDetails
    , heLambdaFunctionSucceededEventDetails
    , heActivitySucceededEventDetails
    , heLambdaFunctionTimedOutEventDetails
    , heActivityTimedOutEventDetails
    , heExecutionFailedEventDetails
    , heExecutionAbortedEventDetails
    , heExecutionSucceededEventDetails
    , heLambdaFunctionScheduledEventDetails
    , heActivityScheduledEventDetails
    , heExecutionStartedEventDetails
    , heActivityScheduleFailedEventDetails
    , heLambdaFunctionScheduleFailedEventDetails
    , heStateEnteredEventDetails
    , hePreviousEventId
    , heActivityFailedEventDetails
    , heLambdaFunctionFailedEventDetails
    , heExecutionTimedOutEventDetails
    , heTimestamp
    , heType
    , heId

    -- ** LambdaFunctionFailedEventDetails
    , LambdaFunctionFailedEventDetails
    , lambdaFunctionFailedEventDetails
    , lffedError
    , lffedCause

    -- ** LambdaFunctionScheduleFailedEventDetails
    , LambdaFunctionScheduleFailedEventDetails
    , lambdaFunctionScheduleFailedEventDetails
    , lError
    , lCause

    -- ** LambdaFunctionScheduledEventDetails
    , LambdaFunctionScheduledEventDetails
    , lambdaFunctionScheduledEventDetails
    , lfsedInput
    , lfsedTimeoutInSeconds
    , lfsedResource

    -- ** LambdaFunctionStartFailedEventDetails
    , LambdaFunctionStartFailedEventDetails
    , lambdaFunctionStartFailedEventDetails
    , lfsfedError
    , lfsfedCause

    -- ** LambdaFunctionSucceededEventDetails
    , LambdaFunctionSucceededEventDetails
    , lambdaFunctionSucceededEventDetails
    , lfsedOutput

    -- ** LambdaFunctionTimedOutEventDetails
    , LambdaFunctionTimedOutEventDetails
    , lambdaFunctionTimedOutEventDetails
    , lftoedError
    , lftoedCause

    -- ** StateEnteredEventDetails
    , StateEnteredEventDetails
    , stateEnteredEventDetails
    , sInput
    , sName

    -- ** StateExitedEventDetails
    , StateExitedEventDetails
    , stateExitedEventDetails
    , seedOutput
    , seedName

    -- ** StateMachineListItem
    , StateMachineListItem
    , stateMachineListItem
    , smliStateMachineARN
    , smliName
    , smliCreationDate
    ) where

import           Network.AWS.StepFunctions.CreateActivity
import           Network.AWS.StepFunctions.CreateStateMachine
import           Network.AWS.StepFunctions.DeleteActivity
import           Network.AWS.StepFunctions.DeleteStateMachine
import           Network.AWS.StepFunctions.DescribeActivity
import           Network.AWS.StepFunctions.DescribeExecution
import           Network.AWS.StepFunctions.DescribeStateMachine
import           Network.AWS.StepFunctions.GetActivityTask
import           Network.AWS.StepFunctions.GetExecutionHistory
import           Network.AWS.StepFunctions.ListActivities
import           Network.AWS.StepFunctions.ListExecutions
import           Network.AWS.StepFunctions.ListStateMachines
import           Network.AWS.StepFunctions.SendTaskFailure
import           Network.AWS.StepFunctions.SendTaskHeartbeat
import           Network.AWS.StepFunctions.SendTaskSuccess
import           Network.AWS.StepFunctions.StartExecution
import           Network.AWS.StepFunctions.StopExecution
import           Network.AWS.StepFunctions.Types
import           Network.AWS.StepFunctions.Waiters

{- $errors
Error matchers are designed for use with the functions provided by
<http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
This allows catching (and rethrowing) service specific errors returned
by 'StepFunctions'.
-}

{- $operations
Some AWS operations return results that are incomplete and require subsequent
requests in order to obtain the entire result set. The process of sending
subsequent requests to continue where a previous request left off is called
pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
1000 objects at a time, and you must send subsequent requests with the
appropriate Marker in order to retrieve the next page of results.

Operations that have an 'AWSPager' instance can transparently perform subsequent
requests, correctly setting Markers and other request facets to iterate through
the entire result set of a truncated API operation. Operations which support
this have an additional note in the documentation.

Many operations have the ability to filter results on the server side. See the
individual operation parameters for details.
-}

{- $waiters
Waiters poll by repeatedly sending a request until some remote success condition
configured by the 'Wait' specification is fulfilled. The 'Wait' specification
determines how many attempts should be made, in addition to delay and retry strategies.
-}
