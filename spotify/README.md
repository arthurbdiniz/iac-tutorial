# spotify

This is a terraform provider for managing your spotify playlists.


## Docs

- [Provider page](https://github.com/conradludgate/terraform-provider-spotify)
- [Featured tutorial](https://learn.hashicorp.com/tutorials/terraform/spotify-playlist)
- [Featured interview](https://www.hashicorp.com/blog/build-your-summer-spotify-playlist-with-terraform)


## How to use

First, you need an instance of a spotify oauth2 server running. This acts as a middleware between terraform and spotify to allow easy access to access tokens.

### Public proxy

For a simple way to manage your spotify oauth2 tokens is to use https://oauth2.conrad.cafe. ([source code](https://github.com/conradludgate/oauth2-proxy))

Register a new account, create a spotify token with the following scopes

- user-read-email
- user-read-private
- playlist-read-private
- playlist-modify-private
- playlist-modify-public
- user-library-read
- user-library-modify

Then take note of the token id in the URL and the API key that is shown on the page

Configure the terraform provider like so:

#### secrets.tfvars

```bash
cat >> secrets.tfvars << 'END'
username = ""
token_id = ""
spotify_api_key = ""
END
```

### Run

#### Dependencies

- AWS CLI
- Terraform
- [asdf](https://asdf-vm.com/) (optional)

```bash
make asdf

# terraform init
make init

# terraform plan
make plan

# terraform apply
make apply
```
