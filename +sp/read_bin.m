%--------------------------------------------------------------------------
%   [dataout] = read_bin(file_name,file_type,mode_bl)
%--------------------------------------------------------------------------
%   功能:
%   读取bin文件数据
%--------------------------------------------------------------------------
%   输入:
%           file_name                  文件名
%           file_type                  类型,如int8,single(float),double
%           mode_bl                    大小端     'n'系统默认
%                                                 'b' 大端(常用)
%                                                 'l' 小端(常用)
%                                                 's' 大端64bit
%                                                 'a' 小端64bit
%   output:
%           output                     输出读取数据结果
%--------------------------------------------------------------------------
%   例子:   
%   rt.read_bin('1.bin','int8','b')
% ans =
%      1
%      2
%      3
%      4
%      5
%--------------------------------------------------------------------------
function [output] = read_bin(file_name,file_type,mode_bl)
if nargin == 2
    mode_bl = 'n';
end
f = fopen(file_name,'r');
output = fread(f,file_type,mode_bl);
fclose(f);