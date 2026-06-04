file linking

└── boards/AB0001/AB0001_nrf54l15_cpuapp.dts (*0)                       
                                └── nrf54l15_cpuapp_common.dtsi (*1)
                                    └── AB0001_nrf54l15.dtsi  (*2)                          
                                        └── AB0001_nrf54l15-pinctrl.dtsi (*3)
                                                          
*0 = CPU relevante Instanzen main dts source
*1 = cpu system HW Instanzen des SOC
*2 = applikation HW Instanzen und inputs outputs und aliases 
*3 = alle Pins die an die benutzten HW Instanzen des SOC's verdrahtet werden
