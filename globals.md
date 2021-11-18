
## msg global


# msg.data
(bytes calldata): complete calldata

# msg.sender
(address): person who uses the contract at some time.
Inside the contract `constructor`, "msg.sender" is guaranteed to
be the person who deploys the smart contract!!

# msg.sig 
(bytes4): first four bytes of the calldata
(i.e. function identifier)

# msg.value 
(uint): number of wei sent with the message
(wei is just the base unit of a cryptocurrency as integer.)








#### tx global

# tx.gasprice 
(uint): gas price of the transaction

# tx.origin
(address): sender of the transaction (full call chain)





There are other globals:
https://docs.soliditylang.org/en/v0.8.9/units-and-global-variables.html

