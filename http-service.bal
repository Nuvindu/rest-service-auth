import ballerina/http;

service / on new http:Listener(8081) {

    resource function get example(http:Request req) returns json|http:Unauthorized|http:BadRequest|http:InternalServerError {
        json response = {
            "access_token": "dkg@JJ&!RfuKDBG*EOOG#BKJ#",
            "token_type": "example",
            "expires_in": 10000,
            "example_parameter": "example_value"
        };
        return response;
    }
}
