// Generated by ReScript, PLEASE EDIT WITH CARE

import * as React from "react";
import * as Lab from "@mui/lab";
import * as Core from "@mui/core";
import ExpandMore from "@mui/icons-material/ExpandMore";
import ChevronRight from "@mui/icons-material/ChevronRight";

var ExpandMoreIcon = {};

var ChevronRightIcon = {};

function ExampleTreeView(Props) {
  return React.createElement(Core.Box, {
              clone: true,
              children: React.createElement(Lab.TreeView, {
                    children: null,
                    defaultCollapseIcon: React.createElement(ExpandMore, {}),
                    defaultExpandIcon: React.createElement(ChevronRight, {})
                  }, React.createElement(Lab.TreeItem, {
                        children: null,
                        label: "Applications",
                        nodeId: "1"
                      }, React.createElement(Lab.TreeItem, {
                            label: "Calendar",
                            nodeId: "2"
                          }), React.createElement(Lab.TreeItem, {
                            label: "Chrome",
                            nodeId: "3"
                          }), React.createElement(Lab.TreeItem, {
                            label: "Webstorm",
                            nodeId: "4"
                          })), React.createElement(Lab.TreeItem, {
                        children: null,
                        label: "Documents",
                        nodeId: "5"
                      }, React.createElement(Lab.TreeItem, {
                            label: "OSS",
                            nodeId: "10"
                          }), React.createElement(Lab.TreeItem, {
                            children: React.createElement(Lab.TreeItem, {
                                  children: null,
                                  label: "src",
                                  nodeId: "7"
                                }, React.createElement(Lab.TreeItem, {
                                      label: "index.js",
                                      nodeId: "8"
                                    }), React.createElement(Lab.TreeItem, {
                                      label: "tree-view.js",
                                      nodeId: "9"
                                    })),
                            label: "Material-UI",
                            nodeId: "6"
                          }))),
              flexGrow: 1,
              height: "240px",
              maxWidth: "400px"
            });
}

var make = ExampleTreeView;

export {
  ExpandMoreIcon ,
  ChevronRightIcon ,
  make ,
  
}
/* react Not a pure module */
