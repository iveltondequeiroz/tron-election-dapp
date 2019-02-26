pragma solidity ^0.4.20;

contract Election {
    
    struct Candidate {
        uint id;
        string name;
        uint voteCount;
    }
    
    mapping(uint => Candidate) public candidates;
    uint public candidateCount;
    mapping(address => bool) public voter;
    
    constructor() public {
        addCandidate("Alice");
        addCandidate("Bob");
    }
    
    function addCandidate(string memory _name) private {
        candidateCount++;
        candidates[candidateCount] = Candidate(candidateCount, _name, 0);
    }
    
    function vote(uint _candidateId) public {
        require(!voter[msg.sender]);
        require(_candidateId > 0 && _candidateId<= candidateCount);
        
        voter[msg.sender] = true;       
        candidates[_candidateId].voteCount++;
    }
    
}