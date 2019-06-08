{-# LANGUAGE NoImplicitPrelude #-}

module Haskchain.Types.Block where

import Crypto.Hash (Digest, SHA1)
import Prelude

-- Type alias for a SHA1 digest from the cryptonite package
type Hash = Digest SHA1

data BlockHeader =
  BlockHeader Hash
  deriving (Eq, Show)

data Merkle a
  = Genesis
  | Node BlockHeader a
  deriving (Eq, Show)
