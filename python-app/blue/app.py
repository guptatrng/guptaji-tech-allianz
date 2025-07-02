from flask import Flask
import os

app = Flask(__name__)

@app.route('/')
def hello():
    pod_name = os.getenv('POD_NAME', 'Unknown Pod')
    deployment_name = os.getenv('DEPLOYMENT_NAME', 'Unknown Deployment')

    return f'''
    <html>
        <head>
            <title>Python on Kubernetes</title>
            <style>
                body {{
                    background: linear-gradient(135deg, #1565c0, #42a5f5);
                    color: #ffffff;
                    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                    margin: 0;
                }}
                .container {{
                    text-align: center;
                    background-color: rgba(255, 255, 255, 0.1);
                    padding: 40px 60px;
                    border-radius: 15px;
                    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
                }}
                h1 {{
                    font-size: 3em;
                    margin-bottom: 10px;
                    color: #e3f2fd;
                }}
                p {{
                    font-size: 1.4em;
                    margin-top: 0;
                    color: #bbdefb;
                }}
                .meta {{
                    margin-top: 30px;
                    font-size: 1em;
                    color: #e1f5fe;
                }}
            </style>
        </head>
        <body>
            <div class="container">
                <h1>Hello, World!</h1>
                <p>This Python app is running in a Kubernetes cluster.</p>
                <div class="meta">
                    <p><strong>Deployment:</strong> {deployment_name}</p>
                    <p><strong>Pod:</strong> {pod_name}</p>
                </div>
            </div>
        </body>
    </html>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)