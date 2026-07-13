# Patching 

- Apply the patch with 
```bash
patch --merge -i /path/to/patch.diff. 
```
- This will use the merge conflict notation if there are problems applying the patch to your current build

- Rebuild st with 

```bash
rm -rf config.h && sudo make clean install. 
```

- This will generate an up-to-date config file and compile the latest changes into your new build 
