{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.S3.V2006_03_01
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

module Network.AWS.S3.V2006_03_01
    ( module Network.AWS.Types
--    , module Network.AWS.S3.V2006_03_01.AbortMultipartUpload
--    , module Network.AWS.S3.V2006_03_01.CompleteMultipartUpload
--    , module Network.AWS.S3.V2006_03_01.DeleteBucket
--    , module Network.AWS.S3.V2006_03_01.DeleteBucketCors
--    , module Network.AWS.S3.V2006_03_01.DeleteBucketLifecycle
--    , module Network.AWS.S3.V2006_03_01.DeleteBucketPolicy
--    , module Network.AWS.S3.V2006_03_01.DeleteBucketTagging
--    , module Network.AWS.S3.V2006_03_01.DeleteBucketWebsite
--    , module Network.AWS.S3.V2006_03_01.DeleteMultipleObjects
--    , module Network.AWS.S3.V2006_03_01.DeleteObject
--    , module Network.AWS.S3.V2006_03_01.GetBucket
--    , module Network.AWS.S3.V2006_03_01.GetBucketAcl
--    , module Network.AWS.S3.V2006_03_01.GetBucketCors
--    , module Network.AWS.S3.V2006_03_01.GetBucketLifecycle
--    , module Network.AWS.S3.V2006_03_01.GetBucketLocation
--    , module Network.AWS.S3.V2006_03_01.GetBucketLogging
--    , module Network.AWS.S3.V2006_03_01.GetBucketNotification
--    , module Network.AWS.S3.V2006_03_01.GetBucketObjectVersions
--    , module Network.AWS.S3.V2006_03_01.GetBucketPolicy
--    , module Network.AWS.S3.V2006_03_01.GetBucketRequestPayment
--    , module Network.AWS.S3.V2006_03_01.GetBucketTagging
--    , module Network.AWS.S3.V2006_03_01.GetBucketVersioning
--    , module Network.AWS.S3.V2006_03_01.GetBucketWebsite
--    , module Network.AWS.S3.V2006_03_01.GetObject
--    , module Network.AWS.S3.V2006_03_01.GetObjectAcl
--    , module Network.AWS.S3.V2006_03_01.GetObjectTorrent
--    , module Network.AWS.S3.V2006_03_01.GetService
--    , module Network.AWS.S3.V2006_03_01.HeadBucket
--    , module Network.AWS.S3.V2006_03_01.HeadObject
--    , module Network.AWS.S3.V2006_03_01.InitiateMultipartUpload
--    , module Network.AWS.S3.V2006_03_01.ListMultipartUploads
--    , module Network.AWS.S3.V2006_03_01.ListParts
--    , module Network.AWS.S3.V2006_03_01.PostObjectRestore
--    , module Network.AWS.S3.V2006_03_01.PutBucket
--    , module Network.AWS.S3.V2006_03_01.PutBucketAcl
--    , module Network.AWS.S3.V2006_03_01.PutBucketCors
--    , module Network.AWS.S3.V2006_03_01.PutBucketLifecycle
--    , module Network.AWS.S3.V2006_03_01.PutBucketLogging
--    , module Network.AWS.S3.V2006_03_01.PutBucketNotification
--    , module Network.AWS.S3.V2006_03_01.PutBucketPolicy
--    , module Network.AWS.S3.V2006_03_01.PutBucketRequestPayment
--    , module Network.AWS.S3.V2006_03_01.PutBucketTagging
--    , module Network.AWS.S3.V2006_03_01.PutBucketVersioning
--    , module Network.AWS.S3.V2006_03_01.PutBucketWebsite
--    , module Network.AWS.S3.V2006_03_01.PutObject
--    , module Network.AWS.S3.V2006_03_01.PutObjectAcl
--    , module Network.AWS.S3.V2006_03_01.PutObjectCopy
--    , module Network.AWS.S3.V2006_03_01.UploadPart
--    , module Network.AWS.S3.V2006_03_01.UploadPartCopy
    ) where

import Network.AWS.Types
-- Commented until record field disambiguation is implemented
-- import Network.AWS.S3.V2006_03_01.AbortMultipartUpload
-- import Network.AWS.S3.V2006_03_01.CompleteMultipartUpload
-- import Network.AWS.S3.V2006_03_01.DeleteBucket
-- import Network.AWS.S3.V2006_03_01.DeleteBucketCors
-- import Network.AWS.S3.V2006_03_01.DeleteBucketLifecycle
-- import Network.AWS.S3.V2006_03_01.DeleteBucketPolicy
-- import Network.AWS.S3.V2006_03_01.DeleteBucketTagging
-- import Network.AWS.S3.V2006_03_01.DeleteBucketWebsite
-- import Network.AWS.S3.V2006_03_01.DeleteMultipleObjects
-- import Network.AWS.S3.V2006_03_01.DeleteObject
-- import Network.AWS.S3.V2006_03_01.GetBucket
-- import Network.AWS.S3.V2006_03_01.GetBucketAcl
-- import Network.AWS.S3.V2006_03_01.GetBucketCors
-- import Network.AWS.S3.V2006_03_01.GetBucketLifecycle
-- import Network.AWS.S3.V2006_03_01.GetBucketLocation
-- import Network.AWS.S3.V2006_03_01.GetBucketLogging
-- import Network.AWS.S3.V2006_03_01.GetBucketNotification
-- import Network.AWS.S3.V2006_03_01.GetBucketObjectVersions
-- import Network.AWS.S3.V2006_03_01.GetBucketPolicy
-- import Network.AWS.S3.V2006_03_01.GetBucketRequestPayment
-- import Network.AWS.S3.V2006_03_01.GetBucketTagging
-- import Network.AWS.S3.V2006_03_01.GetBucketVersioning
-- import Network.AWS.S3.V2006_03_01.GetBucketWebsite
-- import Network.AWS.S3.V2006_03_01.GetObject
-- import Network.AWS.S3.V2006_03_01.GetObjectAcl
-- import Network.AWS.S3.V2006_03_01.GetObjectTorrent
-- import Network.AWS.S3.V2006_03_01.GetService
-- import Network.AWS.S3.V2006_03_01.HeadBucket
-- import Network.AWS.S3.V2006_03_01.HeadObject
-- import Network.AWS.S3.V2006_03_01.InitiateMultipartUpload
-- import Network.AWS.S3.V2006_03_01.ListMultipartUploads
-- import Network.AWS.S3.V2006_03_01.ListParts
-- import Network.AWS.S3.V2006_03_01.PostObjectRestore
-- import Network.AWS.S3.V2006_03_01.PutBucket
-- import Network.AWS.S3.V2006_03_01.PutBucketAcl
-- import Network.AWS.S3.V2006_03_01.PutBucketCors
-- import Network.AWS.S3.V2006_03_01.PutBucketLifecycle
-- import Network.AWS.S3.V2006_03_01.PutBucketLogging
-- import Network.AWS.S3.V2006_03_01.PutBucketNotification
-- import Network.AWS.S3.V2006_03_01.PutBucketPolicy
-- import Network.AWS.S3.V2006_03_01.PutBucketRequestPayment
-- import Network.AWS.S3.V2006_03_01.PutBucketTagging
-- import Network.AWS.S3.V2006_03_01.PutBucketVersioning
-- import Network.AWS.S3.V2006_03_01.PutBucketWebsite
-- import Network.AWS.S3.V2006_03_01.PutObject
-- import Network.AWS.S3.V2006_03_01.PutObjectAcl
-- import Network.AWS.S3.V2006_03_01.PutObjectCopy
-- import Network.AWS.S3.V2006_03_01.UploadPart
-- import Network.AWS.S3.V2006_03_01.UploadPartCopy
