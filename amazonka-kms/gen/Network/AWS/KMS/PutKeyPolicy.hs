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
-- Module      : Network.AWS.KMS.PutKeyPolicy
-- Copyright   : (c) 2013-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches a key policy to the specified customer master key (CMK).
--
--
-- For more information about key policies, see <http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html Key Policies> in the /AWS Key Management Service Developer Guide/ .
--
module Network.AWS.KMS.PutKeyPolicy
    (
    -- * Creating a Request
      putKeyPolicy
    , PutKeyPolicy
    -- * Request Lenses
    , pkpBypassPolicyLockoutSafetyCheck
    , pkpKeyId
    , pkpPolicyName
    , pkpPolicy

    -- * Destructuring the Response
    , putKeyPolicyResponse
    , PutKeyPolicyResponse
    ) where

import           Network.AWS.KMS.Types
import           Network.AWS.KMS.Types.Product
import           Network.AWS.Lens
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'putKeyPolicy' smart constructor.
data PutKeyPolicy = PutKeyPolicy'
    { _pkpBypassPolicyLockoutSafetyCheck :: !(Maybe Bool)
    , _pkpKeyId                          :: !Text
    , _pkpPolicyName                     :: !Text
    , _pkpPolicy                         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PutKeyPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pkpBypassPolicyLockoutSafetyCheck' - A flag to indicate whether to bypass the key policy lockout safety check. /Important:/ Setting this value to true increases the likelihood that the CMK becomes unmanageable. Do not set this value to true indiscriminately. For more information, refer to the scenario in the <http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section in the /AWS Key Management Service Developer Guide/ . Use this parameter only when you intend to prevent the principal making the request from making a subsequent @PutKeyPolicy@ request on the CMK. The default value is false.
--
-- * 'pkpKeyId' - A unique identifier for the CMK. Use the CMK's unique identifier or its Amazon Resource Name (ARN). For example:     * Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab     * ARN: arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
--
-- * 'pkpPolicyName' - The name of the key policy. This value must be @default@ .
--
-- * 'pkpPolicy' - The key policy to attach to the CMK. If you do not set @BypassPolicyLockoutSafetyCheck@ to true, the policy must meet the following criteria:     * It must allow the principal making the @PutKeyPolicy@ request to make a subsequent @PutKeyPolicy@ request on the CMK. This reduces the likelihood that the CMK becomes unmanageable. For more information, refer to the scenario in the <http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section in the /AWS Key Management Service Developer Guide/ .     * The principal(s) specified in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before specifying the new principal in a key policy because the new principal might not immediately be visible to AWS KMS. For more information, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency Changes that I make are not always immediately visible> in the /IAM User Guide/ . The policy size limit is 32 KiB (32768 bytes).
putKeyPolicy
    :: Text -- ^ 'pkpKeyId'
    -> Text -- ^ 'pkpPolicyName'
    -> Text -- ^ 'pkpPolicy'
    -> PutKeyPolicy
putKeyPolicy pKeyId_ pPolicyName_ pPolicy_ =
    PutKeyPolicy'
    { _pkpBypassPolicyLockoutSafetyCheck = Nothing
    , _pkpKeyId = pKeyId_
    , _pkpPolicyName = pPolicyName_
    , _pkpPolicy = pPolicy_
    }

-- | A flag to indicate whether to bypass the key policy lockout safety check. /Important:/ Setting this value to true increases the likelihood that the CMK becomes unmanageable. Do not set this value to true indiscriminately. For more information, refer to the scenario in the <http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section in the /AWS Key Management Service Developer Guide/ . Use this parameter only when you intend to prevent the principal making the request from making a subsequent @PutKeyPolicy@ request on the CMK. The default value is false.
pkpBypassPolicyLockoutSafetyCheck :: Lens' PutKeyPolicy (Maybe Bool)
pkpBypassPolicyLockoutSafetyCheck = lens _pkpBypassPolicyLockoutSafetyCheck (\ s a -> s{_pkpBypassPolicyLockoutSafetyCheck = a});

-- | A unique identifier for the CMK. Use the CMK's unique identifier or its Amazon Resource Name (ARN). For example:     * Unique ID: 1234abcd-12ab-34cd-56ef-1234567890ab     * ARN: arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab
pkpKeyId :: Lens' PutKeyPolicy Text
pkpKeyId = lens _pkpKeyId (\ s a -> s{_pkpKeyId = a});

-- | The name of the key policy. This value must be @default@ .
pkpPolicyName :: Lens' PutKeyPolicy Text
pkpPolicyName = lens _pkpPolicyName (\ s a -> s{_pkpPolicyName = a});

-- | The key policy to attach to the CMK. If you do not set @BypassPolicyLockoutSafetyCheck@ to true, the policy must meet the following criteria:     * It must allow the principal making the @PutKeyPolicy@ request to make a subsequent @PutKeyPolicy@ request on the CMK. This reduces the likelihood that the CMK becomes unmanageable. For more information, refer to the scenario in the <http://docs.aws.amazon.com/kms/latest/developerguide/key-policies.html#key-policy-default-allow-root-enable-iam Default Key Policy> section in the /AWS Key Management Service Developer Guide/ .     * The principal(s) specified in the key policy must exist and be visible to AWS KMS. When you create a new AWS principal (for example, an IAM user or role), you might need to enforce a delay before specifying the new principal in a key policy because the new principal might not immediately be visible to AWS KMS. For more information, see <http://docs.aws.amazon.com/IAM/latest/UserGuide/troubleshoot_general.html#troubleshoot_general_eventual-consistency Changes that I make are not always immediately visible> in the /IAM User Guide/ . The policy size limit is 32 KiB (32768 bytes).
pkpPolicy :: Lens' PutKeyPolicy Text
pkpPolicy = lens _pkpPolicy (\ s a -> s{_pkpPolicy = a});

instance AWSRequest PutKeyPolicy where
        type Rs PutKeyPolicy = PutKeyPolicyResponse
        request = postJSON kms
        response = receiveNull PutKeyPolicyResponse'

instance Hashable PutKeyPolicy

instance NFData PutKeyPolicy

instance ToHeaders PutKeyPolicy where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("TrentService.PutKeyPolicy" :: ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON PutKeyPolicy where
        toJSON PutKeyPolicy'{..}
          = object
              (catMaybes
                 [("BypassPolicyLockoutSafetyCheck" .=) <$>
                    _pkpBypassPolicyLockoutSafetyCheck,
                  Just ("KeyId" .= _pkpKeyId),
                  Just ("PolicyName" .= _pkpPolicyName),
                  Just ("Policy" .= _pkpPolicy)])

instance ToPath PutKeyPolicy where
        toPath = const "/"

instance ToQuery PutKeyPolicy where
        toQuery = const mempty

-- | /See:/ 'putKeyPolicyResponse' smart constructor.
data PutKeyPolicyResponse =
    PutKeyPolicyResponse'
    deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'PutKeyPolicyResponse' with the minimum fields required to make a request.
--
putKeyPolicyResponse
    :: PutKeyPolicyResponse
putKeyPolicyResponse = PutKeyPolicyResponse'

instance NFData PutKeyPolicyResponse
