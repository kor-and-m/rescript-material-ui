(self.webpackChunkrescript_material_ui_documentation=self.webpackChunkrescript_material_ui_documentation||[]).push([[128],{3905:function(e,t,n){"use strict";n.d(t,{Zo:function(){return p},kt:function(){return m}});var r=n(7294);function o(e,t,n){return t in e?Object.defineProperty(e,t,{value:n,enumerable:!0,configurable:!0,writable:!0}):e[t]=n,e}function i(e,t){var n=Object.keys(e);if(Object.getOwnPropertySymbols){var r=Object.getOwnPropertySymbols(e);t&&(r=r.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),n.push.apply(n,r)}return n}function a(e){for(var t=1;t<arguments.length;t++){var n=null!=arguments[t]?arguments[t]:{};t%2?i(Object(n),!0).forEach((function(t){o(e,t,n[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(n)):i(Object(n)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(n,t))}))}return e}function c(e,t){if(null==e)return{};var n,r,o=function(e,t){if(null==e)return{};var n,r,o={},i=Object.keys(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||(o[n]=e[n]);return o}(e,t);if(Object.getOwnPropertySymbols){var i=Object.getOwnPropertySymbols(e);for(r=0;r<i.length;r++)n=i[r],t.indexOf(n)>=0||Object.prototype.propertyIsEnumerable.call(e,n)&&(o[n]=e[n])}return o}var s=r.createContext({}),l=function(e){var t=r.useContext(s),n=t;return e&&(n="function"==typeof e?e(t):a(a({},t),e)),n},p=function(e){var t=l(e.components);return r.createElement(s.Provider,{value:t},e.children)},u={inlineCode:"code",wrapper:function(e){var t=e.children;return r.createElement(r.Fragment,{},t)}},d=r.forwardRef((function(e,t){var n=e.components,o=e.mdxType,i=e.originalType,s=e.parentName,p=c(e,["components","mdxType","originalType","parentName"]),d=l(n),m=o,f=d["".concat(s,".").concat(m)]||d[m]||u[m]||i;return n?r.createElement(f,a(a({ref:t},p),{},{components:n})):r.createElement(f,a({ref:t},p))}));function m(e,t){var n=arguments,o=t&&t.mdxType;if("string"==typeof e||o){var i=n.length,a=new Array(i);a[0]=d;var c={};for(var s in t)hasOwnProperty.call(t,s)&&(c[s]=t[s]);c.originalType=e,c.mdxType="string"==typeof e?e:o,a[1]=c;for(var l=2;l<i;l++)a[l]=n[l];return r.createElement.apply(null,a)}return r.createElement.apply(null,n)}d.displayName="MDXCreateElement"},1143:function(e,t,n){"use strict";n.r(t),n.d(t,{frontMatter:function(){return c},metadata:function(){return s},toc:function(){return l},default:function(){return u}});var r=n(2122),o=n(9756),i=(n(7294),n(3905)),a=["components"],c={title:"Introduction"},s={unversionedId:"introduction",id:"introduction",isDocsHomePage:!1,title:"Introduction",description:"rescript-material-ui provides ReScript bindings",source:"@site/docs/introduction.md",sourceDirName:".",slug:"/introduction",permalink:"/docs/introduction",version:"current",frontMatter:{title:"Introduction"},sidebar:"docs",next:{title:"Installation",permalink:"/docs/installation"}},l=[{value:"Binding format",id:"binding-format",children:[]},{value:"A word on ReScript vs. ReasonML",id:"a-word-on-rescript-vs-reasonml",children:[]}],p={toc:l};function u(e){var t=e.components,n=(0,o.Z)(e,a);return(0,i.kt)("wrapper",(0,r.Z)({},p,n,{components:t,mdxType:"MDXLayout"}),(0,i.kt)("p",null,(0,i.kt)("inlineCode",{parentName:"p"},"rescript-material-ui")," provides ",(0,i.kt)("a",{parentName:"p",href:"https://rescript-lang.org/"},"ReScript")," bindings\nfor the Javascript based UI library ",(0,i.kt)("a",{parentName:"p",href:"https://material-ui.com/"},"MaterialUi"),"."),(0,i.kt)("p",null,"The bindings are automatically generated by utilizing the documentation\ngeneration scripts of the original package. These rely on a mix of code & code\nannotations and are not always 100% accurate."),(0,i.kt)("p",null,"This will directly translate into the bindings. If you come across a missing\nprop on a component or a misbehaving component, please feel free to open an\n",(0,i.kt)("a",{parentName:"p",href:"https://github.com/cca-io/rescript-material-ui/issues"},"issue"),"."),(0,i.kt)("h2",{id:"binding-format"},"Binding format"),(0,i.kt)("p",null,"The automatic nature of the bindings make some parts of it seem a little clunky.\nThis cannot be avoided, as some things just need to be generalized. Please refer\nto the individual sections in ",(0,i.kt)("inlineCode",{parentName:"p"},"Project Structure")," to to see what patterns are\nused."),(0,i.kt)("h2",{id:"a-word-on-rescript-vs-reasonml"},"A word on ReScript vs. ReasonML"),(0,i.kt)("p",null,"Even though the examples folder is already rewritten in ",(0,i.kt)("inlineCode",{parentName:"p"},"ReScript"),", the bindings\nsource will stay in the ",(0,i.kt)("inlineCode",{parentName:"p"},"ReasonML")," syntax for the foreseeable future. This is\nfor 2 rather practical reasons:"),(0,i.kt)("ol",null,(0,i.kt)("li",{parentName:"ol"},"It's a library, so you won't be looking at the code much anyway."),(0,i.kt)("li",{parentName:"ol"},"The generation process uses plain text generation rather than an AST based\napproach, so it would take some effort to change it.")),(0,i.kt)("p",null,"The documentation will refer to ",(0,i.kt)("inlineCode",{parentName:"p"},"ReScript")," interchangeably for both at this\ntime."),(0,i.kt)("p",null,(0,i.kt)("strong",{parentName:"p"},"Expect breaking changes once ",(0,i.kt)("inlineCode",{parentName:"strong"},"ReScript")," is established/stable and the library\ncode switches to it eventually. Esp. reserved names will change to the\n",(0,i.kt)("inlineCode",{parentName:"strong"},'\\"reserved"')," syntax all over the place.")))}u.isMDXComponent=!0}}]);