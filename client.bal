import ballerina/io;
import ballerina/http;

configurable string refreshToken = ?;
configurable string clientId = ?;
configurable string clientSecret = ?;
configurable string refreshUrl = ?;
configurable string url = ?;
configurable string path = ?;

public function main() returns error? {
    http:Client httpClient = check new (url, {
        timeout: 100000,
        auth: {
            refreshToken,
            clientId,
            clientSecret,
            refreshUrl
        }
    });
    json|error result = httpClient->get(path);
    io:println(result);
}
