@echo off

REM ******************************************************************
REM  Copyright 2020 Advanced Micro Devices, Inc
REM  Licensed under the Apache License, Version 2.0 (the "License");
REM  you may not use this file except in compliance with the License.
REM  You may obtain a copy of the License at
REM
REM     http://www.apache.org/licenses/LICENSE-2.0
REM
REM  Unless required by applicable law or agreed to in writing, software
REM  distributed under the License is distributed on an "AS IS" BASIS,
REM  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM  See the License for the specific language governing permissions and
REM  limitations under the License.
REM  *******************************************************************

if ""=="%BLENDER_EXE%" (
@echo on
echo "Please set BLENDER_EXE environment variable"
exit
)

REM set Debug Mode flag
set HDUSD_BLENDER_DEBUG=1

REM Running Blender with plugin
@echo on
py cmd_tools/run_blender.py "%BLENDER_EXE%" cmd_tools/test_plugin.py

@echo off
REM it's much easier to get issue traceback on crash if pause is present; remove if not needed
REM pause

