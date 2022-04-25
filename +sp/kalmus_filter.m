%--------------------------------------------------------------------------
%   [H] = kalmus_filter(N,order)
%--------------------------------------------------------------------------
%   功能：
%   卡尔玛斯滤波器，常用于雷达静止目标剔除，在MTD平面上加入后进行静止目标剔除
%--------------------------------------------------------------------------
%   输入：
%           N           滤波器输出点数
%           order       滤波器阶数
%   输出：
%           H           卡尔玛斯滤波器
%--------------------------------------------------------------------------
%   例子：
%   rt.kalmus_filter(100,1.35)
%--------------------------------------------------------------------------
function H = kalmus_filter(N,order)
fc = linspace(-0.5,0.5,N);
H1 = sin( pi*order*(fc - 1/2/order) ) ./ (pi*(fc - 1/2/order));
H2 = sin( pi*order*(fc + 1/2/order) ) ./ (pi*(fc + 1/2/order));
H =abs(H1-H2)';
end
