* Setting up GIT

clear
cap cd "D:\UNLP_Maeco\QR\QR_2024TP1" // main 


* check directory

dir // windows
*ls // mac unix

* Add README file content
! echo ### TP Quantile Regression >> README.md // We update the readme file locally (use any editor)


* Initialize Git: Remember it is preferable to run all git 

! git init

! git add README.md
! git commit -m "v1.015 added on 20240929 by BC"

* ! git remote add origin https://github.com/bracluque/UNLP_QR.git
! git push -u origin main

*/




* Initialize Git repository (if not already initialized)
! git init

* Add the README.md file to the staging area
*! git add README.md

* Commit changes with a message
! git commit -m "v1.015 added on 20240929 by BC"

* Optional: Create and switch to the 'main' branch if it's not already created
! git checkout -b main

* Add the remote repository (ignore if it's already added)
*! git remote add origin https://github.com/bracluque/UNLP_QR.git

* Push to the 'main' branch
! git push -u origin main

* If you're still on 'master' and prefer that, push with:
* ! git push -u origin master


/* Create a file that runs git commands to push the files to the github repo
file close _all
file open git using mygit.bat, write replace
 file write git "git remote add origin " `"""' "https://github.com/bracluque/UNLP_QR.git" `"""' _n
 file write git "git add --all" _n
 file write git "git commit -m "
 file write git `"""' "minor fixes" `"""' _n
 file write git "git push" _n
file close git
*/
! git pull 
! mygit.bat


* -----------------------------------------------
* Setting up GIT for Project: QR_2024TP1
* -----------------------------------------------

clear
cap cd "D:\UNLP_Maeco\QR\QR_2024TP1"  // Set your working directory

* Check current directory structure
dir // Windows
* ls // Uncomment for Mac/Unix

* -----------------------------------------------
* Step 1: Create README File
* -----------------------------------------------
* ! echo ### TP Quantile Regression >> README.md 

* -----------------------------------------------
* Step 2: Initialize Git Repository
* -----------------------------------------------
*! git init  // Initialize a new Git repository (if not already initialized)

* -----------------------------------------------
* Step 3: Stage and Commit Changes
* -----------------------------------------------
*! git add README.md  // Stage the README file
*! git commit -m "[BC-20240929]: Add README file"  // Commit changes

* -----------------------------------------------
* Step 4: Configure Remote Repository
* -----------------------------------------------
*! git remote add origin https://github.com/bracluque/QR2024_TP1.git  // Add remote repository

* -----------------------------------------------
* Step 5: Push to Remote Repository
* -----------------------------------------------
*! git checkout -b main 		// Create and switch to the 'main' branch if it's not already created
*! git push -u origin main 	// Push local commits to the main branch of the remote repository

/* 
* -------------------------------------------------
* Create a batch file to automate Git commands
* -------------------------------------------------

	* Close all open files (if any)
	file close _all

	* Open a new batch file to write Git commands
	file open git using "mygit.bat", write replace

	* Write Git commands to the batch file
	file write git "@echo off" _n
	file write git "git remote add origin https://github.com/bracluque/QR2024_TP1.git" _n  // Add remote repository
	file write git "git add --all" _n  // Stage all changes
	file write git "git commit -m "Automated commit after running dofile"" _n  // Commit with a message
	file write git "git push" _n  // Push changes to the remote repository

	* Close the batch file
	file close git
*/

* Close all open files (if any)
file close _all

* Define the commit message as a local macro

local commitMessage = `"Automated commit"'
di "`commitMessage'"
* Open a new batch file to write Git commands
file open git using "mygit_2.bat", write replace

* Write Git commands to the batch file
file write git "@echo off" _n  // Suppress command echoing
file write git "git remote set-url origin https://github.com/bracluque/QR2024_TP1.git" _n  // Update remote repository URL
file write git "git add --all" _n  // Stage all changes
file write git "git commit -m `commitMessage'" _n // Note: Open the .bat file and and quotations, this code is not properly coding "" 
file write git "git push" _n  // Push changes to the remote repository

* Close the batch file
file close git


* -----------------------------------------------
* Step : Execute Batch File for Version Control
* -----------------------------------------------
! mygit.bat  // Run the batch file to automate Git operations


