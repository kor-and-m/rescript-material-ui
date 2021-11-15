open MaterialUi
open MaterialUi_Lab

module FormatAlignLeftIcon = {
  @react.component @module("@mui/icons-material/FormatAlignLeft")
  external make: unit => React.element = "default"
}
module FormatAlignCenterIcon = {
  @react.component @module("@mui/icons-material/FormatAlignCenter")
  external make: unit => React.element = "default"
}
module FormatAlignRightIcon = {
  @react.component @module("@mui/icons-material/FormatAlignRight")
  external make: unit => React.element = "default"
}
module FormatAlignJustifyIcon = {
  @react.component @module("@mui/icons-material/FormatAlignJustify")
  external make: unit => React.element = "default"
}
module FormatBoldIcon = {
  @react.component @module("@mui/icons-material/FormatBold")
  external make: unit => React.element = "default"
}
module FormatItalicIcon = {
  @react.component @module("@mui/icons-material/FormatItalic")
  external make: unit => React.element = "default"
}
module FormatUnderlinedIcon = {
  @react.component @module("@mui/icons-material/FormatUnderlined")
  external make: unit => React.element = "default"
}
module FormatColorFillIcon = {
  @react.component @module("@mui/icons-material/FormatColorFill")
  external make: unit => React.element = "default"
}
module ArrowDropDownIcon = {
  @react.component @module("@mui/icons-material/ArrowDropDown")
  external make: unit => React.element = "default"
}

@react.component
let make = () => {
  let (alignment, setAlignment) = React.useReducer((_, v) => v, "left")
  let (formats, setFormats) = React.useReducer((_, v) => v, ["bold"])

  let handleAlignment = (_, v) => {
    setAlignment(v->MaterialUi.anyUnpack)
  }
  let handleFormats = (_, v) => {
    setFormats(v->MaterialUi.anyUnpack)
  }

  <Grid container=true spacing=#2>
    <Grid item=true sm=Grid.Sm.\"12" md=Grid.Md.\"6">
      <Box mb={Box.Value.int(2)} mt={Box.Value.int(2)}>
        <ToggleButtonGroup value={Any(alignment)} exclusive=true onChange=handleAlignment>
          <ToggleButton value={Any("left")}> <FormatAlignLeftIcon /> </ToggleButton>
          <ToggleButton value={Any("center")}> <FormatAlignCenterIcon /> </ToggleButton>
          <ToggleButton value={Any("right")}> <FormatAlignRightIcon /> </ToggleButton>
          <ToggleButton value={Any("justify")} disabled=true>
            <FormatAlignJustifyIcon />
          </ToggleButton>
        </ToggleButtonGroup>
      </Box>
      <Typography gutterBottom=true> "Exclusive Selection" </Typography>
      <Typography>
        {`Text justification toggle buttons present options for left, right, center, full, and
      justified text with only one item available for selection at a time. Selecting one option
      deselects any other.`->React.string}
      </Typography>
    </Grid>
    <Grid item=true sm=Grid.Sm.\"12" md=Grid.Md.\"6">
      <Box mb={Box.Value.int(2)} mt={Box.Value.int(2)}>
        <ToggleButtonGroup value={Any(formats)} onChange=handleFormats>
          <ToggleButton value={Any("bold")}> <FormatBoldIcon /> </ToggleButton>
          <ToggleButton value={Any("italic")}> <FormatItalicIcon /> </ToggleButton>
          <ToggleButton value={Any("underlined")}> <FormatUnderlinedIcon /> </ToggleButton>
          <ToggleButton value={Any("color")} disabled=true>
            <FormatColorFillIcon /> <ArrowDropDownIcon />
          </ToggleButton>
        </ToggleButtonGroup>
      </Box>
      <Typography gutterBottom=true> "Multiple Selection" </Typography>
      <Typography>
        "Logically-grouped options, like Bold, Italic, and Underline, allow multiple options to be
      selected."
      </Typography>
    </Grid>
  </Grid>
}
