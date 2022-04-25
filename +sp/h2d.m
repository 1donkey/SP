%--------------------------------------------------------------------------
%   [dataout] = rt.h2d(datain,N_bit)
%--------------------------------------------------------------------------
%   功能:
%   转换有符号16进制数到2进制数(常用于FPGA数据测试)
%--------------------------------------------------------------------------
%   输入:
%           datain                  输入16进制数
%           N_bit                   转换位数
%   输出:
%           dataout                 输出10进制数
%--------------------------------------------------------------------------
%   例子:   
%   h2d(["0d","3f";"15","22"],5)
%   ans =
%       13    31
%      -11     2
%--------------------------------------------------------------------------
function [dataout] = h2d(datain,N_bit)
dataout = hex2dec(datain);
dataout(dataout>=2^(N_bit-1)) = dataout(dataout>=2^(N_bit-1))-2^N_bit;




    
    