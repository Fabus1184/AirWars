GMAD=/usr/bin/gmad
GMOD_PATH=/home/$(USER)/.steam/steam/steamapps/common/GarrysMod

pack:
	$(GMAD) create -folder addon -out out/airwars_reloaded.gma

copy:
	rm -rf $(GMOD_PATH)/garrysmod/addons/airwars_reloaded || true
	cp -r addon $(GMOD_PATH)/garrysmod/addons/airwars_reloaded
	