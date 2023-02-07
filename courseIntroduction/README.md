1. Why is client diversity important for ethereum?

- client diversity makes the network more resilient to attacks and bugs
  Read More [here](https://ethereum.org/en/developers/docs/nodes-and-clients/client-diversity/)

2. What information is held for an ethereum account?

- An account is made up of a cryptographic pair of keys: public and private.
  Read More [here](https://ethereum.org/en/developers/docs/accounts/)

3. Where is the full ethereum state held?

- State data (together with account balances, contract code and account nonce) is stored by every Ethereum client (or Ethereum node)
  Read More [here](https://www.reddit.com/r/ethereum/comments/3k4h3w/basic_questions_about_the_ethereum_evm_and_state/)
- the root hash of a specialized kind of Merkle tree which stores the entire state of the system: all account balances, contract storage, contract code and account nonces are store in the state root
  Read More [here](https://blog.ethereum.org/2015/06/26/state-tree-pruning)

4. What is a relay attack? Which 2 pieces of information can prevent it?

- A replay attack is a valid data transmission that is maliciously or fraudulently repeated or delayed forexample taking a transaction on one blockchain, and maliciously or fraudulently repeating it on another blockchain.
  Read More [here](https://ethereum.stackexchange.com/questions/26/what-is-a-replay-attack)
- we could guard against replay attacks by including a nonce in the transaction data, which is a number that is incremented for each transaction sent from an account.
- We could also include a chainId to prevent the transaction being replayed on a different chain.

5. In a contract, How do we know who called a view function?
