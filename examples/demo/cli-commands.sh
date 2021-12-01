# Create package
scrypto new-package demo
cd demo
resim publish .

# Setup env variables and create account
export package=01ca59a8d6ea4f7efa1765cef702d14e47570c079aedd44992dd09
resim new-account
export pubkey=04006b86b273ff34fce19d6b804eff5a3f5747ada4eaa22f1d49c01e52ddb7875b4b
export acct=029094e6c0d710bfe2fb315f3adbbef112f983e770dde772467b81
resim show %acct
resim show $acct
export xrd=030000000000000000000000000000000000000000000000000004

# Call function to create a vault
resim call-function $package Hello new
export ht=03eb23d0867f32265935d93970aded9033cc868d31795f27d8cb62
export hello=02b8a2383a7d462575e673153ae12e5ed78ee5142abe2a8abcab58
resim show $ht

# Call method to move tokens from the sample vault to an account
resim call-method $hello free_token
resim show $hello
resim show $acct
