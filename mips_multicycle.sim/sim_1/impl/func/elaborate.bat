@echo off
set xv_path=C:\\Xilinx\\Vivado\\2016.4\\bin
call %xv_path%/xelab  -wto 415097e419d14a4c88cd1665e8838955 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot multiCycle_func_impl xil_defaultlib.multiCycle -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
