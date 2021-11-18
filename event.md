
# solidity event

Solidity events are stored permanently on the blockchain.
They have a `from` address, and store any data of the event.


```s

event  PurchasedItem(address buyer, uint price);
# defines an event.


emit  PurchasedItem(msg.sender, msg.value);
# emits an event on the blockchain
# This event is recorded on the blockchain !!!

```


# capturing events.
Usually events are captured externally with JS,
or some other language.

Example:
```js

SmartContract.events.test1({fromBlock: 0, toBlock: 'latest'} , (error, event) => { console.log(JSON.stringify(event)); })
 .on('data', (event) => {
console.log("The event is : " + JSON.stringify(event));
 }).on('changed', (event) => {
console.log("Changed event : " + JSON.stringify(event));
 }).on('error', console.error);

```


