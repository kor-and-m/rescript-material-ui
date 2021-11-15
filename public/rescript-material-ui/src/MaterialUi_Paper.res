module Classes = {
  type t = {
    "root": option<string>,
    "rounded": option<string>,
    "outlined": option<string>,
    "elevation0": option<string>,
    "elevation1": option<string>,
    "elevation2": option<string>,
    "elevation3": option<string>,
    "elevation4": option<string>,
    "elevation5": option<string>,
    "elevation6": option<string>,
    "elevation7": option<string>,
    "elevation8": option<string>,
    "elevation9": option<string>,
    "elevation10": option<string>,
    "elevation11": option<string>,
    "elevation12": option<string>,
    "elevation13": option<string>,
    "elevation14": option<string>,
    "elevation15": option<string>,
    "elevation16": option<string>,
    "elevation17": option<string>,
    "elevation18": option<string>,
    "elevation19": option<string>,
    "elevation20": option<string>,
    "elevation21": option<string>,
    "elevation22": option<string>,
    "elevation23": option<string>,
    "elevation24": option<string>,
  }
  @obj
  external make: (
    ~root: string=?,
    ~rounded: string=?,
    ~outlined: string=?,
    ~elevation0: string=?,
    ~elevation1: string=?,
    ~elevation2: string=?,
    ~elevation3: string=?,
    ~elevation4: string=?,
    ~elevation5: string=?,
    ~elevation6: string=?,
    ~elevation7: string=?,
    ~elevation8: string=?,
    ~elevation9: string=?,
    ~elevation10: string=?,
    ~elevation11: string=?,
    ~elevation12: string=?,
    ~elevation13: string=?,
    ~elevation14: string=?,
    ~elevation15: string=?,
    ~elevation16: string=?,
    ~elevation17: string=?,
    ~elevation18: string=?,
    ~elevation19: string=?,
    ~elevation20: string=?,
    ~elevation21: string=?,
    ~elevation22: string=?,
    ~elevation23: string=?,
    ~elevation24: string=?,
    unit,
  ) => t = ""
}

module Component = {
  type t
  external string: string => t = "%identity"
  external callback: (unit => React.element) => t = "%identity"
  external element: React.element => t = "%identity"
}

type variant = [#elevation | #outlined]

@react.component @module("@mui/core")
external make: (
  ~children: 'children=?,
  ~classes: Classes.t=?,
  ~className: string=?,
  ~component: Component.t=?,
  ~elevation: MaterialUi_Types.Number.t=?,
  ~square: bool=?,
  ~variant: variant=?,
  ~id: string=?,
  ~style: ReactDOM.Style.t=?,
  ~key: string=?,
  ~ref: ReactDOM.domRef=?,
) => React.element = "Paper"
