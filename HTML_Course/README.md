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

### HTML Semantic Elements
```html
<article>...</article>
<aside>...</aside>
<footer>...</footer>
<header>...</header>
<nav>...</nav>
<section>...</section>
```
* previously done wiht divs and adding attributes to the elements
* just like divs but with meaningful names
* do not add any styling

### Placeholder Content
* can be used to quickly generate code to be copied and pasted into the source code

### Hyperlinks Anchor Tag
```html
<a>...</a>
```
* creates a hyperlink to other web pages, files, locations within the same page, email addresses, or any other URL
* **\_self** default opens in the same window
* **\_blank** opens in a new window or tab
* **\_parent** opens in parent frame
* **\_top** load the URL into the top-level browsing context
```html
<a href="id">id</a>
<h2 id="id"> Hello Everyone</h2>
```

### Adding Pictures
```html
<img scr="PATH TO IMAGE FILE">
```
* is a self closing tag

### HTML Lists
* help us organize a number of peices of content
* can give a list a specific way of numbering the ordered list(s) with the **type** attribute
* can start at any given number with the **start** attribute
#### Unordered Lists
```html
<ul>
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ul>
```
#### Ordered List
```html
<ol type="1">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ol>
```
* will number the items starting with 1,2,3,etc.
```html
<ol type="A">
  <li>Item 1</li>
  <li>Item 2</li>
  <li>Item 3</li>
</ol>
```
* will number the items starting with A,B,C,etc.
#### Description List
* **dt** is a description term
* **dd** is a description for the **dt**
* not as common as ordered and unordered lists
```html
<dl type="I">
  <dt>Item 1</dt>
  <dd> a description </dd>
  <dt>Item 2</dt>
  <dd> a description </dd>
  <dt>Item 3</dt>
  <dd> a description </dd>
</dl>
```

### HTML Tables
```html
<table>
  <tr>
    <td> First Name </td>
    <td> Last Name </td>
    <td> Email Adress </td>
  </tr>
  <tr>
    <td> Troy </td>
    <td> Aikman </td>
    <td> troy.aikman@gmail.com </td>
  </tr>
</table>
```
* **\<tr\>** first set are table column names
* **\<td\>** are cells in the table that hold content
* can use **thead** tags as an alternative to indicate the column names
* can use **tbody** tags as an alternative to indicate the data to be placed into the cells
* can use **colspan** attribute to span multiple cells
* can use **rowspan** attribute to span multiple rows
* this way of styling is depricated, will be using CSS to style web pages
```html
<body>
  <thead>
    <tr>
      <td> First Name </td>
      <td> Last Name </td>
      <td> Email Adress </td>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td> Troy </td>
      <td> Aikman </td>
      <td> troy.aikman@gmail.com </td>
    </tr>
    <tr>
      <td> Emmit </td>
      <td colspan="2"> Smith </td>
    </tr>
  </tbody>
</body>
```

## Section 3: HTML Forms
### HTML Forms
* element that represents a document section that contains interactive controls for submitting information to a web server
```html
<body>
  <form>
    First Name:
    <br>
    < input type="text" name="Firstname" value="Troy">
    <br>
    Last Name:
    <br>
    <input type="text" name="Lastname" value="Aikman">
    <br>
    <br>
    <input type="submit" value="Submit"> 
  </form>
</body>
```
* **type** attribute allows you to specify what type of data should be passed in
* **name** is the attribute that it will be identified by when being submitted to the server
* **value** attribute will provide text in the box as a default
* **\<label\>** can be used for the label of the input boxes instead of just a generic text lable
* **required** attribute makes an input field required to have valid data before the form is submitted
```html
<body>
  <form>
    <lable for="Firstname">First Name:</label>
    <br>
    < input type="text" name="Firstname" required>
    <br>
    <lable for="Lastname">Last Name:</label>
    <br>
    <input type="text" name="Lastname" required>
    <br>
    <br>
    <button type="submit" value="Submit"> 
  </form>
</body>
```

#### Forms Action and Method
* **Action** attribute defines the location (URL) where the form's collected data should be sent when it is submitted
* **Method** attribute defines which HTTP method to send the data with, i.e. **POST** or **GET**

#### HTML Form Options
* **placeholder** attribute will place the value in the input box as an extra idication as to what the user should enter into the input box
* **\<text\>** tags create a large text box for entering in large amounts of character data
* if you use both placeholder attribute and value attribute, the value will take precidence

### HTML5 Input Types
* **button** push button with no default behavior
* **checkbox** allowing single values to be selected/deselected
* **color** a control for specifying a color
* **date** a control for entering a date (year, month, and day) with no time
* **datetime-local** control for entering in date and time, with no time zone
* **email** a field for entering an email address
* **file** control that allows a user to selecet a file
  - can use the **accept** attribute to define the types of files that the control will accept
* **hidden** a control that is not displayed but whose value is submitted to the server
* **image** a graphical submit button
* **month** a control for entering a month and year, with no time zone
* **number** control for entering in a number
* **password** a single-line text field whose value is obscured
*   - use the **maxlength** and **minlength** attributes to specify the max legnth of the value that can be entered

### FieldSet for Grouping
* **\<filedset\>** element is used to group several controls as well as labels within a web form
* **\<legend\>** element will give the **fieldset** a heading in a more professionally formatted way
```html
<body>
  <form>
    <fieldset>
      <legend>Sign Up Form</legend>
      
      <lable for="Firstname">First Name:</label>
      <br>
      < input type="text" name="Firstname" required>
      <br>
      <lable for="Lastname">Last Name:</label>
      <br>
      <input type="text" name="Lastname" required>
      <br>
      <br>
      <button type="submit" value="Submit">
    </fieldset>
  </form>
</body>
```

### HTML iframes
* allows you to add in another web page as a section of content
* utlizes closing tags even though all the data entered is attributes to the element
```html
<iframe id="myID" title="Title of Iframe" scr="local or remote file/web page">Content can be entered her for older browsers</iframe>
```


























