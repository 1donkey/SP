%--------------------------------------------------------------------------
%   theta_d = vector_angle(vec1,vec2)
%--------------------------------------------------------------------------
%   功能：
%   计算两个矢量的夹角
%--------------------------------------------------------------------------
%   输入：
%           vec1                矢量1
%           vec2                矢量2
%   输出：
%           theta_d             两个矢量的夹角
%--------------------------------------------------------------------------
%   例子:
%   vector_angle([1 0 0],[1 1 1]')
%--------------------------------------------------------------------------
function theta_d = vector_angle(vec1,vec2)
vec1 = vec1(:);vec2 = vec2(:);
theta_d = acosd(dot(vec1,vec2)./norm(vec1)./norm(vec2));
end