import { createServer } from 'node:http'

async function HttpHandler(request, response) {
    response.writeHead(200, {
        'Content-Type': 'text/plain',
    });
    response.end("Adryann Rafael")
}

const app = createServer(HttpHandler)
app.listen(8080)
    .on("listening", () => console.log("listering"))