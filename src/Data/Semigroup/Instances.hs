{-# LANGUAGE CPP #-}
#if __GLASGOW_HASKELL__ >= 702 && __GLASGOW_HASKELL__ < 710
{-# LANGUAGE Trustworthy #-}
#endif
{-# OPTIONS_GHC -fno-warn-orphans #-}
module Data.Semigroup.Instances where

import Data.FingerTree
import Data.Semigroup

#if !(MIN_VERSION_fingertree(0,1,2))
instance Measured v a => Semigroup (FingerTree v a) where
  (<>) = mappend
#endif
