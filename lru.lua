local a = '0'
repeat
    local b = redis.call('SCAN', a, 'COUNT', 100)
    local c = b[2]
    for d = 1, #c do
        local e = c[d]
        local f = redis.call('OBJECT', 'IDLETIME', e)
        if f > 60 * 60 * 24 then
            redis.call('DEL', e)
        end
    end
    a = b[1]
until a == '0'
