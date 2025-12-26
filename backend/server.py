import http.server
import socketserver

PORT = 8000

# Configuram serverul sa serveasca fisierele din folderul curent
Handler = http.server.SimpleHTTPRequestHandler

print(f"--- 🚀 Serverul porneste pe portul {PORT} ---")
print("Apasa Ctrl+C pentru a opri serverul.")

# Aceasta comanda porneste bucla infinita (serverul propriu-zis)
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    httpd.serve_forever()

