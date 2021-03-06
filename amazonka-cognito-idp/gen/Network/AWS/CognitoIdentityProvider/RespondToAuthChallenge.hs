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
-- Module      : Network.AWS.CognitoIdentityProvider.RespondToAuthChallenge
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Responds to the authentication challenge.
--
--
module Network.AWS.CognitoIdentityProvider.RespondToAuthChallenge
    (
    -- * Creating a Request
      respondToAuthChallenge
    , RespondToAuthChallenge
    -- * Request Lenses
    , rtacChallengeResponses
    , rtacSession
    , rtacClientId
    , rtacChallengeName

    -- * Destructuring the Response
    , respondToAuthChallengeResponse
    , RespondToAuthChallengeResponse
    -- * Response Lenses
    , rtacrsChallengeName
    , rtacrsChallengeParameters
    , rtacrsAuthenticationResult
    , rtacrsSession
    , rtacrsResponseStatus
    ) where

import           Network.AWS.CognitoIdentityProvider.Types
import           Network.AWS.CognitoIdentityProvider.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | The request to respond to an authentication challenge.
--
--
--
-- /See:/ 'respondToAuthChallenge' smart constructor.
data RespondToAuthChallenge = RespondToAuthChallenge'
    { _rtacChallengeResponses :: !(Maybe (Map Text Text))
    , _rtacSession            :: !(Maybe Text)
    , _rtacClientId           :: !(Sensitive Text)
    , _rtacChallengeName      :: !ChallengeNameType
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RespondToAuthChallenge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtacChallengeResponses' - The responses to the authentication challenge.
--
-- * 'rtacSession' - The session.
--
-- * 'rtacClientId' - The client ID.
--
-- * 'rtacChallengeName' - The name of the challenge.
respondToAuthChallenge
    :: Text -- ^ 'rtacClientId'
    -> ChallengeNameType -- ^ 'rtacChallengeName'
    -> RespondToAuthChallenge
respondToAuthChallenge pClientId_ pChallengeName_ =
    RespondToAuthChallenge'
    { _rtacChallengeResponses = Nothing
    , _rtacSession = Nothing
    , _rtacClientId = _Sensitive # pClientId_
    , _rtacChallengeName = pChallengeName_
    }

-- | The responses to the authentication challenge.
rtacChallengeResponses :: Lens' RespondToAuthChallenge (HashMap Text Text)
rtacChallengeResponses = lens _rtacChallengeResponses (\ s a -> s{_rtacChallengeResponses = a}) . _Default . _Map;

-- | The session.
rtacSession :: Lens' RespondToAuthChallenge (Maybe Text)
rtacSession = lens _rtacSession (\ s a -> s{_rtacSession = a});

-- | The client ID.
rtacClientId :: Lens' RespondToAuthChallenge Text
rtacClientId = lens _rtacClientId (\ s a -> s{_rtacClientId = a}) . _Sensitive;

-- | The name of the challenge.
rtacChallengeName :: Lens' RespondToAuthChallenge ChallengeNameType
rtacChallengeName = lens _rtacChallengeName (\ s a -> s{_rtacChallengeName = a});

instance AWSRequest RespondToAuthChallenge where
        type Rs RespondToAuthChallenge =
             RespondToAuthChallengeResponse
        request = postJSON cognitoIdentityProvider
        response
          = receiveJSON
              (\ s h x ->
                 RespondToAuthChallengeResponse' <$>
                   (x .?> "ChallengeName") <*>
                     (x .?> "ChallengeParameters" .!@ mempty)
                     <*> (x .?> "AuthenticationResult")
                     <*> (x .?> "Session")
                     <*> (pure (fromEnum s)))

instance Hashable RespondToAuthChallenge

instance NFData RespondToAuthChallenge

instance ToHeaders RespondToAuthChallenge where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("AWSCognitoIdentityProviderService.RespondToAuthChallenge"
                       :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON RespondToAuthChallenge where
        toJSON RespondToAuthChallenge'{..}
          = object
              (catMaybes
                 [("ChallengeResponses" .=) <$>
                    _rtacChallengeResponses,
                  ("Session" .=) <$> _rtacSession,
                  Just ("ClientId" .= _rtacClientId),
                  Just ("ChallengeName" .= _rtacChallengeName)])

instance ToPath RespondToAuthChallenge where
        toPath = const "/"

instance ToQuery RespondToAuthChallenge where
        toQuery = const mempty

-- | The response to respond to the authentication challenge.
--
--
--
-- /See:/ 'respondToAuthChallengeResponse' smart constructor.
data RespondToAuthChallengeResponse = RespondToAuthChallengeResponse'
    { _rtacrsChallengeName        :: !(Maybe ChallengeNameType)
    , _rtacrsChallengeParameters  :: !(Maybe (Map Text Text))
    , _rtacrsAuthenticationResult :: !(Maybe AuthenticationResultType)
    , _rtacrsSession              :: !(Maybe Text)
    , _rtacrsResponseStatus       :: !Int
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'RespondToAuthChallengeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtacrsChallengeName' - The challenge name.
--
-- * 'rtacrsChallengeParameters' - The challenge parameters.
--
-- * 'rtacrsAuthenticationResult' - The result returned by the server in response to the request to respond to the authentication challenge.
--
-- * 'rtacrsSession' - The session.
--
-- * 'rtacrsResponseStatus' - -- | The response status code.
respondToAuthChallengeResponse
    :: Int -- ^ 'rtacrsResponseStatus'
    -> RespondToAuthChallengeResponse
respondToAuthChallengeResponse pResponseStatus_ =
    RespondToAuthChallengeResponse'
    { _rtacrsChallengeName = Nothing
    , _rtacrsChallengeParameters = Nothing
    , _rtacrsAuthenticationResult = Nothing
    , _rtacrsSession = Nothing
    , _rtacrsResponseStatus = pResponseStatus_
    }

-- | The challenge name.
rtacrsChallengeName :: Lens' RespondToAuthChallengeResponse (Maybe ChallengeNameType)
rtacrsChallengeName = lens _rtacrsChallengeName (\ s a -> s{_rtacrsChallengeName = a});

-- | The challenge parameters.
rtacrsChallengeParameters :: Lens' RespondToAuthChallengeResponse (HashMap Text Text)
rtacrsChallengeParameters = lens _rtacrsChallengeParameters (\ s a -> s{_rtacrsChallengeParameters = a}) . _Default . _Map;

-- | The result returned by the server in response to the request to respond to the authentication challenge.
rtacrsAuthenticationResult :: Lens' RespondToAuthChallengeResponse (Maybe AuthenticationResultType)
rtacrsAuthenticationResult = lens _rtacrsAuthenticationResult (\ s a -> s{_rtacrsAuthenticationResult = a});

-- | The session.
rtacrsSession :: Lens' RespondToAuthChallengeResponse (Maybe Text)
rtacrsSession = lens _rtacrsSession (\ s a -> s{_rtacrsSession = a});

-- | -- | The response status code.
rtacrsResponseStatus :: Lens' RespondToAuthChallengeResponse Int
rtacrsResponseStatus = lens _rtacrsResponseStatus (\ s a -> s{_rtacrsResponseStatus = a});

instance NFData RespondToAuthChallengeResponse
