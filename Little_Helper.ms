

try (closerolloutfloater MainFloater) catch()

---------------CalledMenu(s)


Rollout Menu01 "Camera Selection" width: 200 height:64
(
	button cameraSelect "ModCamsSelect" pos:[8,6] width:90 height:20
	spinner shutterbox "Shutter" pos:[150,10] width:80 height:20
	on cameraSelect pressed do
	(
		
		select(for o in  cameras where classOf o != Targetobject collect o)
		function openGroups mySelection = 
(
	--loop into selected object
	for obj = mySelection do
	(
		--to find group end open it
		if isGroupHead obj then setGroupOpen obj true
			
	select(for o in  cameras where classOf o != Targetobject collect o)
	)
	
)
--run this function with the current selection as parameter
openGroups $selection
		
			
	)
	on shutterbox changed val do
		(
		$.shutter_length_seconds= $.shutter_length_seconds = 1/Val	
		)

)

Rollout Menu02 "UnGroup Box Ceiling"

(
	button homeReady "Home Ready" pos:[2,6]-----will open the group
	button ceilingOn "Ceiling Box On" pos: [95,6]------turns box visibility to on 
	button ceilingOff "Ceiling Box Off" pos: [195,6]------turns box visibility to off
	
	
	on homeReady pressed do
		(
		select objects
		function openGroups mySelection = 
(
	--loop into selected object
	for obj = mySelection do
	(
		--to find group end open it
		if isGroupHead obj then setGroupOpen obj true
	)
)
--run this function with the current selection as parameter
openGroups $selection
clearSelection()

	)
	on ceilingOn pressed do
	(
		

	select $CEILING_GRP
	$.boxmode = on	
		
	
	)
	
	on ceilingOff pressed do
	(
	select $CEILING_GRP
	$.boxmode = off	
	)

)

Rollout Menu03 "Camera Functions"
(
		--select by camera name
	button ModCam_one "ModCam 001" pos:[2,6]
	button ModCam_two "ModCam 002" pos: [95,6]
	button TopDownCam "TopDownCam" pos: [195,6]
	button ModCam_Empty "ModCam Empty" pos:[2,40]
	
	
	on ModCam_one pressed do
	(
		
		select $ModCam_001
		
	)
	
	on ModCam_two pressed do
	(
		
		select $ModCam_002
		
	)
	
	on TopDownCam pressed do
	(
		
		select $TopDownCAM_00
		
	)
	
	on ModCam_Empty pressed do
	(
		
		select $ModCam_Empty
		
	)
	
	
	
	
)

Rollout Menu04 "About"
(
		label type01"This script assists the user with"
		label type02 " streamling repetitive functions"
		label type03 "Created by Joe Bates"
		label type04 
)

MainFloater = NewRolloutFloater"Modsy Little Helper" 300 250
addRollout Menu01 MainFloater
addRollout Menu02 MainFloater
addRollout Menu03 MainFloater
addRollout Menu04 MainFloater
