init:
	rm -rf .git
	rm README.md
	echo "# submodules3 master" > README.md
	git init # reinitialise git and nuke everything
	git add .
	git commit -m "Initial commit"
	git remote add origin https://github.com/dave/submodules3.git
	git push --set-upstream --force origin master
	git checkout -b new
	rm README.md
	echo "# submodules3 new" > README.md
	git add .
	git commit --amend -m "Added new branch"
	git push --set-upstream --force origin new
