# INTRODUCTION

This plugin provides a simple function to remove wrapping code in JavaScript.
e.g. for loops, functions, for loops etc

To illustrate, let's take the following code:

```js
filteredAttributes.forEach(attribute => {
    if (attribute.length) {
        classRegexes[attribute] = getAttributeMatcher(attribute);
        console.log(attribute);
    }
});
```

With the cursor positioned anywhere on the top line, typing `<leader>dw` will
result in the following code:

```js
if (attribute.length) {
    classRegexes[attribute] = getAttributeMatcher(attribute);
    console.log(attribute);
}
```

This works for any wrappers that use parens, curly braces or square brackets.

# KNOWN ISSUES:

*   Currently JavaScript only, but can easily add more FileTypes
*   Creates a marker with the letter `x`
*   Only works for multi-line wrappers, not e.g. `f = () => { return 1 }, () => { return 2 }`
*   Doesn't support whitespace at the end of the line at present
