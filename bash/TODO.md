Use 

```bash
brew install gettext
brew link --force gettext
```

> template.cfg

```dotenv
# We put env variables into placeholders here
this_variable_1 = ${SOME_VARIABLE_1}
this_variable_2 = ${SOME_VARIABLE_2}
```

> .env
```dotenv
SOME_VARIABLE_1=value_1
SOME_VARIABLE_2=value_2
```

> configure.sh

```bash
#!/usr/bin/env bash
cat template.cfg | envsubst > whatever.cfg
Now just use it:
```

```bash
# make script executable
chmod +x ./configure.sh
# source your variables
. .env
# export your variables
# In practice you may not have to manually export variables 
# if your solution depends on tools that utilize .env file 
# automatically like pipenv etc. 
export SOME_VARIABLE_1 SOME_VARIABLE_2
# Create your config file
./configure.sh
```
