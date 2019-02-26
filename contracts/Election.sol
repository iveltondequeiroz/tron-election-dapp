pragma solidity ^0.5.4;

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
        
    }
    
    function addCandidate(string _name) private {
        
    }
    
    function vote(uint _candidateId) public {
        
    }   
}