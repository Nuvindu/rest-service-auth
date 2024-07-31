## Instructions

### Update the configurable fields

If you are using another REST service with OAuth2 credentials, update the following values in the `Config.toml` file.

```toml
endpointUrl = "https://dog.ceo/api"
resourcePath = "/breeds/list/all"

## These values are only required for OAuth2 authentication
refreshToken = "add-the-refresh-token"
clientId = "add-the-client-id"
clientSecret = "add-the-client-secret"
refreshUrl = "add-the-refresh-url"
```

### Run the Ballerina project

```
bal run
```
