#build app
#option -p = pristine
#board name without underscore
remote_host = 192.168.100.113


all:
	@echo "\e[1;34m  ----- Building -----$<\e[0m"
	west build   -p always -b AB0003/nrf54l15/cpuapp  -- -DBOARD_ROOT="../"
	
flash:
#	JLinkExe -IP  $(remote_host) -NoGui 1 -CommandFile nrf54l15_flash.jlink
	pyocd load build/merged.hex  -uremote:bb-gerd-1 --target nrf54l

clean:
	rm -rf build