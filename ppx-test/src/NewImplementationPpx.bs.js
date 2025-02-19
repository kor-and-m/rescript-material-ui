// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Curry from "rescript/lib/es6/curry.js";
import * as React from "react";
import * as Js_math from "rescript/lib/es6/js_math.js";
import * as Core from "@mui/core";
import * as Styles from "@mui/core/styles";

function options_generateId(param) {
  return "blasdnsad" + String(Js_math.random_int(0, 100));
}

var options = {
  classNamePrefix: "xxx",
  generateId: options_generateId
};

var useStyles = Styles.makeStyles({
      rounded: {
        backgroundColor: "grey",
        color: "white",
        padding: "15px"
      },
      root: {
        margin: "0 auto",
        maxWidth: "970px",
        width: "100%"
      }
    }, options);

var Styles$1 = {
  useStyles: useStyles
};

function NewImplementationPpx(Props) {
  var classes = Curry._1(useStyles, undefined);
  return React.createElement(Core.Paper, {
              children: React.createElement(Core.Typography, {
                    children: "Some Content"
                  }),
              classes: {
                root: classes.root,
                rounded: classes.rounded
              }
            });
}

var make = NewImplementationPpx;

export {
  Styles$1 as Styles,
  make ,
  
}
/* useStyles Not a pure module */
