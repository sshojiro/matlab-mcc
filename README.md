# Matlab MCC Command Study

This repository simply demonstrated how Matlab Compiler toolbox works.

## Description

I hope to compile partial code written in Matlab to deploy the code to the third party except the core of the code.

My demand is to realize this:

```matlab
>> output = eval('!foo 1 2');
>> func(output, 'woohoo') ... % sth like this
```

However, the first row above was not possible. In conclusion, only running `$ ./foo 1 2` command through console such as bash is available. This repository shows the example.

