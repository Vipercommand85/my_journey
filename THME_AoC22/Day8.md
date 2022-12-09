# Smart Contracts Last Christmas I gave you  my ETH

## What us BLOCKCHAIN?

* by definition is a digital database or ledger distributed amonsg nodes of a peer-to-peer network

* historically used as a finacial technology

* acts as a database to store information in a specified format and is shared among members of a network with no one entity in control

* it aim is to be decentralized and maintain integrity through the use of cryptography to negotiate transactions and provide a utility to the blockchain

## Introduction to Smart Contracts

* are most commonly used as the backbone of **DeFi** applications to support cryptocurrency on a blockchain

 * **DeFi Applications:** facilitate currency exchange between entities; **smart contracts** are programs that defines the details of the exchange and are stored on a blockchain that runs when pre-determined conditions are met

* very comparable to any other program created from a scripting language, ie. Solidity, Vyper, & Yul and more traditional programming languages ie, Rust and JavaScrip

### Functionality of Smart Contract

* contracts are similar to classes in OOP

* fiels/information should be set to private and only accessed or modified from functions defined in the contract

* If we controlled Contract A and Contract B wanted to first deposit 1 Ethereum, and then withdraw 1 Ethereum from Contract A:

 1. Contract B calls the deposit function of Contract A.
 
 2. Contract A authorizes the deposit after checking if any pre-determined conditions need to be met.
 
 3. Contract B calls the withdraw function of Contract A.Contract A authorizes the deposit if the pre-determined conditions for withdrawal are met.
 
 4. Contract B can execute other functions after the Ether is sent from Contract A but before the function resolves.
 
### How do Vulnerabilities in Smart Contracts Occur?

* most arise in functions when conditions are insercurely implemented ie. logic issues or poor exception handling

* Contract A conditions of the withdraw functions:

 * Balance greater than zero
 
 * Send Etherium

* When is the amount to be sent subtracted from the balance?

 * It's only ever deducted from the balance after the Etherium is sent, is this an issue?

* The function should finish before the contract can process another function

* In this example, a contract can consecutively make new calls to functions while an old function is still executing

 * in this case, an attacker can continuously attempt to call the withdraw function before it can update the balance from the previous call
 
 * the pre-defined condition will always be met, even if it truly is not the case
 
### Re-entrancy Attack

* as in the case above, this occurs when a malicious contract uses a fallback function to continue depleting a contract's total balance due to flawed logic after an initial withdraw function occurs

* using the previous example:

 1. Contract B will execure a function to deposit, then withdraw at least 1 Ether; this is required to initiate the withdraw function
 
  * Contract A keeps seperate records for **Total** balance and **Account** balance
  
 2.  At this point Contract B can either drop the response from the withdraw function or invoke a fallback function
 
  * **Fallback Function:** reserved function in **Solidity** that can appear once in a single contract and is executed when currency is sent with no other context or data
  
 3. After this fallback function is called, while the previous withdraw function has not been resolved, it will deplete the total balance of Contract A as the Account Balance has not been set back to zero after the initial withdraw has taken place
  
 4. Since the fallback function is called without any context or data, this will create an infinate loop

### Practical Application

#### Getting Familiar with Remix Environment

* left side has a file explorer, search, Solidity compiler, deployment navigation button

#### Importing the Necessary Contracts

* import the necessary files with the **.sol** extension

#### Compile Contracts

* navigate to *solidity compiler* and select ```0.8.10+commitfcXXXXX``` from the dropdown *compiler* menu

#### Deploy and Interacting with Contracts

* Select a contract from the drop down menu and then hit the delpoy button

* use the action buttons underneath the *deployed contracts* section
  
  * you will need to enter a value into the *value* box before you can execute a *__deposit or withdrawl__*
  
  * the deposit button calls a public function as if it were another contract calling the function externally

* Now that we have the contract operating as designed, let's attack it

  1. Select the contract you want to deploy from the *contract* dropdown menu
  
  2. Deploy the contract by pressing the *deploy* buttom
    
   * you will need to provide a reference to the contract you are targeting before deploying the attack contract
    
   * enter the address of the *EtherStore* from the *__Deployed Contracts__* section
  
  3. Confirm the contract was delpoyed and the attack function can be seen from the *deployed contracts* subsection
  
  4. Execute and/or interact with the contract's function; note that most functions require some form of value inout to execute a function properly


## Questions

**What is the flag found after attacking the provided EtherStore Contract?**
```

``` 
