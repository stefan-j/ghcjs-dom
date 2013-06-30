{-# LANGUAGE ForeignFunctionInterface, JavaScriptFFI, CPP #-}
module GHCJS.DOM.HTMLTableCaptionElement
       (ghcjs_dom_html_table_caption_element_set_align,
        htmlTableCaptionElementSetAlign,
        ghcjs_dom_html_table_caption_element_get_align,
        htmlTableCaptionElementGetAlign)
       where
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM
import GHCJS.Types
import GHCJS.Foreign
import Data.Word
import GHCJS.DOM.Types
import Control.Applicative ((<$>))
import GHCJS.DOM.EventM



#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"] = $2;"
        ghcjs_dom_html_table_caption_element_set_align ::
        JSRef HTMLTableCaptionElement -> JSString -> IO ()
#else 
ghcjs_dom_html_table_caption_element_set_align ::
                                                 JSRef HTMLTableCaptionElement -> JSString -> IO ()
ghcjs_dom_html_table_caption_element_set_align = undefined
#endif
 
htmlTableCaptionElementSetAlign ::
                                (IsHTMLTableCaptionElement self, ToJSString val) =>
                                  self -> val -> IO ()
htmlTableCaptionElementSetAlign self val
  = ghcjs_dom_html_table_caption_element_set_align
      (unHTMLTableCaptionElement (toHTMLTableCaptionElement self))
      (toJSString val)


#ifdef __GHCJS__ 
foreign import javascript unsafe "$1[\"align\"]"
        ghcjs_dom_html_table_caption_element_get_align ::
        JSRef HTMLTableCaptionElement -> IO JSString
#else 
ghcjs_dom_html_table_caption_element_get_align ::
                                                 JSRef HTMLTableCaptionElement -> IO JSString
ghcjs_dom_html_table_caption_element_get_align = undefined
#endif
 
htmlTableCaptionElementGetAlign ::
                                (IsHTMLTableCaptionElement self, FromJSString result) =>
                                  self -> IO result
htmlTableCaptionElementGetAlign self
  = fromJSString <$>
      (ghcjs_dom_html_table_caption_element_get_align
         (unHTMLTableCaptionElement (toHTMLTableCaptionElement self)))