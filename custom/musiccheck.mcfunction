#Vaniville
title @a[x=374,y=0,z=1540,dx=241,dy=256,dz=216,score_MusicCheck_min=2] actionbar {"text":"Vaniville Town"}
scoreboard players set @a[x=374,y=0,z=1540,dx=241,dy=256,dz=216,score_MusicCheck_min=2,score_MusicCooldown_min=1] click 1
scoreboard players set @a[x=374,y=0,z=1540,dx=241,dy=256,dz=216] MusicCheck 1

#Route 1
title @a[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCheck_min=1,score_MusicCheck=1] actionbar {"text":"Route 1"}
title @a[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCheck_min=3,score_MusicCooldown_min=1] actionbar {"text":"Route 1"}
scoreboard players set @a[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCheck_min=1,score_MusicCheck=1,score_MusicCooldown_min=1] click 1
scoreboard players set @a[x=445,y=0,z=1442,dx=62,dy=256,dz=87,score_MusicCheck_min=3,score_MusicCooldown_min=1] click 1
scoreboard players set @a[x=445,y=0,z=1442,dx=62,dy=256,dz=87] MusicCheck 2

#Aquacorde Town
title @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCheck_min=1,score_MusicCheck=2] actionbar {"text":"Aquacorde Town"}
title @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCheck_min=4] actionbar {"text":"Aquacorde Town"}
scoreboard players set @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCheck_min=1,score_MusicCheck=2,score_MusicCooldown_min=1] click 1
scoreboard players set @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205,score_MusicCheck_min=4,score_MusicCooldown_min=1] click 1
scoreboard players set @a[x=395,y=0,z=1236,dx=147,dy=256,dz=205] MusicCheck 3

#Route 2
title @a[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCheck_min=1,score_MusicCheck=3] actionbar {"text":"Route 2"}
title @a[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCheck_min=5] actionbar {"text":"Route 2"}
scoreboard players set @a[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCheck_min=1,score_MusicCheck=3,score_MusicCooldown_min=1] click 1
scoreboard players set @a[x=396,y=0,z=979,dx=146,dy=256,dz=256,score_MusicCheck_min=5,score_MusicCooldown_min=1] click 1
scoreboard players set @a[x=396,y=0,z=979,dx=146,dy=256,dz=256] MusicCheck 4





































































































#Resets after all routes
scoreboard players set @a[score_MusicSteps_min=3000] MusicSteps 0
scoreboard players set @a[score_MusicSprint_min=3000] MusicSprint 0
