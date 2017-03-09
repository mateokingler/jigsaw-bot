--
-- TODO: Change function i values to reflect actual time
--

-- Iteration functions
function fiveMinutes()
  local i = 1;
  while i <= 5 do
    i = i + 1;
	local jigsawState = appState("com.nate.jigsawmoney");
    if jigsawState == "NOT RUNNING"
      then
      tap(52, 21);
      usleep(500000);
      tap(52, 21);
      usleep(500000);
      fiveMinutes()
    elseif jigsawState == "ACTIVATED"
      then
      tap(161, 978);
      usleep(34000000);
      tap(603, 39);
      usleep(3000000);
      tap(323, 654);
      usleep(1000000);
    end
  end
end

function twentyMinutes()
  local i = 1;
  while i <= 20 do
    i = i + 1;
	local jigsawState = appState("com.nate.jigsawmoney");
    if jigsawState == "NOT RUNNING"
      then
      tap(52, 21);
      usleep(500000);
      tap(52, 21);
      usleep(500000);
      twentyMinutes()
    elseif jigsawState == "ACTIVATED"
      then
      tap(161, 978);
      usleep(34000000);
      tap(603, 39);
      usleep(3000000);
      tap(323, 654);
      usleep(1000000);
    end
  end
end

function oneHour()
  local i = 1;
  while i <= 60 do
    i = i + 1;
	local jigsawState = appState("com.nate.jigsawmoney");
    if jigsawState == "NOT RUNNING"
      then
      tap(52, 21);
      usleep(500000);
      tap(52, 21);
      usleep(500000);
      oneHour()
    elseif jigsawState == "ACTIVATED"
      then
      tap(161, 978);
      usleep(34000000);
      tap(603, 39);
      usleep(3000000);
      tap(323, 654);
      usleep(1000000);
    end
  end
end

-- FIX MANUAL STOP (Detect user 3 click home button input)
function manualStop()
  local i = 1;
  while i <= 2000 do
    i = i + 1;
	local jigsawState = appState("com.nate.jigsawmoney");
    if jigsawState == "NOT RUNNING"
      then
      usleep(500000);
      tap(52, 21);
      usleep(2000000);
      manualStop();
    elseif jigsawState == "ACTIVATED"
      then
      tap(161, 978);
      usleep(34000000);
      tap(603, 39);
      usleep(3000000);
      tap(323, 654);
      usleep(1000000);
    end
  end
end

-- Main program loop
function iterationSelect()
  if (promptInput.value == "5 minutes")
    then fiveMinutes();
  elseif (promptInput.value == "20 minutes")
    then twentyMinutes();
  elseif (promptInput.value == "1 hour")
    then oneHour();
  elseif (promptInput.value == "Stop manually")
    then manualStop();
  end
end

-- Settings prompt
function runSettings()
  promptLabel = {type=CONTROLLER_TYPE.LABEL, text="jigsaw-bot settings:"}
  promptInput = {type= CONTROLLER_TYPE.PICKER, title="Length", key="Length", value="5 minutes", options={"5 minutes", "20 minutes", "1 hour", "Stop manually"}}
  promptCloseInfo = {type=CONTROLLER_TYPE.LABEL, text="Hold 'volume down' button to end script"}
  controllers = {promptLabel, promptInput, promptCloseInfo};
  dialog(controllers, false);
  iterationSelect();
end

-- Detect screen resolution, if true pass to runSettings()
local screenWidth = getScreenResolution();
if screenWidth == 640 -- iPhone 5/5S/5C/SE
  then runSettings();
  elseif screenWidth == 750 -- iPhone 6
	then alert("Sorry, jigsaw-bot does not currently support iPhone 6s");
  elseif screenWidth == 750 -- iPhone 7
	then alert("Sorry, jigsaw-bot does not currently support iPhone 7s");
  elseif screenWidth == 1242 -- iPhone 7+
	then alert("Sorry, jigsaw-bot does not currently support the iPhone 7+");
  else
	alert("Sorry, jigsaw-bot does not currently support this device");
end