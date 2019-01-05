pragma solidity ^0.5.0;

library AccountList {
    
    function SwapSort(address[] storage _arr, uint _index) internal returns(address[] memory){
        _arr[_index] = _arr[_arr.length - 1];
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
     
    function ReorderSort(address[] storage _arr, uint _index) internal returns(address[] memory){
        for(uint i = _index; i < _arr.length - 1; i++) {
            _arr[_index] = _arr[_index + 1];
        }
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
    
    function UintSwapSort(address[] storage _arr, uint _index) internal returns(address[] memory){
        _arr[_index] = _arr[_arr.length - 1];
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
    
    function UintReorderSort(uint[] storage _arr, uint _index) internal returns(uint[] memory){
        for(uint i = _index; i < _arr.length - 1; i++) {
            _arr[_index] = _arr[_index + 1];
        }
        delete _arr[_arr.length - 1];
        _arr.length--;
        
        return _arr;
    }
}
