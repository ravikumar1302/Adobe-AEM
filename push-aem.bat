@echo off
cd /d "D:\000  Coding\00 VS Code Files\Web-D"
git add "6 Adobe AEM"
git commit -m "Auto-sync Adobe AEM - %date% %time%"
git subtree push --prefix="6 Adobe AEM" adobe-aem main
pause
