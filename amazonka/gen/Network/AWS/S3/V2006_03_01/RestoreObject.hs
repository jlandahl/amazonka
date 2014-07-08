{-# LANGUAGE DeriveGeneric               #-}
{-# LANGUAGE OverloadedStrings           #-}
{-# LANGUAGE RecordWildCards             #-}
{-# LANGUAGE TypeFamilies                #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Module      : Network.AWS.S3.V2006_03_01.RestoreObject
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Restores an archived copy of an object back into Amazon S3.
module Network.AWS.S3.V2006_03_01.RestoreObject where

import           Data.ByteString     (ByteString)
import           Data.Default
import           Data.HashMap.Strict (HashMap)
import           Data.Maybe
import           Data.Monoid
import           Data.Text           (Text)
import qualified Data.Text           as Text
import           GHC.Generics
import           Network.AWS.Data
import           Network.AWS.Response
import           Network.AWS.Request.RestS3
import           Network.AWS.Types   hiding (Error)
import           Network.AWS.S3.V2006_03_01.Types
import           Prelude             hiding (head)

-- | Smart constructor utilising default fields to
-- specify the minimum viable RestoreObject request.
restoreObject :: BucketName -- ^ 'rorBucket'
              -> ObjectKey -- ^ 'rorKey'
              -> RestoreRequest -- ^ 'rorRestoreRequest'
              -> RestoreObject
restoreObject p1 p2 p3 = RestoreObject
    { rorBucket = p1
    , rorKey = p2
    , rorRestoreRequest = p3
    , rorVersionId = Nothing
    }

data RestoreObject = RestoreObject
    { rorBucket :: BucketName
    , rorKey :: ObjectKey
    , rorRestoreRequest :: RestoreRequest
    , rorVersionId :: Maybe ObjectVersionId
    } deriving (Eq, Show, Generic)

instance ToPath RestoreObject where
    toPath RestoreObject{..} = mconcat
        [ "/"
        , toBS rorBucket
        , "/"
        , toBS rorKey
        ]

instance ToQuery RestoreObject

instance ToHeaders RestoreObject

instance ToBody RestoreObject where
    toBody = undefined -- toBody . rorRestoreRequest

instance AWSRequest RestoreObject where
    type Sv RestoreObject = S3

    request  = post
fromList [("payload",Null),("name",String "RestoreObjectResponse"),("shape",Object fromList [("streaming",Bool False),("location",String "body"),("pattern",Null),("required",Bool False),("min_length",Number 0.0),("max_length",Number 0.0),("name",Null),("documentation",Null),("common",Object fromList [("streaming",Bool False),("location",String "body"),("required",Bool False),("name",Null),("documentation",Null),("location_name",Null),("xml_name",Null)]),("location_name",Null),("type",String "Text"),("xml_name",Null)]),("fields",Array (fromList []))]

data instance Rs RestoreObject = RestoreObjectResponse
    deriving (Eq, Show, Generic)
