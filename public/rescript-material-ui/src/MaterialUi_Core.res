module Breakpoint = {
  type theme = MaterialUi_Theme.t
  type breakpoint
  type t
  type breakpointDefinition = [#xs | #sm | #md | #lg | #xl | #int(int)]
  type breakpointDirection = [
    | #up(breakpointDefinition)
    | #down(breakpointDefinition)
  ]

  module UNSAFE_INTERNAL = {
    type breakpointFunc = breakpoint => string
    external jsonToBreakpointFunc: Js.Json.t => breakpointFunc = "%identity"
    external stringToBreakpoint: string => breakpoint = "%identity"
    external intToBreakpoint: int => breakpoint = "%identity"
    external stringToBreakpointResult: string => t = "%identity"
  }

  let getAsString = (theme: theme, breakpoint: breakpointDirection) => {
    let bpGet = switch breakpoint {
    | #up(_) => v => v.MaterialUi_Theme.up
    | #down(_) => v => v.MaterialUi_Theme.down
    }
    let bpValue = switch breakpoint {
    | #up(#xs)
    | #down(#xs) =>
      "xs"->UNSAFE_INTERNAL.stringToBreakpoint
    | #up(#sm)
    | #down(#sm) =>
      "sm"->UNSAFE_INTERNAL.stringToBreakpoint
    | #up(#md)
    | #down(#md) =>
      "md"->UNSAFE_INTERNAL.stringToBreakpoint
    | #up(#lg)
    | #down(#lg) =>
      "lg"->UNSAFE_INTERNAL.stringToBreakpoint
    | #up(#xl)
    | #down(#xl) =>
      "xl"->UNSAFE_INTERNAL.stringToBreakpoint
    | #up(#int(x))
    | #down(#int(x)) =>
      x->UNSAFE_INTERNAL.intToBreakpoint
    }
    theme.breakpoints
    ->bpGet
    ->MaterialUi_Types.anyUnpack
    ->UNSAFE_INTERNAL.jsonToBreakpointFunc(bpValue)
  }

  let get = (theme: theme, breakpoint: breakpointDirection) =>
    theme->getAsString(breakpoint)->UNSAFE_INTERNAL.stringToBreakpointResult
}

@module("@mui/core/styles")
external useTheme: unit => MaterialUi_Theme.t = "useTheme"

@module("@mui/core")
external useMediaQueryString: string => bool = "useMediaQuery"

@module("@mui/core")
external useMediaQuery: Breakpoint.t => bool = "useMediaQuery"

module ServerStyleSheets = {
  type t
  @module("@mui/core/styles") @new
  external make: unit => t = "ServerStyleSheets"
  @module("@mui/core/styles") @new
  external makeWithOptions: {..} => t = "ServerStyleSheets"

  @send external collect: (t, React.element) => React.element = "collect"
  @send external toString: t => string = "toString"
  @send external getStyleElement: t => React.element = "getStyleElement"
}
