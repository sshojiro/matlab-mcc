function x=foo(a, b)
    % https://jp.mathworks.com/help/compiler/compiler-tips.html
    % https://jp.mathworks.com/help/compiler/compiler-tips.html
    %
    %https://oshiete.goo.ne.jp/qa/5378810.html
    %arg = sprintf('%d',1);
    %eval(['!hoge.exe ' arg])
    %
    %% https://jp.mathworks.com/matlabcentral/answers/272095-exe
    %>> mcc -mv foo
    %>> !start /wait foo 3 4 
    %>> !echo %ERRORLEVEL%
    %
    %## Compile result:
    %>> foo 1 2
    %
    % ans =
    % 
    %      3
    %
    %## Run through git bash
    %$ ./foo 1 2 > result # See the `result` file

    
	if (ischar(a)), a = str2double(a); end
	if (ischar(b)), b = str2double(b); end
    x = a + b;
    if isdeployed
        disp(x);
        exit(x)% NEVER PUT SEMI-COLON
    end
end