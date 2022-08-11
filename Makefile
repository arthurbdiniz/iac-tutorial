asdf:
	asdf plugin add awscli || true
	asdf plugin add terraform || true
	asdf plugin add nodejs || true
	asdf install

configure:
	aws configure --profile unb