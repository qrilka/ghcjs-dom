{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.DocumentType
       (js_getName, getName, js_getEntities, getEntities,
        getEntitiesUnsafe, getEntitiesUnchecked, js_getNotations,
        getNotations, getNotationsUnsafe, getNotationsUnchecked,
        js_getPublicId, getPublicId, getPublicIdUnsafe,
        getPublicIdUnchecked, js_getSystemId, getSystemId,
        getSystemIdUnsafe, getSystemIdUnchecked, js_getInternalSubset,
        getInternalSubset, getInternalSubsetUnsafe,
        getInternalSubsetUnchecked, DocumentType(..), gTypeDocumentType)
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
 
foreign import javascript unsafe "$1[\"name\"]" js_getName ::
        DocumentType -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.name Mozilla DocumentType.name documentation> 
getName ::
        (MonadIO m, FromJSString result) => DocumentType -> m result
getName self = liftIO (fromJSString <$> (js_getName (self)))
 
foreign import javascript unsafe "$1[\"entities\"]" js_getEntities
        :: DocumentType -> IO (Nullable NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntities ::
            (MonadIO m) => DocumentType -> m (Maybe NamedNodeMap)
getEntities self
  = liftIO (nullableToMaybe <$> (js_getEntities (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntitiesUnsafe ::
                  (MonadIO m, HasCallStack) => DocumentType -> m NamedNodeMap
getEntitiesUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getEntities (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.entities Mozilla DocumentType.entities documentation> 
getEntitiesUnchecked ::
                     (MonadIO m) => DocumentType -> m NamedNodeMap
getEntitiesUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getEntities (self)))
 
foreign import javascript unsafe "$1[\"notations\"]"
        js_getNotations :: DocumentType -> IO (Nullable NamedNodeMap)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotations ::
             (MonadIO m) => DocumentType -> m (Maybe NamedNodeMap)
getNotations self
  = liftIO (nullableToMaybe <$> (js_getNotations (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotationsUnsafe ::
                   (MonadIO m, HasCallStack) => DocumentType -> m NamedNodeMap
getNotationsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getNotations (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.notations Mozilla DocumentType.notations documentation> 
getNotationsUnchecked ::
                      (MonadIO m) => DocumentType -> m NamedNodeMap
getNotationsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getNotations (self)))
 
foreign import javascript unsafe "$1[\"publicId\"]" js_getPublicId
        :: DocumentType -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicId ::
            (MonadIO m, FromJSString result) =>
              DocumentType -> m (Maybe result)
getPublicId self
  = liftIO (fromMaybeJSString <$> (js_getPublicId (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicIdUnsafe ::
                  (MonadIO m, HasCallStack, FromJSString result) =>
                    DocumentType -> m result
getPublicIdUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getPublicId (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.publicId Mozilla DocumentType.publicId documentation> 
getPublicIdUnchecked ::
                     (MonadIO m, FromJSString result) => DocumentType -> m result
getPublicIdUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getPublicId (self)))
 
foreign import javascript unsafe "$1[\"systemId\"]" js_getSystemId
        :: DocumentType -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemId ::
            (MonadIO m, FromJSString result) =>
              DocumentType -> m (Maybe result)
getSystemId self
  = liftIO (fromMaybeJSString <$> (js_getSystemId (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemIdUnsafe ::
                  (MonadIO m, HasCallStack, FromJSString result) =>
                    DocumentType -> m result
getSystemIdUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getSystemId (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.systemId Mozilla DocumentType.systemId documentation> 
getSystemIdUnchecked ::
                     (MonadIO m, FromJSString result) => DocumentType -> m result
getSystemIdUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getSystemId (self)))
 
foreign import javascript unsafe "$1[\"internalSubset\"]"
        js_getInternalSubset :: DocumentType -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubset ::
                  (MonadIO m, FromJSString result) =>
                    DocumentType -> m (Maybe result)
getInternalSubset self
  = liftIO (fromMaybeJSString <$> (js_getInternalSubset (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubsetUnsafe ::
                        (MonadIO m, HasCallStack, FromJSString result) =>
                          DocumentType -> m result
getInternalSubsetUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getInternalSubset (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/DocumentType.internalSubset Mozilla DocumentType.internalSubset documentation> 
getInternalSubsetUnchecked ::
                           (MonadIO m, FromJSString result) => DocumentType -> m result
getInternalSubsetUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getInternalSubset (self)))