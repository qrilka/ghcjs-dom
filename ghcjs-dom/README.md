ghcjs-dom
=========

Library for creating applications that use the Document Object Model
and other Web Browser features.
It provides a type safe interface based on the WebKit IDL files.

There are three different implementations.

 * *JSFFI* uses GHCJS Java Script FFI (default when compiled with GHCJS)
 * *JSaddle* uses JSaddle and Warp (default when compiled with GHC)
 * *WebKit* uses C api directly (no longer supported)

