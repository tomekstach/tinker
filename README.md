L20n tinker
===========

A fiddle tool for L20n.  Write some L20n code and see the results instantly!

# L20n tinker - main informations

The main HTML file is, of course the index.html. You might find in it the language selection field (#lang) and translation file selection field (#fixture).

Another important thing is the included JS files. The most important is script.js.

# script.js

In script.js you have to find two things:

  - Function: loadFixture() - located in 211 line
  - Event: $('#lang').change() - located in 258 line

### loadFixture()

In this functions you can find information where are located files with translations:

```js
fetch(`fixtures/${name}.ftl`).then(resp => resp.text()),
```

And where is located a json file with variables:

```js
fetch(`fixtures/${name}.json`).then(resp => resp.text()),
```
  
  I added 'lang' variable and I get value from '#lang' field:
  
  ```js
  var lang = $('#lang').val();
 ```
 And I put value of 'lang' to the path to FTL file. Because I want to get the file with selected language:
 
 ```js
 fetch(`fixtures/${name}.${lang}.ftl`).then(resp => resp.text()),
 ```
  
  Oryginal version:

```js 
function loadFixture(name) {
    Promise.all([
      fetch(`fixtures/${name}.ftl`).then(resp => resp.text()),
      fetch(`fixtures/${name}.json`).then(resp => resp.text()),
    ]).then(([ftl, args]) => {
      source.setValue(ftl);
      context.setValue(args);
      source.clearSelection();
      context.clearSelection();
      source.gotoLine(0);
    }).then(update);
  }
  ```
  
  After my modyfications:
  
  ```js
  function loadFixture(name) {
    var lang = $('#lang').val();
    Promise.all([
      fetch(`fixtures/${name}.${lang}.ftl`).then(resp => resp.text()),
      fetch(`fixtures/${name}.json`).then(resp => resp.text()),
    ]).then(([ftl, args]) => {
      source.setValue(ftl);
      context.setValue(args);
      source.clearSelection();
      context.clearSelection();
      source.gotoLine(0);
    }).then(update);
  }
  ```
  
  ### $('#lang').change()
  
  This part is running when user selects the language from select list.
  
  I added 'name' variable and I get value from '#fixture' field:
  
  ```js
  var name = $('#fixture').val();
  ```
  
  And than I added a loadFixture function call:
  
  ```js
  loadFixture(name);
  ```
  
  I deleted update(); function call, because loadFixture has this function call as well.
  
  
  Oryginal version:
  
  ```js
  $('#lang').change(function(evt) {
    config.lang = $(this).val();
    update();
  });
  ```
  
  After my modyfications:

  
  ```js
  $('#lang').change(function(evt) {
    config.lang = $(this).val();
	var name = $('#fixture').val();
	loadFixture(name);
  });
  ```
  
  # FTL files
  
  We have FTL files located in fixtures folder. They should has file name like this:
  
  ```
 default.pl.ftl
 default.en-US.ftl
  ```
  
  The local part of the file name depend from values in #lang field. Right now it looks like this:
  
  ```html
<select id="lang">
    <option value="en-US" selected>English</option>
    <option value="pl">Polish</option>
</select>
  ```
  
    
