pragma solidity >=0.4.21 <0.6.0;
pragma experimental ABIEncoderV2;

import './ERC721Mintable.sol';
import './Verifier.sol';

// TODO define a contract call to the zokrates generated solidity contract <Verifier> or <renamedVerifier>
contract SquareVerifier is Verifier {
}

// TODO define another contract named SolnSquareVerifier that inherits from your ERC721Mintable class
contract SolnSquareVerifier is BreesERC721Token {

     Verifier private verifierContract;

    // TODO define a solutions struct that can hold an index & an address
    struct Solution {
        uint256 solutionIndex;
        address solutionAddress;
    }

    // TODO define an array of the above struct
    Solution[] private _solutions;

    // TODO define a mapping to store unique solutions submitted
    mapping(bytes32 => Solution) private _uniqueSolutionsSubmitted;

    // TODO Create an event to emit when a solution is added
    event SolutionAdded(address account);

    constructor(address verifierAddress, string memory name, string memory symbol)
    BreesERC721Token(name, symbol)
    public {
        verifierContract = SquareVerifier(verifierAddress);
    }

    // TODO Create a function to add the solutions to the array and emit the event
    function addSolution(bytes32 solutionId, uint256 tokenId, address solutionAddress) public {
        _solutions.push(Solution({
            solutionIndex:tokenId,
            solutionAddress:solutionAddress
        }));
        _uniqueSolutionsSubmitted[solutionId] = Solution({
            solutionIndex:tokenId,
            solutionAddress:solutionAddress
        });
        emit SolutionAdded(solutionAddress);
    }

    function getSolutionId(
        uint[2] memory a,
        uint[2][2] memory b,
        uint[2] memory c,
        uint[2] memory input
    )
    private
    pure
    returns(bytes32) {
        return keccak256(abi.encodePacked(a, b, c, input));
    }

    // TODO Create a function to mint new NFT only after the solution has been verified
    //  - make sure the solution is unique (has not been used before)
    //  - make sure you handle metadata as well as tokenSupply
    function mintNewNFT( 
        address to,
        uint256 tokenId,
        uint[2] memory a,
        uint[2][2] memory b,
        uint[2] memory c,
        uint[2] memory input) public 
    {
            bytes32 solutionId = getSolutionId(a, b, c, input);
            require(_uniqueSolutionsSubmitted[solutionId].solutionAddress == address(0), "Solution already exists");
            require(verifierContract.verifyTx(a, b, c, input), "Solution is not verified");
            addSolution(solutionId, tokenId, to);
            super.mint(to, tokenId, 'tokenURI');
    }
}

  


























