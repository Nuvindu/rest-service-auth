import ballerina/http;
import ballerina/log;

service /oauth2 on new http:Listener(9444) {
    function init() {
        log:printInfo("STS started on port: 9444 (HTTP)");
    }

    resource function post token(http:Request req) returns json|http:Unauthorized|http:BadRequest|http:InternalServerError {
        json response = {
            "access_token": "dkg@JJ&!RfuKDBG*EOOG#BKJ#",
            "token_type": "example",
            "expires_in": 10000,
            "example_parameter": "example_value"
        };
        return response;
    }
}
