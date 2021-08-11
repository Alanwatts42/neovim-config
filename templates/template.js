
<html>
<head>
    <title>JavaScript Template literals Example</title>
</head>
<body>
    <script>
        //Before ES6
        const myString = 'I am a Normal string before ES6';
        console.log("Before ES6 string: ", myString)

        //With ES6
        const templateLiterals = `I am a Template Literals in ES6`;
        console.log("With ES6 template string: ", templateLiterals)
        console.log("With ES6 template string length: ", templateLiterals.length); // 29
        console.log("With ES6 template string type is: ", typeof templateLiterals);// string

        //template literals using backticks with single quotes
        const templateLiteralswithSingleQuotes = `Here's a Template Literals in ES6`;
        console.log("template literals using backticks with single quotes: ", templateLiteralswithSingleQuotes);

        //template literals with backticks can be escape with \
        //const templateLiteralswitBackticks = `Im a Template Literals in ES6 \ `instead of double quotes`;
    </script>
</body>
</html>






