--[[====Rular Commands====]]-- 

_cmd = {}
_comments = {}
_SystemLog = {}
_cmdr = 0
TRUE = true
FALSE = false
NIL = nil

function _(comment)
	local cm = tostring(comment)
	table.insert(_comments, cm)
end

function loadcmd(cm)
	table.insert(_cmd, cm)
	_cmdr = _cmdr + 1
	table.insert(_SystemLog, "inserted command")
	table.insert(_SystemLog, "current repitition: ".._cmdr)
end

function echo(text)
	ptext = tostring(text)
	print(ptext)
end

function bool(cond)
	return cond
end

function is(cond)
	if cond == true then
		_cmd[_cmdr]()
	else
		error("CONDITIONAL is not a TRUE value")
	end
end

function will(cond)
	if cond == true or cond == false then
		while cond == true do
			_cmd[_cmdr]()
		end
	else
		error("CONDITIONAL is not a boolean", 3)
	end
end

function dor(mn,mx,it)
	if it > mx then
		error("ITERATION value is greater than MAX value", 3)
	else
		for i=mn,mx,it do
			_cmd[_cmdr]()
		end
	end
end

function unless(cond)
	if cond == true or cond == false then
		repeat
		_cmd[_cmdr]()
		until cond == true
	else
		error("CONDITIONAL is not a boolean", 3)
	end
end

-----------------------------
dofile("Rular.rular")