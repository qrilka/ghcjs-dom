{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE ForeignFunctionInterface #-}
{-# LANGUAGE JavaScriptFFI #-}
-- For HasCallStack compatibility
{-# LANGUAGE ImplicitParams, ConstraintKinds, KindSignatures #-}
module GHCJS.DOM.JSFFI.Generated.HTMLDocument
       (js_open, open, js_close, close, js_write, write, js_writeln,
        writeln, js_clear, clear, js_captureEvents, captureEvents,
        js_releaseEvents, releaseEvents, js_getEmbeds, getEmbeds,
        getEmbedsUnsafe, getEmbedsUnchecked, js_getPlugins, getPlugins,
        getPluginsUnsafe, getPluginsUnchecked, js_getScripts, getScripts,
        getScriptsUnsafe, getScriptsUnchecked, js_getAll, getAll,
        getAllUnsafe, getAllUnchecked, js_getWidth, getWidth, js_getHeight,
        getHeight, js_setDir, setDir, js_getDir, getDir, getDirUnsafe,
        getDirUnchecked, js_setDesignMode, setDesignMode, js_getDesignMode,
        getDesignMode, getDesignModeUnsafe, getDesignModeUnchecked,
        js_getCompatMode, getCompatMode, js_setBgColor, setBgColor,
        js_getBgColor, getBgColor, getBgColorUnsafe, getBgColorUnchecked,
        js_setFgColor, setFgColor, js_getFgColor, getFgColor,
        getFgColorUnsafe, getFgColorUnchecked, js_setAlinkColor,
        setAlinkColor, js_getAlinkColor, getAlinkColor,
        getAlinkColorUnsafe, getAlinkColorUnchecked, js_setLinkColor,
        setLinkColor, js_getLinkColor, getLinkColor, getLinkColorUnsafe,
        getLinkColorUnchecked, js_setVlinkColor, setVlinkColor,
        js_getVlinkColor, getVlinkColor, getVlinkColorUnsafe,
        getVlinkColorUnchecked, HTMLDocument(..), gTypeHTMLDocument)
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
 
foreign import javascript unsafe "$1[\"open\"]()" js_open ::
        HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.open Mozilla HTMLDocument.open documentation> 
open :: (MonadIO m) => HTMLDocument -> m ()
open self = liftIO (js_open (self))
 
foreign import javascript unsafe "$1[\"close\"]()" js_close ::
        HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.close Mozilla HTMLDocument.close documentation> 
close :: (MonadIO m) => HTMLDocument -> m ()
close self = liftIO (js_close (self))
 
foreign import javascript unsafe "$1[\"write\"]($2)" js_write ::
        HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.write Mozilla HTMLDocument.write documentation> 
write ::
      (MonadIO m, ToJSString text) => HTMLDocument -> text -> m ()
write self text = liftIO (js_write (self) (toJSString text))
 
foreign import javascript unsafe "$1[\"writeln\"]($2)" js_writeln
        :: HTMLDocument -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.writeln Mozilla HTMLDocument.writeln documentation> 
writeln ::
        (MonadIO m, ToJSString text) => HTMLDocument -> text -> m ()
writeln self text = liftIO (js_writeln (self) (toJSString text))
 
foreign import javascript unsafe "$1[\"clear\"]()" js_clear ::
        HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.clear Mozilla HTMLDocument.clear documentation> 
clear :: (MonadIO m) => HTMLDocument -> m ()
clear self = liftIO (js_clear (self))
 
foreign import javascript unsafe "$1[\"captureEvents\"]()"
        js_captureEvents :: HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.captureEvents Mozilla HTMLDocument.captureEvents documentation> 
captureEvents :: (MonadIO m) => HTMLDocument -> m ()
captureEvents self = liftIO (js_captureEvents (self))
 
foreign import javascript unsafe "$1[\"releaseEvents\"]()"
        js_releaseEvents :: HTMLDocument -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.releaseEvents Mozilla HTMLDocument.releaseEvents documentation> 
releaseEvents :: (MonadIO m) => HTMLDocument -> m ()
releaseEvents self = liftIO (js_releaseEvents (self))
 
foreign import javascript unsafe "$1[\"embeds\"]" js_getEmbeds ::
        HTMLDocument -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.embeds Mozilla HTMLDocument.embeds documentation> 
getEmbeds ::
          (MonadIO m) => HTMLDocument -> m (Maybe HTMLCollection)
getEmbeds self = liftIO (nullableToMaybe <$> (js_getEmbeds (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.embeds Mozilla HTMLDocument.embeds documentation> 
getEmbedsUnsafe ::
                (MonadIO m, HasCallStack) => HTMLDocument -> m HTMLCollection
getEmbedsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getEmbeds (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.embeds Mozilla HTMLDocument.embeds documentation> 
getEmbedsUnchecked ::
                   (MonadIO m) => HTMLDocument -> m HTMLCollection
getEmbedsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getEmbeds (self)))
 
foreign import javascript unsafe "$1[\"plugins\"]" js_getPlugins ::
        HTMLDocument -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.plugins Mozilla HTMLDocument.plugins documentation> 
getPlugins ::
           (MonadIO m) => HTMLDocument -> m (Maybe HTMLCollection)
getPlugins self
  = liftIO (nullableToMaybe <$> (js_getPlugins (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.plugins Mozilla HTMLDocument.plugins documentation> 
getPluginsUnsafe ::
                 (MonadIO m, HasCallStack) => HTMLDocument -> m HTMLCollection
getPluginsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getPlugins (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.plugins Mozilla HTMLDocument.plugins documentation> 
getPluginsUnchecked ::
                    (MonadIO m) => HTMLDocument -> m HTMLCollection
getPluginsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getPlugins (self)))
 
foreign import javascript unsafe "$1[\"scripts\"]" js_getScripts ::
        HTMLDocument -> IO (Nullable HTMLCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.scripts Mozilla HTMLDocument.scripts documentation> 
getScripts ::
           (MonadIO m) => HTMLDocument -> m (Maybe HTMLCollection)
getScripts self
  = liftIO (nullableToMaybe <$> (js_getScripts (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.scripts Mozilla HTMLDocument.scripts documentation> 
getScriptsUnsafe ::
                 (MonadIO m, HasCallStack) => HTMLDocument -> m HTMLCollection
getScriptsUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getScripts (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.scripts Mozilla HTMLDocument.scripts documentation> 
getScriptsUnchecked ::
                    (MonadIO m) => HTMLDocument -> m HTMLCollection
getScriptsUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getScripts (self)))
 
foreign import javascript unsafe "$1[\"all\"]" js_getAll ::
        HTMLDocument -> IO (Nullable HTMLAllCollection)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.all Mozilla HTMLDocument.all documentation> 
getAll ::
       (MonadIO m) => HTMLDocument -> m (Maybe HTMLAllCollection)
getAll self = liftIO (nullableToMaybe <$> (js_getAll (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.all Mozilla HTMLDocument.all documentation> 
getAllUnsafe ::
             (MonadIO m, HasCallStack) => HTMLDocument -> m HTMLAllCollection
getAllUnsafe self
  = liftIO
      ((nullableToMaybe <$> (js_getAll (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.all Mozilla HTMLDocument.all documentation> 
getAllUnchecked ::
                (MonadIO m) => HTMLDocument -> m HTMLAllCollection
getAllUnchecked self
  = liftIO (fromJust . nullableToMaybe <$> (js_getAll (self)))
 
foreign import javascript unsafe "$1[\"width\"]" js_getWidth ::
        HTMLDocument -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.width Mozilla HTMLDocument.width documentation> 
getWidth :: (MonadIO m) => HTMLDocument -> m Int
getWidth self = liftIO (js_getWidth (self))
 
foreign import javascript unsafe "$1[\"height\"]" js_getHeight ::
        HTMLDocument -> IO Int

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.height Mozilla HTMLDocument.height documentation> 
getHeight :: (MonadIO m) => HTMLDocument -> m Int
getHeight self = liftIO (js_getHeight (self))
 
foreign import javascript unsafe "$1[\"dir\"] = $2;" js_setDir ::
        HTMLDocument -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
setDir ::
       (MonadIO m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setDir self val = liftIO (js_setDir (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"dir\"]" js_getDir ::
        HTMLDocument -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
getDir ::
       (MonadIO m, FromJSString result) =>
         HTMLDocument -> m (Maybe result)
getDir self = liftIO (fromMaybeJSString <$> (js_getDir (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
getDirUnsafe ::
             (MonadIO m, HasCallStack, FromJSString result) =>
               HTMLDocument -> m result
getDirUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getDir (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.dir Mozilla HTMLDocument.dir documentation> 
getDirUnchecked ::
                (MonadIO m, FromJSString result) => HTMLDocument -> m result
getDirUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getDir (self)))
 
foreign import javascript unsafe "$1[\"designMode\"] = $2;"
        js_setDesignMode :: HTMLDocument -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
setDesignMode ::
              (MonadIO m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setDesignMode self val
  = liftIO (js_setDesignMode (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"designMode\"]"
        js_getDesignMode :: HTMLDocument -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
getDesignMode ::
              (MonadIO m, FromJSString result) =>
                HTMLDocument -> m (Maybe result)
getDesignMode self
  = liftIO (fromMaybeJSString <$> (js_getDesignMode (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
getDesignModeUnsafe ::
                    (MonadIO m, HasCallStack, FromJSString result) =>
                      HTMLDocument -> m result
getDesignModeUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getDesignMode (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.designMode Mozilla HTMLDocument.designMode documentation> 
getDesignModeUnchecked ::
                       (MonadIO m, FromJSString result) => HTMLDocument -> m result
getDesignModeUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getDesignMode (self)))
 
foreign import javascript unsafe "$1[\"compatMode\"]"
        js_getCompatMode :: HTMLDocument -> IO JSString

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.compatMode Mozilla HTMLDocument.compatMode documentation> 
getCompatMode ::
              (MonadIO m, FromJSString result) => HTMLDocument -> m result
getCompatMode self
  = liftIO (fromJSString <$> (js_getCompatMode (self)))
 
foreign import javascript unsafe "$1[\"bgColor\"] = $2;"
        js_setBgColor :: HTMLDocument -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
setBgColor ::
           (MonadIO m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setBgColor self val
  = liftIO (js_setBgColor (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"bgColor\"]" js_getBgColor ::
        HTMLDocument -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColor ::
           (MonadIO m, FromJSString result) =>
             HTMLDocument -> m (Maybe result)
getBgColor self
  = liftIO (fromMaybeJSString <$> (js_getBgColor (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColorUnsafe ::
                 (MonadIO m, HasCallStack, FromJSString result) =>
                   HTMLDocument -> m result
getBgColorUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getBgColor (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.bgColor Mozilla HTMLDocument.bgColor documentation> 
getBgColorUnchecked ::
                    (MonadIO m, FromJSString result) => HTMLDocument -> m result
getBgColorUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getBgColor (self)))
 
foreign import javascript unsafe "$1[\"fgColor\"] = $2;"
        js_setFgColor :: HTMLDocument -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
setFgColor ::
           (MonadIO m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setFgColor self val
  = liftIO (js_setFgColor (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"fgColor\"]" js_getFgColor ::
        HTMLDocument -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColor ::
           (MonadIO m, FromJSString result) =>
             HTMLDocument -> m (Maybe result)
getFgColor self
  = liftIO (fromMaybeJSString <$> (js_getFgColor (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColorUnsafe ::
                 (MonadIO m, HasCallStack, FromJSString result) =>
                   HTMLDocument -> m result
getFgColorUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getFgColor (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.fgColor Mozilla HTMLDocument.fgColor documentation> 
getFgColorUnchecked ::
                    (MonadIO m, FromJSString result) => HTMLDocument -> m result
getFgColorUnchecked self
  = liftIO (fromJust . fromMaybeJSString <$> (js_getFgColor (self)))
 
foreign import javascript unsafe "$1[\"alinkColor\"] = $2;"
        js_setAlinkColor :: HTMLDocument -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
setAlinkColor ::
              (MonadIO m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setAlinkColor self val
  = liftIO (js_setAlinkColor (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"alinkColor\"]"
        js_getAlinkColor :: HTMLDocument -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColor ::
              (MonadIO m, FromJSString result) =>
                HTMLDocument -> m (Maybe result)
getAlinkColor self
  = liftIO (fromMaybeJSString <$> (js_getAlinkColor (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColorUnsafe ::
                    (MonadIO m, HasCallStack, FromJSString result) =>
                      HTMLDocument -> m result
getAlinkColorUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getAlinkColor (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.alinkColor Mozilla HTMLDocument.alinkColor documentation> 
getAlinkColorUnchecked ::
                       (MonadIO m, FromJSString result) => HTMLDocument -> m result
getAlinkColorUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getAlinkColor (self)))
 
foreign import javascript unsafe "$1[\"linkColor\"] = $2;"
        js_setLinkColor :: HTMLDocument -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
setLinkColor ::
             (MonadIO m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setLinkColor self val
  = liftIO (js_setLinkColor (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"linkColor\"]"
        js_getLinkColor :: HTMLDocument -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColor ::
             (MonadIO m, FromJSString result) =>
               HTMLDocument -> m (Maybe result)
getLinkColor self
  = liftIO (fromMaybeJSString <$> (js_getLinkColor (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColorUnsafe ::
                   (MonadIO m, HasCallStack, FromJSString result) =>
                     HTMLDocument -> m result
getLinkColorUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getLinkColor (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.linkColor Mozilla HTMLDocument.linkColor documentation> 
getLinkColorUnchecked ::
                      (MonadIO m, FromJSString result) => HTMLDocument -> m result
getLinkColorUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getLinkColor (self)))
 
foreign import javascript unsafe "$1[\"vlinkColor\"] = $2;"
        js_setVlinkColor :: HTMLDocument -> Nullable JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
setVlinkColor ::
              (MonadIO m, ToJSString val) => HTMLDocument -> Maybe val -> m ()
setVlinkColor self val
  = liftIO (js_setVlinkColor (self) (toMaybeJSString val))
 
foreign import javascript unsafe "$1[\"vlinkColor\"]"
        js_getVlinkColor :: HTMLDocument -> IO (Nullable JSString)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColor ::
              (MonadIO m, FromJSString result) =>
                HTMLDocument -> m (Maybe result)
getVlinkColor self
  = liftIO (fromMaybeJSString <$> (js_getVlinkColor (self)))

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColorUnsafe ::
                    (MonadIO m, HasCallStack, FromJSString result) =>
                      HTMLDocument -> m result
getVlinkColorUnsafe self
  = liftIO
      ((fromMaybeJSString <$> (js_getVlinkColor (self))) >>=
         maybe (Prelude.error "Nothing to return") return)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/HTMLDocument.vlinkColor Mozilla HTMLDocument.vlinkColor documentation> 
getVlinkColorUnchecked ::
                       (MonadIO m, FromJSString result) => HTMLDocument -> m result
getVlinkColorUnchecked self
  = liftIO
      (fromJust . fromMaybeJSString <$> (js_getVlinkColor (self)))