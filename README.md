# HW21-puppercoin
Advanced Solidity HW21 Puppercoin

   Create and deploy a crowdsale with the Puppercoin token. We will create a ERC20 Token minted through Crowdsale, using the OpenZeppelin Solidity library. This crowdsale contract will manage the entire process, allowing users to send ETH and get back PUPDB (PupperCoinDB). Our goal will be to launch a Crowdsale with a maximum output of 300 Ether. Lastly, in order to confirm that the crowdsale took place, we will need to use etherscan to check that the contract was successful and PUPDB was transferred.

We used the folowing contracts:
*   PupperCoin
*   PupperCoinSale
*   PupperCoinSaleDeployer


Steps performed  

   *   Compile 'PupperCoin' and then 'PupperCoinCrowdsale' files
   *   Deploy 'PupperCoinSaleDeployer' from the wallet address of your choosing
   *   Deploy 'PupperCoinSale' contract using the 'token_sale_address' from your PupperCoinSaleDeployer
   *   Deploy 'PupperCoin' contract using the 'token_address' from your PupperCoinSaleDeployer
   *   'buyTokens' from your 'PupperCoinSale' contract using your wallet address

