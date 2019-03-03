Some files that discuss HTML, JavaScript and SVG to help understand
what is going in the interactive plots generated via, e.g., the plotly package.

+ The slides are in [UnderTheHood.html](UnderTheHood.html)

+ [findingSVG](findingSVG) contains JavaScript code for exploring a plotly HTML document
  after it is rendered and finding and understanding the SVG elements and structure.
  
+ [exploreScatter.R](exploreScatter.R) is R code to query the static HTML document created by plotly.
  When rendered, the HTML document is augmented with dynamically created HTML and plot-elements.
   + [scatterplot.html](scatterplot.html) is the ploty-generated HTML for a simple 32-point scatterplot.
   + [explore.R](explore.R) is for exploring Jane's [pizza_linked.html](pizza_linked.html) plotly static HTML.
  
+ [onClick.html](onClick.html) and [sompleJS.htlm](simpleJS.html) are examples of simple HTML with
  JavaScript event handler files.

+ [sample.svg](sample.svg) and [sample2.svg](sample2.svg) are examples of animation, text along curves, etc. in SVG and then
 adding an interactive event handler one one graphical element to change the appearance of another
 element.
 

