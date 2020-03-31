#PROJECT-ANONYMOUS COPYRIGHT MIT LICENCE (c) 2020 Ayush Chatterjee
-----
local app = {}
function Assert(data)
if data == nil or data == "" or data == "nil" then
return false
else
return true
end
end
function mearrass(memory, array)
if Assert(memory) and Assert(array) then
return true
else
return false
end
end
function typetab(array, type)
local datatype = {}
for i = 1, #array do
if Assert(array[i].type) then
table.insert(datatype, i, array[i].type)
else
if Assert(type) then
table.insert(datatype, i, type)
else
return false
end
end
end
return true, datatype
end
function app.memorysearch(memory, array, type)
gg.setVisible(false)
local rx = mearrass(memory, array)
if rx then
local rx, datatype = typetab(array, type)
if rx then
if Assert(array[1].hv) then
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv .. "~" .. array[1].hv, datatype[1])
else
gg.clearResults()
gg.setRanges(memory)
gg.searchNumber(array[1].lv, datatype[1])
end
if gg.getResultCount() == 0 then
return false
else
local tab = {}
local data = gg.getResults(gg.getResultCount())
gg.clearResults()
for i = 1, #data do
data[i].rx = true
end
for i = 2, #array do
local t = {}
local offset = array[i].offset
for x = 1, #data do
t[#t + 1] = {}
t[#t].address = data[x].address + offset
t[#t].flags = datatype[i]
end
local t = gg.getValues(t)
for z = 1, #t do
if Assert(array[i].hv) then
if tonumber(t[z].value) < tonumber(array[i].lv) or tonumber(t[z].value) > tonumber(array[i].hv) then
data[z].rx = false
end
else
if tostring(t[z].value) ~= tostring(array[i].lv) then
data[z].rx = false
end
end
end
end
for i = 1, #data do
if data[i].rx then
tab[#tab + 1] = data[i].address
end
end
if #tab > 0 then
return true, tab
else
return false
end
end
else
print("type")
gg.toast("type")
os.exit()
end
else
print("memory or array")
gg.toast("memory or array")
os.exit()
end
end
function app.memoryread(addr, type)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
if #t > 0 then
return true, gg.getValues(t)[1].value
else
return false
end
end
function app.memorywrite(addr, type, value, freeze)
local t = {}
t[1] = {}
t[1].address = addr
t[1].flags = type
t[1].value = value
if #t > 0 then
if Assert(freeze) then
t[1].freeze = freeze
--gg.setValues(t)
return gg.addListItems(t)
else
return gg.setValues(t)
end
else
return false
end
end
-------------------------------------------------------------------------------------------

function Main()
RX = gg.prompt({
'ESP [STEP 1]',
'ESP [STEP 2]',
'EXIT',}, 
{}, 
{"checkbox","checkbox", "checkbox"})
if RX == nil then else
if RX[1] == true then A()end
if RX[2] == true then B()end
if RX[3] == true then C()end
end
RXY=0
end


function A()
local memory = 8
local array = {
{["lv"] = 2.6253291e-27, ["type"] = 16},
{["lv"] = 6.1629971e-33, ["offset"] = 4, ["type"] = 16},
{["lv"] = -4.5748159e22, ["offset"] = 8, ["type"] = 16},
{["lv"] = -9.156971e22, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, 2.6253293e-27,true)
end
gg.toast("PROJECT-ANONYMOUS")
else
gg.toast("PROJECT-ANONYMOUS")
end
local array = {
{["lv"] = -2.9522003e20, ["type"] = 16},
{["lv"] = -2.9525603e20, ["offset"] = 4, ["type"] = 16},
{["lv"] = -9.9065615e27, ["offset"] = 8, ["type"] = 16},
{["lv"] = -5.9029581e21, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +12, 16, -5.9029587e21,true)
end
gg.toast("PROJECT-ANONYMOUS")
else
gg.toast("PROJECT-ANONYMOUS")
end
local array = {
{["lv"] = -9.9839328e27, ["type"] = 16},
{["lv"] = -3.8685626e25, ["offset"] = 4, ["type"] = 16},
{["lv"] = -6.1549554e27, ["offset"] = 8, ["type"] = 16},
{["lv"] = -1.3697734e28, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, -9.9839906e27,true)
end
gg.toast("PROJECT-ANONYMOUS")
else
gg.toast("PROJECT-ANONYMOUS")
end
local array = {
{["lv"] = -3.6965549e20, ["type"] = 16},
{["lv"] = -8.7366122e22, ["offset"] = 4, ["type"] = 16},
{["lv"] = -3.8369228e21, ["offset"] = 8, ["type"] = 16},
{["lv"] = 5.8191335e-26, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, -3.6965553e20,true)
end
gg.toast("PROJECT-ANONYMOUS")
else
gg.toast("PROJECT-ANONYMOUS")
end
local array = {
{["lv"] = -3.8685626e25, ["type"] = 16},
{["lv"] = -6.1526668e27, ["offset"] = 4, ["type"] = 16},
{["lv"] = -1.2811952e23, ["offset"] = 8, ["type"] = 16},
{["lv"] = -1.1159009e28, ["offset"] = 12, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, -3.8685631e25,true)
end
gg.toast("PROJECT-ANONYMOUS")
else
gg.toast("PROJECT-ANONYMOUS")
end
local array = {
{["lv"] = 1.6615354e35, ["type"] = 16},
{["lv"] = -1.1221873e28, ["offset"] = 4, ["type"] = 16},
{["lv"] = 1.6615354e35, ["offset"] = 468, ["type"] = 16},
{["lv"] = -1.1221873e28, ["offset"] = 472, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +0, 16, 1.6615352e35,true)
app.memorywrite(data[i] +468, 16, 1.661535e35,true)
end
gg.toast("PROJECT-ANONYMOUS")
else
gg.toast("PROJECT-ANONYMOUS")
end
local array = {
{["lv"] = -8.3342498e22, ["type"] = 16},
{["lv"] = -1.3799359e28, ["offset"] = 12, ["type"] = 16},
{["lv"] = -1.2382423e28, ["offset"] = 32, ["type"] = 16},
{["lv"] = 1.6615354e35, ["offset"] = 56, ["type"] = 16},
}
local rx, data = app.memorysearch(memory, array)
if rx then
for i = 1, #data do
app.memorywrite(data[i] +56, 16, 1.6615352e35,true)
end
gg.toast("PROJECT-ANONYMOUS")
else
gg.toast("PROJECT-ANONYMOUS")
end
end

function B()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-476053504;-349478012:189", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-476053504", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("-476053503;-476053504", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("324009984;-348261320:165", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("324009984", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("324009985", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-336586203;-511702015:105", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511702015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-511633406;-352273285;-511633406:809", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511633406", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-335545007;-511702015:85", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-511702015", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("2046820354;-336587221:9", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2046820354", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("2046820353", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,901,891,198,734,303,227", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
lol = gg.getResultsCount()
if lol == 1 then
gg.toast("PROJECT-ANONYMOUS")
gg.getResults(1)
gg.editAll("-1,901,891,198,902,075,392", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("PROJECT-ANONYMOUS")
end
end

function C()
gg.toast("THANKS FOR CHOOSING US")
os.exit()
end

while true do
if gg.isVisible(true) then
RXY = 1
gg.setVisible(false)
end
if RXY == 1 then
Main()
end
end
