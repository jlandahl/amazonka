{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.DescribeNetworkInterfaces
-- Copyright   : (c) 2013-2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)
--
-- Describes one or more of your network interfaces.
--
-- <http://docs.aws.amazon.com/AWSEC2/latest/APIReference/ApiReference-query-DescribeNetworkInterfaces.html>
module Network.AWS.EC2.DescribeNetworkInterfaces
    (
    -- * Request
      DescribeNetworkInterfaces
    -- ** Request constructor
    , describeNetworkInterfaces
    -- ** Request lenses
    , dnisNetworkInterfaceIds
    , dnisFilters
    , dnisDryRun

    -- * Response
    , DescribeNetworkInterfacesResponse
    -- ** Response constructor
    , describeNetworkInterfacesResponse
    -- ** Response lenses
    , dnirsNetworkInterfaces
    , dnirsStatus
    ) where

import           Network.AWS.EC2.Types
import           Network.AWS.Prelude
import           Network.AWS.Request
import           Network.AWS.Response

-- | /See:/ 'describeNetworkInterfaces' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dnisNetworkInterfaceIds'
--
-- * 'dnisFilters'
--
-- * 'dnisDryRun'
data DescribeNetworkInterfaces = DescribeNetworkInterfaces'
    { _dnisNetworkInterfaceIds :: !(Maybe [Text])
    , _dnisFilters             :: !(Maybe [Filter])
    , _dnisDryRun              :: !(Maybe Bool)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeNetworkInterfaces' smart constructor.
describeNetworkInterfaces :: DescribeNetworkInterfaces
describeNetworkInterfaces =
    DescribeNetworkInterfaces'
    { _dnisNetworkInterfaceIds = Nothing
    , _dnisFilters = Nothing
    , _dnisDryRun = Nothing
    }

-- | One or more network interface IDs.
--
-- Default: Describes all your network interfaces.
dnisNetworkInterfaceIds :: Lens' DescribeNetworkInterfaces [Text]
dnisNetworkInterfaceIds = lens _dnisNetworkInterfaceIds (\ s a -> s{_dnisNetworkInterfaceIds = a}) . _Default;

-- | One or more filters.
--
-- -   @addresses.private-ip-address@ - The private IP addresses associated
--     with the network interface.
--
-- -   @addresses.primary@ - Whether the private IP address is the primary
--     IP address associated with the network interface.
--
-- -   @addresses.association.public-ip@ - The association ID returned when
--     the network interface was associated with the Elastic IP address.
--
-- -   @addresses.association.owner-id@ - The owner ID of the addresses
--     associated with the network interface.
--
-- -   @association.association-id@ - The association ID returned when the
--     network interface was associated with an IP address.
--
-- -   @association.allocation-id@ - The allocation ID returned when you
--     allocated the Elastic IP address for your network interface.
--
-- -   @association.ip-owner-id@ - The owner of the Elastic IP address
--     associated with the network interface.
--
-- -   @association.public-ip@ - The address of the Elastic IP address
--     bound to the network interface.
--
-- -   @association.public-dns-name@ - The public DNS name for the network
--     interface.
--
-- -   @attachment.attachment-id@ - The ID of the interface attachment.
--
-- -   @attachment.instance-id@ - The ID of the instance to which the
--     network interface is attached.
--
-- -   @attachment.instance-owner-id@ - The owner ID of the instance to
--     which the network interface is attached.
--
-- -   @attachment.device-index@ - The device index to which the network
--     interface is attached.
--
-- -   @attachment.status@ - The status of the attachment (@attaching@ |
--     @attached@ | @detaching@ | @detached@).
--
-- -   @attachment.attach.time@ - The time that the network interface was
--     attached to an instance.
--
-- -   @attachment.delete-on-termination@ - Indicates whether the
--     attachment is deleted when an instance is terminated.
--
-- -   @availability-zone@ - The Availability Zone of the network
--     interface.
--
-- -   @description@ - The description of the network interface.
--
-- -   @group-id@ - The ID of a security group associated with the network
--     interface.
--
-- -   @group-name@ - The name of a security group associated with the
--     network interface.
--
-- -   @mac-address@ - The MAC address of the network interface.
--
-- -   @network-interface-id@ - The ID of the network interface.
--
-- -   @owner-id@ - The AWS account ID of the network interface owner.
--
-- -   @private-ip-address@ - The private IP address or addresses of the
--     network interface.
--
-- -   @private-dns-name@ - The private DNS name of the network interface.
--
-- -   @requester-id@ - The ID of the entity that launched the instance on
--     your behalf (for example, AWS Management Console, Auto Scaling, and
--     so on).
--
-- -   @requester-managed@ - Indicates whether the network interface is
--     being managed by an AWS service (for example, AWS Management
--     Console, Auto Scaling, and so on).
--
-- -   @source-desk-check@ - Indicates whether the network interface
--     performs source\/destination checking. A value of @true@ means
--     checking is enabled, and @false@ means checking is disabled. The
--     value must be @false@ for the network interface to perform Network
--     Address Translation (NAT) in your VPC.
--
-- -   @status@ - The status of the network interface. If the network
--     interface is not attached to an instance, the status is @available@;
--     if a network interface is attached to an instance the status is
--     @in-use@.
--
-- -   @subnet-id@ - The ID of the subnet for the network interface.
--
-- -   @tag@:/key/=/value/ - The key\/value combination of a tag assigned
--     to the resource.
--
-- -   @tag-key@ - The key of a tag assigned to the resource. This filter
--     is independent of the @tag-value@ filter. For example, if you use
--     both the filter \"tag-key=Purpose\" and the filter \"tag-value=X\",
--     you get any resources assigned both the tag key Purpose (regardless
--     of what the tag\'s value is), and the tag value X (regardless of
--     what the tag\'s key is). If you want to list only resources where
--     Purpose is X, see the @tag@:/key/=/value/ filter.
--
-- -   @tag-value@ - The value of a tag assigned to the resource. This
--     filter is independent of the @tag-key@ filter.
--
-- -   @vpc-id@ - The ID of the VPC for the network interface.
--
dnisFilters :: Lens' DescribeNetworkInterfaces [Filter]
dnisFilters = lens _dnisFilters (\ s a -> s{_dnisFilters = a}) . _Default;

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
dnisDryRun :: Lens' DescribeNetworkInterfaces (Maybe Bool)
dnisDryRun = lens _dnisDryRun (\ s a -> s{_dnisDryRun = a});

instance AWSRequest DescribeNetworkInterfaces where
        type Sv DescribeNetworkInterfaces = EC2
        type Rs DescribeNetworkInterfaces =
             DescribeNetworkInterfacesResponse
        request = post
        response
          = receiveXML
              (\ s h x ->
                 DescribeNetworkInterfacesResponse' <$>
                   (x .@? "networkInterfaceSet" .!@ mempty >>=
                      may (parseXMLList "item"))
                     <*> (pure (fromEnum s)))

instance ToHeaders DescribeNetworkInterfaces where
        toHeaders = const mempty

instance ToPath DescribeNetworkInterfaces where
        toPath = const "/"

instance ToQuery DescribeNetworkInterfaces where
        toQuery DescribeNetworkInterfaces'{..}
          = mconcat
              ["Action" =:
                 ("DescribeNetworkInterfaces" :: ByteString),
               "Version" =: ("2015-04-15" :: ByteString),
               toQuery
                 (toQueryList "item" <$> _dnisNetworkInterfaceIds),
               toQuery (toQueryList "Filter" <$> _dnisFilters),
               "DryRun" =: _dnisDryRun]

-- | /See:/ 'describeNetworkInterfacesResponse' smart constructor.
--
-- The fields accessible through corresponding lenses are:
--
-- * 'dnirsNetworkInterfaces'
--
-- * 'dnirsStatus'
data DescribeNetworkInterfacesResponse = DescribeNetworkInterfacesResponse'
    { _dnirsNetworkInterfaces :: !(Maybe [NetworkInterface])
    , _dnirsStatus            :: !Int
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | 'DescribeNetworkInterfacesResponse' smart constructor.
describeNetworkInterfacesResponse :: Int -> DescribeNetworkInterfacesResponse
describeNetworkInterfacesResponse pStatus_ =
    DescribeNetworkInterfacesResponse'
    { _dnirsNetworkInterfaces = Nothing
    , _dnirsStatus = pStatus_
    }

-- | Information about one or more network interfaces.
dnirsNetworkInterfaces :: Lens' DescribeNetworkInterfacesResponse [NetworkInterface]
dnirsNetworkInterfaces = lens _dnirsNetworkInterfaces (\ s a -> s{_dnirsNetworkInterfaces = a}) . _Default;

-- | FIXME: Undocumented member.
dnirsStatus :: Lens' DescribeNetworkInterfacesResponse Int
dnirsStatus = lens _dnirsStatus (\ s a -> s{_dnirsStatus = a});
