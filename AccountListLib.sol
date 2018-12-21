pragma solidity ^0.4.24;

library AccountListLib {
    
    function addressSwapSort(address[] storage _arr, uint _index) public returns(address[]){
        _arr[_index] = _arr[_arr.length - 1];
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
     
    function addressReorderSort(address[] storage _arr, uint _index) public returns(address[]){
        for(uint i = _index; i < _arr.length - 1; i++) {
            _arr[_index] = _arr[_index + 1];
        }
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
}
