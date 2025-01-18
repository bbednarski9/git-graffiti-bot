# git-graffiti-bot
🎨 cover your git history with something more beautiful 🖌️

## Credentials and settings
Create a file called **credentials.conf** with the following entries

```txt
REPO_URL=https://github.com/<your_username>/<your_graffiti_wall_repo>.git
AUTH_USERNAME=<your_username>
AUTH_TOKEN=<your_auth_token_with_write_access>
```

## Security Note

Storing tokens in plaintext files can be risky. Ensure that the credentials.conf file is securely stored and not accessible by unauthorized users. Additionally, consider using environment variables or encrypted secrets management services for production environments or more sensitive setups.
