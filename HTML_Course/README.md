# HTML Complete Beginner to Expert on Udemy by Laurence Svekis
## Section 1: Introduction to HTML
### What is an Element?
* tag that wraps text and lets the browser know what to do with it
```HTML
<p class="foo">This is a paragraph.</p>
```
```HTML
<p></p>
```
* opening & closing tags
* **class** - attribute name
* **"foo"** - attribute value
* **This is a paragraph.** - content

### Basic HTML Structure
```HTML
<html>...</html>
```
* root element of an HTML document; all other elements are contained in this element
* delimits the beginning and end of an HTML document
```HTML
<head>...</head>
```
* container for processing information and metadata for an HTML document
```HTML
<body>...</body>
```
* container for the displayable content of an HTML document

### Document Metadata
```HTML
<meta/>
```
* represents metadata that cannot be represented by other HTML meta-related elements
* **charset** allows you to specify what character set should be used to display the characters on the page, i.e. **utf-8**
* **name="viewport"** allows for mobile devices to render the page appropraitely
```HTML
  <style>...</style>
```
* contains styling information for a document or part of a document
```HTML
<title>...</title>
```
* defines the document's title that is shown in a browser's title bar or a page's tab
```HTML
<link>...</link>
```
* for external files, mainly for styling

### DocType
* **DOCTYPE** is an instruction that associates a particular webpage with a document type definition(**DTD**)
* **HTML5** uses a **DOCTYPE** declaration which is very short due to its lack of reference to a **DTD** in the form of a URL or FPI
```HTML
<!DOCTYPE html>
```

### HTML Headings
* allows you to section off portions of a web page with 6 different levels of heading with 1 being the largest and strongest
```HTML
<h1>...</h1>
```

### Self Closing Tags
* line breaks and horizontal rules are self closing tags.
```HTML
<br>
<hr>
```

### HTML Comments
```html
<!-- this is how you create comments -->
```
* will only be shown in the source code and not what is rendered
* cannot be added inside of another element
* **!--** and **-->** are the opening and closing tags of a comment


## Section 2: HTML Tags
### Preformatted Text
```html
<pre>...</pre>
```
* allows you to add specific deliniation of text that will be rendered by the browser

### HTML [Entities](https://dev.w3.org/html5/html-author/charref)
* allows you to represent non-ASCII characters that can be rendered by the browser
* common character entity used in HTML is the non-breaking space: **&nbsp;**

### HTML Text Formatting
* both of these are used to bold text
```html
<b>...</b>
<strong>...</strong>
```
* both of these are use to italize text
```html
<i>...</i>
<en>...</em>
```
* allows to highlight text
```html
<mark>...</mark>
````
* used to create smaller text on the fly if not specified in a CSS file
```html
<small>...</small>
```
* used to create a strike through text
```html
<del>...</del>
```
* used to create an underline under the text
```html
<ins>...</ins>
```
* used to create a subscript looking text
```html
<sub>...</sub>
```
* used to create a superscript looking text
```html
<sup>...</sup>
```
* provides additional formatting and indentation when rendered by the browser
```html
<blockquote>...</blockquote>
````
* gives enclosed text an underline
```html
<u>...</u>
````
* will give text a strike through much like **del**
```html
<strike>...</strike>
````
* will increase the size an boldness of the text only slightly more than the original text but not as large and great as strong or headings
```html
<big>...</big>
````
* give subtle text differnce from the default
```html
<acronym>...</acronym>
````
* allows you to place quotes around text
```html
<q>...</q>
````
* allows you to give citing characteristics to text
```html
<cite>...</cite>
````
* gives a different font from the default
```html
<code>...</code>
```

### Divs and Spans to Organize Text
```html
<div>...</div>
```
* is the generic container for flow content and has no affect on the content or layout until CSS is used
* should only be used when no other semantic elements, i.e. article, nav, is appropriate
* is a block-level element
```html
<span>...</span>
```
* generic inline container for phrasing content, which does not inherently represent anything
* both can be used to group elements for styling purposes and common attributes





























