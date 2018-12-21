pragma solidity ^0.4.24;

library AccountListLib {
    
    struct AccountList {
      address[] private list; 
    }
    
    function addressSwapSort(address[] storage _arr, uint _index) private returns(address[]){
        _arr[_index] = _arr[_arr.length - 1];
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
     
    function addressReorderSort(address[] storage _arr, uint _index) private returns(address[]){
        for(uint i = _index; i < _arr.length - 1; i++) {
            _arr[_index] = _arr[_index + 1];
        }
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
}
