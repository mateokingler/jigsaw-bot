--
-- TODO: Change function i values to reflect actual time
--

-- Settings prompt
local promptLabel = {type=CONTROLLER_TYPE.LABEL, text="jigsaw-bot settings:"}
local promptInput = {type= CONTROLLER_TYPE.PICKER, title="Length", key="Length", value="5 minutes", options={"5 minutes", "20 minutes", "1 hour", "Stop manually"}}
local promptCloseInfo = {type=CONTROLLER_TYPE.LABEL, text="Click the home button 3 times to end the script"}
local controllers = {promptLabel, promptInput, promptCloseInfo};
dialog(controllers, false);

-- Iteration functions
function fiveMinutes()
  local i = 1;
  while i <= 5 do
    i = i + 1;
    tap(161, 978);
	usleep(34000000);
	tap(603, 39);
	usleep(3000000);
	tap(323, 654);
	usleep(1000000);
    end
end

function twentyMinutes()
  local i = 1;
  while i <= 20 do
    i = i + 1;
    tap(161, 978);
	usleep(34000000);
	tap(603, 39);
	usleep(3000000);
	tap(323, 654);
	usleep(1000000);
    end
end

function oneHour()
  local i = 1;
  while i <= 60 do
    i = i + 1;
    tap(161, 978);
	usleep(34000000);
	tap(603, 39);
	usleep(3000000);
	tap(323, 654);
	usleep(1000000);
    end
end

-- FIX MANUAL STOP (Detect user 3 click home button input)
function manualStop()
  local i = 1;
  while i <= 90 do
    i = i + 1;
    tap(161, 978);
	usleep(34000000);
	tap(603, 39);
	usleep(3000000);
	tap(323, 654);
	usleep(1000000);
    end
end

-- Main program loop
if (promptInput.value == "5 minutes")
  then fiveMinutes();
elseif (promptInput.value == "20 minutes")
  then twentyMinutes();
elseif (promptInput.value == "1 hour")
  then oneHour();
elseif (promptInput.value == "Stop manually")
  then manualStop();
end