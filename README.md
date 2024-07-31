## Instructions

### Update the configurable fields

If you are using another REST service with OAuth2 credentials, update the following values in the `Config.toml` file.

```toml
endpointUrl = "add-rest-endpoint"
resourcePath = "add-resource-path"

## These values are only required for OAuth2 authentication
tokenUrl = "add-the-token-url"
clientId = "add-the-client-id"
clientSecret = "add-the-client-secret"
```

### Run the Ballerina project

```
bal run
```
