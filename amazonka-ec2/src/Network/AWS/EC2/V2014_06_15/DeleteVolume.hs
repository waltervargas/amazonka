{-# LANGUAGE DeriveGeneric             #-}
{-# LANGUAGE FlexibleInstances         #-}
{-# LANGUAGE NoImplicitPrelude         #-}
{-# LANGUAGE OverloadedStrings         #-}
{-# LANGUAGE RecordWildCards           #-}
{-# LANGUAGE TemplateHaskell           #-}
{-# LANGUAGE TypeFamilies              #-}

{-# OPTIONS_GHC -fno-warn-unused-binds #-}

-- Module      : Network.AWS.EC2.V2014_06_15.DeleteVolume
-- Copyright   : (c) 2013-2014 Brendan Hay <brendan.g.hay@gmail.com>
-- License     : This Source Code Form is subject to the terms of
--               the Mozilla Public License, v. 2.0.
--               A copy of the MPL can be found in the LICENSE file or
--               you can obtain it at http://mozilla.org/MPL/2.0/.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : experimental
-- Portability : non-portable (GHC extensions)

-- | Deletes the specified Amazon EBS volume. The volume must be in the
-- available state (not attached to an instance). The volume may remain in the
-- deleting state for several minutes. For more information, see Deleting an
-- Amazon EBS Volume in the Amazon Elastic Compute Cloud User Guide. Example
-- This example request deletes the volume with the ID vol-1a2b3c4d.
-- https://ec2.amazonaws.com/?Action=DeleteVolume &amp;VolumeId=vol-1a2b3c4d
-- &amp;AUTHPARAMS &lt;DeleteVolumeResponse
-- xmlns="http://ec2.amazonaws.com/doc/2014-05-01/"&gt;
-- &lt;requestId&gt;59dbff89-35bd-4eac-99ed-be587EXAMPLE&lt;/requestId&gt;
-- &lt;return&gt;true&lt;/return&gt; &lt;/DeleteVolumeResponse&gt;.
module Network.AWS.EC2.V2014_06_15.DeleteVolume where

import Control.Lens.TH (makeLenses)
import Network.AWS.Request.Query
import Network.AWS.EC2.V2014_06_15.Types
import Network.AWS.Prelude

-- | Minimum specification for a 'DeleteVolume' request.
deleteVolume :: Text -- ^ '_dvxVolumeId'
             -> DeleteVolume
deleteVolume p1 = DeleteVolume
    { _dvxVolumeId = p1
    , _dvxDryRun = Nothing
    }

data DeleteVolume = DeleteVolume
    { _dvxVolumeId :: Text
      -- ^ The ID of the volume.
    , _dvxDryRun :: Maybe Bool
      -- ^ 
    } deriving (Show, Generic)

makeLenses ''DeleteVolume

instance ToQuery DeleteVolume where
    toQuery = genericQuery def

data DeleteVolumeResponse = DeleteVolumeResponse
    deriving (Eq, Show, Generic)

makeLenses ''DeleteVolumeResponse

instance AWSRequest DeleteVolume where
    type Sv DeleteVolume = EC2
    type Rs DeleteVolume = DeleteVolumeResponse

    request = post "DeleteVolume"
    response _ = nullaryResponse DeleteVolumeResponse
