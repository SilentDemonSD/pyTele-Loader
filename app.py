from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return """
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pyTele-Loader Repository</title>
    <style>
        body {
            background: linear-gradient(to left, #360033, #0b8793);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            padding: 0 20px;
        }

        .card {
            background: linear-gradient(to right, #1A2980 0%, #26D0CE 51%, #1A2980 100%);
            padding: 15px;
            margin-top: 30px;
            border-radius: 5px;
            text-align: center;
            transition: transform 0.3s;
            text-decoration: none;
            color: white;
            display: block;
            max-height: 4em;
            overflow: hidden;
            border: 2px solid #CCCCCC;
            font-size: 12px;
            white-space: nowrap;
            box-shadow: 0px 10px 20px rgba(0, 0, 0, 0.5);
        }

        .card:hover {
            transform: scale(1.1);
            max-height: none;
        }
    </style>
</head>

<body>
    <div class="container">
        <a href="https://github.com/SilentDemonSD/pyTele-Loader" class="card">
            <p>
                ▀█▀▒██▀░█▒░▒██▀░▒░░█▒░░▄▀▄▒▄▀▄░█▀▄▒██▀▒█▀▄<br>
                ▒█▒░█▄▄▒█▄▄░█▄▄░▀▀▒█▄▄░▀▄▀░█▀█▒█▄▀░█▄▄░█▀▄<br>
                <b>v2.0.0</b>
            </p>
        </a>
    </div>
</body>

</html>
"""
    