#import("dart:io");
#import("dart:json");

final HOST = "127.0.0.1";
final PORT = 9999;

final LOG_REQUESTS = true;

void main() {
  HttpServer server = new HttpServer();
  
  server.addRequestHandler((HttpRequest request) => true, requestReceivedHandler);
  
  server.listen(HOST, PORT);
  
  print("Serving the current time on http://${HOST}:${PORT}.");
  
}

void requestReceivedHandler(HttpRequest request, HttpResponse response) {
  if (LOG_REQUESTS) {
    print("Request: ${request.method} ${request.uri}");
  }

  String htmlResponse = createHtmlResponse();
  
  //response.headers.set(HttpHeaders.CONTENT_TYPE, "text/html; charset=UTF-8");
  response.outputStream.writeString(request.queryParameters.length.toString());//request.queryString
  response.outputStream.close();
}

String createHtmlResponse() {
  return JSON.stringify("server");
}
