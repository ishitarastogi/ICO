pragma solidity ^0.5.0;

import "@openzeppelin/contracts/crowdsale/Crowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";
import "openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol";
contract TokenCrowdsale is Crowdsale{

    int256 public softCap = 437657166805420 ;
      mapping(address => uint256) public contributions;

  // Crowdsale Stages
  enum CrowdsaleStage { PreICO, ICO }

    // Default to presale stage
  CrowdsaleStage public stage = CrowdsaleStage.PreICO;

  // Token Distribution
  uint256 public ReserveWallet   = 30;
  uint256 public InterestPayoutWallet    = 30;
  uint256 public TeamMembersHRWallete  = 10;
  uint256 public CompanyGeneralFundWallet    = 13;
  uint256 public Bounties = 2;
  uint256 public TokenSaleWallet=25;


    constructor(
        uint256 rate, 
        address payable wallet, 
        IERC20 token
          uint256 _cap,
	  uint256 _openingTime,
	  uint256 _closingTime
        )
         Crowdsale(rate, wallet,token)
            CappedCrowdsale(_cap)
    TimedCrowdsale(_openingTime, _closingTime)
         public
         {
            }



  function _preValidatePurchase(
    address _beneficiary,
    uint256 _weiAmount
  )
    internal
  {
    super._preValidatePurchase(_beneficiary, _weiAmount);
    uint256 _existingContribution = contributions[_beneficiary];
    uint256 _newContribution = _existingContribution.add(_weiAmount);
    require(_newContribution >= investorMinCap && _newContribution <= investorHardCap);
	contributions[_beneficiary] = _newContribution;     
  }

}
