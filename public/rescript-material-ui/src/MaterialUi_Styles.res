type useStyles<'a> = (. unit) => 'a

@module("@mui/styles")
external makeStyles: {..} => useStyles<'a> = "makeStyles"

@module("@mui/styles")
external makeStylesWithTheme: (MaterialUi_Theme.t => {..}) => useStyles<'a> = "makeStyles"
