{-# LANGUAGE PatternSynonyms, ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.JSFFI.Generated.AnimationEvent
       (js_getAnimationName, getAnimationName, js_getElapsedTime,
        getElapsedTime, AnimationEvent, castToAnimationEvent,
        gTypeAnimationEvent)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"animationName\"]"
        js_getAnimationName :: AnimationEvent -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.animationName Mozilla AnimationEvent.animationName documentation> 
getAnimationName ::
                 (MonadIO m, FromJSString result) => AnimationEvent -> m result
getAnimationName self
  = liftIO (fromJSString <$> (js_getAnimationName (self)))
 
foreign import javascript unsafe "$1[\"elapsedTime\"]"
        js_getElapsedTime :: AnimationEvent -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/AnimationEvent.elapsedTime Mozilla AnimationEvent.elapsedTime documentation> 
getElapsedTime :: (MonadIO m) => AnimationEvent -> m Double
getElapsedTime self = liftIO (js_getElapsedTime (self))