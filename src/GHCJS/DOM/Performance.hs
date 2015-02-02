{-# LANGUAGE CPP #-}
#if (defined(ghcjs_HOST_OS) && defined(USE_JAVASCRIPTFFI)) || !defined(USE_WEBKIT)
{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI #-}
module GHCJS.DOM.Performance
       (ghcjs_dom_performance_webkit_get_entries,
        performanceWebkitGetEntries,
        ghcjs_dom_performance_webkit_get_entries_by_type,
        performanceWebkitGetEntriesByType,
        ghcjs_dom_performance_webkit_get_entries_by_name,
        performanceWebkitGetEntriesByName,
        ghcjs_dom_performance_webkit_clear_resource_timings,
        performanceWebkitClearResourceTimings,
        ghcjs_dom_performance_webkit_set_resource_timing_buffer_size,
        performanceWebkitSetResourceTimingBufferSize,
        ghcjs_dom_performance_webkit_mark, performanceWebkitMark,
        ghcjs_dom_performance_webkit_clear_marks,
        performanceWebkitClearMarks, ghcjs_dom_performance_webkit_measure,
        performanceWebkitMeasure,
        ghcjs_dom_performance_webkit_clear_measures,
        performanceWebkitClearMeasures, ghcjs_dom_performance_now,
        performanceNow, ghcjs_dom_performance_get_navigation,
        performanceGetNavigation, ghcjs_dom_performance_get_timing,
        performanceGetTiming, performanceOnwebkitresourcetimingbufferfull,
        Performance, IsPerformance, castToPerformance, gTypePerformance,
        toPerformance)
       where
import GHCJS.Types (JSRef(..), JSString, castRef)
import GHCJS.Foreign (jsNull, ToJSString(..), FromJSString(..), syncCallback, asyncCallback, syncCallback1, asyncCallback1, syncCallback2, asyncCallback2, ForeignRetention(..))
import GHCJS.Marshal (ToJSRef(..), FromJSRef(..))
import GHCJS.Marshal.Pure (PToJSRef(..), PFromJSRef(..))
import Data.Int (Int64)
import Data.Word (Word, Word64)
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.DOM.Enums

 
foreign import javascript unsafe "$1[\"webkitGetEntries\"]()"
        ghcjs_dom_performance_webkit_get_entries ::
        JSRef Performance -> IO (JSRef PerformanceEntryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntries Mozilla Performance.webkitGetEntries documentation> 
performanceWebkitGetEntries ::
                            (IsPerformance self) => self -> IO (Maybe PerformanceEntryList)
performanceWebkitGetEntries self
  = (ghcjs_dom_performance_webkit_get_entries
       (unPerformance (toPerformance self)))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"webkitGetEntriesByType\"]($2)"
        ghcjs_dom_performance_webkit_get_entries_by_type ::
        JSRef Performance -> JSString -> IO (JSRef PerformanceEntryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByType Mozilla Performance.webkitGetEntriesByType documentation> 
performanceWebkitGetEntriesByType ::
                                  (IsPerformance self, ToJSString entryType) =>
                                    self -> entryType -> IO (Maybe PerformanceEntryList)
performanceWebkitGetEntriesByType self entryType
  = (ghcjs_dom_performance_webkit_get_entries_by_type
       (unPerformance (toPerformance self))
       (toJSString entryType))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"webkitGetEntriesByName\"]($2,\n$3)"
        ghcjs_dom_performance_webkit_get_entries_by_name ::
        JSRef Performance ->
          JSString -> JSString -> IO (JSRef PerformanceEntryList)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitGetEntriesByName Mozilla Performance.webkitGetEntriesByName documentation> 
performanceWebkitGetEntriesByName ::
                                  (IsPerformance self, ToJSString name, ToJSString entryType) =>
                                    self -> name -> entryType -> IO (Maybe PerformanceEntryList)
performanceWebkitGetEntriesByName self name entryType
  = (ghcjs_dom_performance_webkit_get_entries_by_name
       (unPerformance (toPerformance self))
       (toJSString name)
       (toJSString entryType))
      >>= fromJSRef
 
foreign import javascript unsafe
        "$1[\"webkitClearResourceTimings\"]()"
        ghcjs_dom_performance_webkit_clear_resource_timings ::
        JSRef Performance -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearResourceTimings Mozilla Performance.webkitClearResourceTimings documentation> 
performanceWebkitClearResourceTimings ::
                                      (IsPerformance self) => self -> IO ()
performanceWebkitClearResourceTimings self
  = ghcjs_dom_performance_webkit_clear_resource_timings
      (unPerformance (toPerformance self))
 
foreign import javascript unsafe
        "$1[\"webkitSetResourceTimingBufferSize\"]($2)"
        ghcjs_dom_performance_webkit_set_resource_timing_buffer_size ::
        JSRef Performance -> Word -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitSetResourceTimingBufferSize Mozilla Performance.webkitSetResourceTimingBufferSize documentation> 
performanceWebkitSetResourceTimingBufferSize ::
                                             (IsPerformance self) => self -> Word -> IO ()
performanceWebkitSetResourceTimingBufferSize self maxSize
  = ghcjs_dom_performance_webkit_set_resource_timing_buffer_size
      (unPerformance (toPerformance self))
      maxSize
 
foreign import javascript unsafe "$1[\"webkitMark\"]($2)"
        ghcjs_dom_performance_webkit_mark ::
        JSRef Performance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitMark Mozilla Performance.webkitMark documentation> 
performanceWebkitMark ::
                      (IsPerformance self, ToJSString markName) =>
                        self -> markName -> IO ()
performanceWebkitMark self markName
  = ghcjs_dom_performance_webkit_mark
      (unPerformance (toPerformance self))
      (toJSString markName)
 
foreign import javascript unsafe "$1[\"webkitClearMarks\"]($2)"
        ghcjs_dom_performance_webkit_clear_marks ::
        JSRef Performance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearMarks Mozilla Performance.webkitClearMarks documentation> 
performanceWebkitClearMarks ::
                            (IsPerformance self, ToJSString markName) =>
                              self -> markName -> IO ()
performanceWebkitClearMarks self markName
  = ghcjs_dom_performance_webkit_clear_marks
      (unPerformance (toPerformance self))
      (toJSString markName)
 
foreign import javascript unsafe
        "$1[\"webkitMeasure\"]($2, $3, $4)"
        ghcjs_dom_performance_webkit_measure ::
        JSRef Performance -> JSString -> JSString -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitMeasure Mozilla Performance.webkitMeasure documentation> 
performanceWebkitMeasure ::
                         (IsPerformance self, ToJSString measureName, ToJSString startMark,
                          ToJSString endMark) =>
                           self -> measureName -> startMark -> endMark -> IO ()
performanceWebkitMeasure self measureName startMark endMark
  = ghcjs_dom_performance_webkit_measure
      (unPerformance (toPerformance self))
      (toJSString measureName)
      (toJSString startMark)
      (toJSString endMark)
 
foreign import javascript unsafe "$1[\"webkitClearMeasures\"]($2)"
        ghcjs_dom_performance_webkit_clear_measures ::
        JSRef Performance -> JSString -> IO ()

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.webkitClearMeasures Mozilla Performance.webkitClearMeasures documentation> 
performanceWebkitClearMeasures ::
                               (IsPerformance self, ToJSString measureName) =>
                                 self -> measureName -> IO ()
performanceWebkitClearMeasures self measureName
  = ghcjs_dom_performance_webkit_clear_measures
      (unPerformance (toPerformance self))
      (toJSString measureName)
 
foreign import javascript unsafe "$1[\"now\"]()"
        ghcjs_dom_performance_now :: JSRef Performance -> IO Double

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.now Mozilla Performance.now documentation> 
performanceNow :: (IsPerformance self) => self -> IO Double
performanceNow self
  = ghcjs_dom_performance_now (unPerformance (toPerformance self))
 
foreign import javascript unsafe "$1[\"navigation\"]"
        ghcjs_dom_performance_get_navigation ::
        JSRef Performance -> IO (JSRef PerformanceNavigation)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.navigation Mozilla Performance.navigation documentation> 
performanceGetNavigation ::
                         (IsPerformance self) => self -> IO (Maybe PerformanceNavigation)
performanceGetNavigation self
  = (ghcjs_dom_performance_get_navigation
       (unPerformance (toPerformance self)))
      >>= fromJSRef
 
foreign import javascript unsafe "$1[\"timing\"]"
        ghcjs_dom_performance_get_timing ::
        JSRef Performance -> IO (JSRef PerformanceTiming)

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.timing Mozilla Performance.timing documentation> 
performanceGetTiming ::
                     (IsPerformance self) => self -> IO (Maybe PerformanceTiming)
performanceGetTiming self
  = (ghcjs_dom_performance_get_timing
       (unPerformance (toPerformance self)))
      >>= fromJSRef

-- | <https://developer.mozilla.org/en-US/docs/Web/API/Performance.onwebkitresourcetimingbufferfull Mozilla Performance.onwebkitresourcetimingbufferfull documentation> 
performanceOnwebkitresourcetimingbufferfull ::
                                            (IsPerformance self) =>
                                              Signal self (EventM UIEvent self ())
performanceOnwebkitresourcetimingbufferfull
  = (connect "webkitresourcetimingbufferfull")
#else
module GHCJS.DOM.Performance (
  ) where
#endif