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
* 














































