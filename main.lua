--[[====Rular Commands====]]-- 
TRUE = true
FALSE = false
NIL = nil

function _(...)end

function echo(...)
	print(...)
end

function bool(cond)
	return cond
end

function notbool(cond)
	return not cond
end

function is(cond,callback,...)
	assert(type(cond) == "boolean", "conditional is not a boolean")
	assert(type(callback) == "function","No function inputed")
	if cond == true then
		callback(...)
	end
end

function isnot(cond,callback,...)
	assert(type(cond) == "boolean", "conditional is not a boolean")
	assert(type(callback) == "function","No function inputed")
	if not cond == true then
		callback(...)
	end
end

function will(cond,callback,...)
	assert(type(cond) == "boolean", "conditional is not a boolean")
	assert(type(callback) == "function","No function inputed")
	while cond == true do
		callback(...)
	end
end

function willnot(cond,callback,...)
	assert(type(cond) == "boolean", "conditional is not a boolean")
	assert(type(callback) == "function","No function inputed")
	while cond == false do
		callback(...)
	end
end

function dofor(mn,mx,it,callback,...)
print(it,mx+mn)
	assert(type(mn) == "number","Minimum is not a number")
	assert(type(mx) == "number","Maximum is not a number")
	assert(type(it) == "number","Iteration is not a number")
	assert(it < (mx + mn), "Iteration grater than the max value")
	assert(type(callback) == "function","No function inputed")

	for i=mn,mx,it do
		callback(...)
	end
end

function unless(cond,callback,...)
	assert(type(cond) == "boolean", "conditional is not a boolean")
	assert(type(callback) == "function","No function inputed")
	repeat
		callback(...)
	until cond == true
end

function unlessnot(cond,callback,...)
	assert(type(cond) == "boolean", "conditional is not a boolean")
	assert(type(callback) == "function","No function inputed")
	repeat
		callback(...)
	until cond == false
end

-----------------------------
dofile("Rular.rla")