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
-- Module      : Network.AWS.AppStream.StartImageBuilder
-- Copyright   : (c) 2013-2017 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Undocumented operation.
module Network.AWS.AppStream.StartImageBuilder
    (
    -- * Creating a Request
      startImageBuilder
    , StartImageBuilder
    -- * Request Lenses
    , sibName

    -- * Destructuring the Response
    , startImageBuilderResponse
    , StartImageBuilderResponse
    -- * Response Lenses
    , srsImageBuilder
    , srsResponseStatus
    ) where

import Network.AWS.AppStream.Types
import Network.AWS.AppStream.Types.Product
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startImageBuilder' smart constructor.
newtype StartImageBuilder = StartImageBuilder'
  { _sibName :: Text
  } deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartImageBuilder' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sibName' - Undocumented member.
startImageBuilder
    :: Text -- ^ 'sibName'
    -> StartImageBuilder
startImageBuilder pName_ = StartImageBuilder' {_sibName = pName_}


-- | Undocumented member.
sibName :: Lens' StartImageBuilder Text
sibName = lens _sibName (\ s a -> s{_sibName = a});

instance AWSRequest StartImageBuilder where
        type Rs StartImageBuilder = StartImageBuilderResponse
        request = postJSON appStream
        response
          = receiveJSON
              (\ s h x ->
                 StartImageBuilderResponse' <$>
                   (x .?> "ImageBuilder") <*> (pure (fromEnum s)))

instance Hashable StartImageBuilder where

instance NFData StartImageBuilder where

instance ToHeaders StartImageBuilder where
        toHeaders
          = const
              (mconcat
                 ["X-Amz-Target" =#
                    ("PhotonAdminProxyService.StartImageBuilder" ::
                       ByteString),
                  "Content-Type" =#
                    ("application/x-amz-json-1.1" :: ByteString)])

instance ToJSON StartImageBuilder where
        toJSON StartImageBuilder'{..}
          = object (catMaybes [Just ("Name" .= _sibName)])

instance ToPath StartImageBuilder where
        toPath = const "/"

instance ToQuery StartImageBuilder where
        toQuery = const mempty

-- | /See:/ 'startImageBuilderResponse' smart constructor.
data StartImageBuilderResponse = StartImageBuilderResponse'
  { _srsImageBuilder   :: !(Maybe ImageBuilder)
  , _srsResponseStatus :: !Int
  } deriving (Eq, Read, Show, Data, Typeable, Generic)


-- | Creates a value of 'StartImageBuilderResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'srsImageBuilder' - Undocumented member.
--
-- * 'srsResponseStatus' - -- | The response status code.
startImageBuilderResponse
    :: Int -- ^ 'srsResponseStatus'
    -> StartImageBuilderResponse
startImageBuilderResponse pResponseStatus_ =
  StartImageBuilderResponse'
  {_srsImageBuilder = Nothing, _srsResponseStatus = pResponseStatus_}


-- | Undocumented member.
srsImageBuilder :: Lens' StartImageBuilderResponse (Maybe ImageBuilder)
srsImageBuilder = lens _srsImageBuilder (\ s a -> s{_srsImageBuilder = a});

-- | -- | The response status code.
srsResponseStatus :: Lens' StartImageBuilderResponse Int
srsResponseStatus = lens _srsResponseStatus (\ s a -> s{_srsResponseStatus = a});

instance NFData StartImageBuilderResponse where
