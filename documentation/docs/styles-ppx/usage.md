---
title: Usage
---

The extension is used by defining a module and passing `%makeStyles()` as the
module body. Think of `%makeStyles()` as a function, that accepts either

- a record with all fields of type `ReactDOM.Style.t`
- a function with a theme argument that returns above record

The resulting module contains a function called `useStyles()` which you can use
as a hook inside of your `React` component. That hook will return all record
keys with class names as their values.

## Simple usage

```rescript
module Styles = %makeStyles({
  root: ReactDOM.Style.make(~padding="20px", ()),
  inner: ReactDOM.Style.make(~lineHeight="1.3em", ()),
})

@react.component
let make = () => {
  let classes = Styles.useStyles()

  <div className=classes.root>
    <div className=classes.inner>
      {"Content"->React.string}
    </div>
  </div>
}
```

## Working with a theme

```rescript
module Styles = %makeStyles(
  theme => {
    root: ReactDOM.Style.make(~padding=`${theme.spacing(3)->string_of_int}px`, ()),
    inner: ReactDOM.Style.make(~color=theme.palette.primary.main, ()),
  }
)

@react.component
let make = () => {
  let classes = Styles.useStyles()

  <div className=classes.root>
    <div className=classes.inner>
      {"Content"->React.string}
    </div>
  </div>
}
```
