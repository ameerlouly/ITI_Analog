# ITI_Analog_2025
A Repo to facilitate sharing content between devices during my internship at ITI for Analog Electronics


Add this to the ```.bashrc``` file for quick git commits and operation

```bash
################################
# Ameer Git Aliases
################################
AmeerGit() {
	message="${*:-Default Message}"
	git add *; git commit -m "$message"; git pull; git push
}
```
