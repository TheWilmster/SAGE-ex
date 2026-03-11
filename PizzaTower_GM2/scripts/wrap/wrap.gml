function wrap(_val, _min, _max) {
    
    if ((_val % 1) == 0)
    {
        while (_val > _max || _val < _min)
        {
            if (_val > _max)
            {
                _val = (_min + _val) - _max - 1;
            }
            else if (_val < _min)
            {
                _val = ((_max + _val) - _min) + 1;
            }
            else
            {
            }
        }
        
        return _val;
    }
    else
    {
        var _old = _val + 1;
        
        while (_val != _old)
        {
            _old = _val;
            
            if (_val < _min)
            {
                _val = _max - (_min - _val);
            }
            else if (_val > _max)
            {
                _val = _min + (_val - _max);
            }
            else
            {
            }
        }
        
        return _val;
    }
}