%--------------------------------------------------------------------------
%   yaw = rotate_xd(thetad)
%--------------------------------------------------------------------------
%   功能：
%   绕X方向的旋转矩阵
%--------------------------------------------------------------------------
%   输入：
%           theta               角度
%   输出：
%           yaw                 旋转矩阵
%--------------------------------------------------------------------------
%	例子：
%	rotate_xd(30)*[x;y;z]
%--------------------------------------------------------------------------
function yaw = rotate_xd(thetad)
yaw = [1 0 0;0 cosd(thetad) -sind(thetad);0 sind(thetad) cosd(thetad)];
end