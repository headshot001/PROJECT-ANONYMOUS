----------------------------------------------------------------------------------------------------------------------------
#PROJECT-ANONYMOUS COPYRIGHT MIT LICENCE (c) 2020 Ayush Chatterjee
----------------------------------------------------------------------------------------------------------------------------

::start::
::menu::
gg.setVisible(false)
menu = gg.choice({'ANTIBAN LOBBY','ESP HACK LOBBY/GAME','EXIT'},nil,'SCRIPT FOR PROJECT-ANONYMOUS[github.com/Ayush1311/PROJECT-ANONYMOUS]')

--dk--
if menu ==1 then goto aa end
if menu ==2 then goto bb end
if menu ==3 then goto cc end
if menu == nil then goto dd end

::aa::
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
  gg.alert("SOME ERROR OCCURRED ! PLEASE RESTART THE SCRIPT AND TRY AGAIN")
else
  gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  n = gg.getResultCount()
  jz = gg.getResults(n)
  do
    do
      for i = 1, n do
        gg.addListItems({
          [1] = {
            address = jz[i].address - 252,
            flags = 4,
            freeze = true,
            value = 4328
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 48,
            flags = 4,
            freeze = true,
            value = 432
          }
        })
        gg.addListItems({
          [1] = {
            address = jz[i].address + 100,
            flags = 4,
            freeze = true,
            value = 4451
          }
        })
      end
    end
  end
  gg.toast("CODEOP")
  gg.clearResults()
  gg.setRanges(gg.REGION_ANONYMOUS)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("1.5584387e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
else
  gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
  n = gg.getResultCount()
  jz = gg.getResults(n)
  do
    for i = 1, n do
      gg.addListItems({
        [1] = {
          address = jz[i].address - 252,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 236,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 232,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 72,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 68,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address - 64,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 48,
          flags = 4,
          freeze = true,
          value = 119
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 64,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 68,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 100,
          flags = 4,
          freeze = true,
          value = 4451
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 512,
          flags = 4,
          freeze = true,
          value = 0
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 540,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 544,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
      gg.addListItems({
        [1] = {
          address = jz[i].address + 548,
          flags = 4,
          freeze = true,
          value = 70086
        }
      })
    end
  end
end
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608;196,608:45", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("196,608", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
jg = gg.getResults(100)
sl = gg.getResultCount()
do
  do
    for i = 1, sl do
      dzy = jg[i].address
      gg.addListItems({
        [1] = {
          address = dzy,
          flags = gg.TYPE_DWORD,
          freeze = true,
          value = 110
        }
      })
    end
  end
end
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-2.53642977e20;5.04878683e-29;5.1007099e-29;-9.26764422e22;-3.83692277e21:145",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("-2.53642977e20",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(6281913639784)
gg.editAll("0",gg.TYPE_FLOAT)
gg.clearResults()
gg.alert("ANTIBAN ACTIVATED")
goto menu

::bb::
gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("6.1629802e-33;1.6615354e35:97", gg.TYPE_FLOAT)
  gg.searchNumber("1.6615354e35", gg.TYPE_FLOAT)
  gg.getResults(2)
  gg.editAll("1.6615352e35", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-3.8685626e25;-1.1149337e28;-3.9107097e21:25", gg.TYPE_FLOAT)
  gg.searchNumber("-3.8685626e25", gg.TYPE_FLOAT)
  gg.getResults(1)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("-2.9525603e20;-1.2811952e23:17", gg.TYPE_FLOAT)
  gg.searchNumber("-2.9525603e20", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("0", gg.TYPE_FLOAT)
  gg.clearResults()
  gg.setRanges(gg.REGION_C_DATA)
  gg.searchNumber("5.4274438e-21;2.6253291e-27:41", gg.TYPE_FLOAT)
  gg.searchNumber("2.6253291e-27", gg.TYPE_FLOAT)
  gg.getResults(100)
  gg.editAll("2.6253293e-27", gg.TYPE_FLOAT)
  gg.clearResults()
gg.toast("ESP ACTIVATED")
goto menu

::cc::
gg.toast("THANKS FOR USING PROJECT-ANONYMOUS")
os.exit()


::dd::
while true do
if gg.isVisible(true) then
goto menu
gg.setVisible(false)
end
end
