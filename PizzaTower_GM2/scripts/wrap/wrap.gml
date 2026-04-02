function wrap(_val, _min, _max) {
	if (_min > _max) { // because people are people
		var _temp = _max;
		_max = _min;
		_min = _max;
	}
	while (_val > _max) {
		_val -= (_max - _min);
	}
	while (_val < _min) {
		_val += (_max - _min);
	}
	return _val;
}
/* the old wrap function keeps getting stuck in loops and i cant fix it, so i rewrote it.
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
}*/