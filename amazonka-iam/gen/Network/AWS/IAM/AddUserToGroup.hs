{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.AddUserToGroup
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds the specified user to the specified group.
--
--
module Network.AWS.IAM.AddUserToGroup
    (
    -- * Creating a Request
      addUserToGroup
    , AddUserToGroup
    -- * Request Lenses
    , autgGroupName
    , autgUserName

    -- * Destructuring the Response
    , addUserToGroupResponse
    , AddUserToGroupResponse
    ) where

import           Network.AWS.IAM.Types
import           Network.AWS.IAM.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'addUserToGroup' smart constructor.
data AddUserToGroup = AddUserToGroup'
    { _autgGroupName :: !Text
    , _autgUserName  :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddUserToGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autgGroupName' - The name of the group to update. The <http://wikipedia.org/wiki/regex regex pattern> for this parameter is a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
--
-- * 'autgUserName' - The name of the user to add. The <http://wikipedia.org/wiki/regex regex pattern> for this parameter is a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
addUserToGroup
    :: Text -- ^ 'autgGroupName'
    -> Text -- ^ 'autgUserName'
    -> AddUserToGroup
addUserToGroup pGroupName_ pUserName_ =
    AddUserToGroup'
    { _autgGroupName = pGroupName_
    , _autgUserName = pUserName_
    }

-- | The name of the group to update. The <http://wikipedia.org/wiki/regex regex pattern> for this parameter is a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
autgGroupName :: Lens' AddUserToGroup Text
autgGroupName = lens _autgGroupName (\ s a -> s{_autgGroupName = a});

-- | The name of the user to add. The <http://wikipedia.org/wiki/regex regex pattern> for this parameter is a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: =,.@-
autgUserName :: Lens' AddUserToGroup Text
autgUserName = lens _autgUserName (\ s a -> s{_autgUserName = a});

instance AWSRequest AddUserToGroup where
        type Rs AddUserToGroup = AddUserToGroupResponse
        request = postQuery iam
        response = receiveNull AddUserToGroupResponse'

instance Hashable AddUserToGroup

instance NFData AddUserToGroup

instance ToHeaders AddUserToGroup where
        toHeaders = const mempty

instance ToPath AddUserToGroup where
        toPath = const "/"

instance ToQuery AddUserToGroup where
        toQuery AddUserToGroup'{..}
          = mconcat
              ["Action" =: ("AddUserToGroup" :: ByteString),
               "Version" =: ("2010-05-08" :: ByteString),
               "GroupName" =: _autgGroupName,
               "UserName" =: _autgUserName]

-- | /See:/ 'addUserToGroupResponse' smart constructor.
data AddUserToGroupResponse =
    AddUserToGroupResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'AddUserToGroupResponse' with the minimum fields required to make a request.
--
addUserToGroupResponse
    :: AddUserToGroupResponse
addUserToGroupResponse = AddUserToGroupResponse'

instance NFData AddUserToGroupResponse
