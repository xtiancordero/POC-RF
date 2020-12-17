for /f "delims=" %%x in (Setup.txt) do set %%x
echo
cd..

robot -d TestSummaryReport -i %tag% %Test%


