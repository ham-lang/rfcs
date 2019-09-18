@echo off
CALL :NORMALIZEPATH "%~dp0..\.."
SET repo_folder=%RETVAL%

:: ========== PROMPT =============
set /p proposal_id="Enter Proposal ID (my-feature): "
copy "%repo_folder%\rfc-template.md" "%repo_folder%\text\0000-%proposal_id%.md"
echo Created "%repo_folder%\text\0000-%proposal_id%.md"

exit /b
:: ========== FUNCTIONS ==========
:NORMALIZEPATH
  set RETVAL=%~dpfn1
  exit /b
