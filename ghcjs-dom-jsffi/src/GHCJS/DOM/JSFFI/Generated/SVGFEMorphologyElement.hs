{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.SVGFEMorphologyElement
       (js_setRadius, setRadius, pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN,
        pattern SVG_MORPHOLOGY_OPERATOR_ERODE,
        pattern SVG_MORPHOLOGY_OPERATOR_DILATE, js_getIn1, getIn1,
        getIn1Unsafe, getIn1Unchecked, js_getOperator, getOperator,
        getOperatorUnsafe, getOperatorUnchecked, js_getRadiusX, getRadiusX,
        getRadiusXUnsafe, getRadiusXUnchecked, js_getRadiusY, getRadiusY,
        getRadiusYUnsafe, getRadiusYUnchecked, SVGFEMorphologyElement(..),
        gTypeSVGFEMorphologyElement)
       where
import Prelude ((.), (==), (>>=), return, IO, Int, Float, Double, Bool(..), Maybe, maybe, fromIntegral, round, fmap, Show, Read, Eq, Ord)
import qualified Prelude (error)
import Data.Typeable (Typeable)
import GHCJS.Types (JSVal(..), JSString)
import GHCJS.Foreign (jsNull)
import GHCJS.Foreign.Callback (syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, OnBlocked(..))
import GHCJS.Marshal (ToJSVal(..), FromJSVal(..))
import GHCJS.Marshal.Pure (PToJSVal(..), PFromJSVal(..))
import Control.Monad (void)
import Control.Monad.IO.Class (MonadIO(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import Data.Maybe (fromJust)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventTargetClosures (EventName, unsafeEventName)
import GHCJS.DOM.JSFFI.Generated.Enums
 
foreign import javascript unsafe "$1[\"setRadius\"]($2, $3)"
        js_setRadius :: SVGFEMorphologyElement -> Float -> Float -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.setRadius Mozilla SVGFEMorphologyElement.setRadius documentation> 
setRadius ::
          (MonadIO m) => SVGFEMorphologyElement -> Float -> Float -> m ()
setRadius self radiusX radiusY
  = liftIO (js_setRadius (self) radiusX radiusY)
pattern SVG_MORPHOLOGY_OPERATOR_UNKNOWN = 0
pattern SVG_MORPHOLOGY_OPERATOR_ERODE = 1
pattern SVG_MORPHOLOGY_OPERATOR_DILATE = 2
 
foreign import javascript unsafe "$1[\"in1\"]" js_getIn1 ::
        SVGFEMorphologyElement -> IO (Nullable SVGAnimatedString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.in1 Mozilla SVGFEMorphologyElement.in1 documentation> 
getIn1 ::
       (MonadIO m) =>
         SVGFEMorphologyElement -> m (Maybe SVGAnimatedString)
getIn1 self = liftIO (nullableToMaybe <$> (js_getIn1 (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.in1 Mozilla SVGFEMorphologyElement.in1 documentation> 
getIn1Unsafe ::
             (MonadIO m, HasCallStack) =>
               SVGFEMorphologyElement -> m SVGAnimatedString
getIn1Unsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getIn1 (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.in1 Mozilla SVGFEMorphologyElement.in1 documentation> 
getIn1Unchecked ::
                (MonadIO m) => SVGFEMorphologyElement -> m SVGAnimatedString
getIn1Unchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getIn1 (self)))
 
foreign import javascript unsafe "$1[\"operator\"]" js_getOperator
        :: SVGFEMorphologyElement -> IO (Nullable SVGAnimatedEnumeration)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.operator Mozilla SVGFEMorphologyElement.operator documentation> 
getOperator ::
            (MonadIO m) =>
              SVGFEMorphologyElement -> m (Maybe SVGAnimatedEnumeration)
getOperator self
  = liftIO (nullableToMaybe <$> (js_getOperator (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.operator Mozilla SVGFEMorphologyElement.operator documentation> 
getOperatorUnsafe ::
                  (MonadIO m, HasCallStack) =>
                    SVGFEMorphologyElement -> m SVGAnimatedEnumeration
getOperatorUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getOperator (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.operator Mozilla SVGFEMorphologyElement.operator documentation> 
getOperatorUnchecked ::
                     (MonadIO m) => SVGFEMorphologyElement -> m SVGAnimatedEnumeration
getOperatorUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getOperator (self)))
 
foreign import javascript unsafe "$1[\"radiusX\"]" js_getRadiusX ::
        SVGFEMorphologyElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusX Mozilla SVGFEMorphologyElement.radiusX documentation> 
getRadiusX ::
           (MonadIO m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusX self
  = liftIO (nullableToMaybe <$> (js_getRadiusX (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusX Mozilla SVGFEMorphologyElement.radiusX documentation> 
getRadiusXUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGFEMorphologyElement -> m SVGAnimatedNumber
getRadiusXUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRadiusX (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusX Mozilla SVGFEMorphologyElement.radiusX documentation> 
getRadiusXUnchecked ::
                    (MonadIO m) => SVGFEMorphologyElement -> m SVGAnimatedNumber
getRadiusXUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRadiusX (self)))
 
foreign import javascript unsafe "$1[\"radiusY\"]" js_getRadiusY ::
        SVGFEMorphologyElement -> IO (Nullable SVGAnimatedNumber)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusY Mozilla SVGFEMorphologyElement.radiusY documentation> 
getRadiusY ::
           (MonadIO m) =>
             SVGFEMorphologyElement -> m (Maybe SVGAnimatedNumber)
getRadiusY self
  = liftIO (nullableToMaybe <$> (js_getRadiusY (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusY Mozilla SVGFEMorphologyElement.radiusY documentation> 
getRadiusYUnsafe ::
                 (MonadIO m, HasCallStack) =>
                   SVGFEMorphologyElement -> m SVGAnimatedNumber
getRadiusYUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getRadiusY (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/SVGFEMorphologyElement.radiusY Mozilla SVGFEMorphologyElement.radiusY documentation> 
getRadiusYUnchecked ::
                    (MonadIO m) => SVGFEMorphologyElement -> m SVGAnimatedNumber
getRadiusYUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getRadiusY (self)))