% Create a new figure window
figure;

% Define the range of the 3D space
xlim([0 10]);
ylim([0 10]);
zlim([0 10]);

% Enable grid for better observation
grid on;
hold on;
xlabel('X-axis');
ylabel('Y-axis');
zlabel('Z-axis');
title('Keyboard, Camera Position, Finger Touch, and Right Angle in 3D Space');

% Draw a simple keyboard shape on the xy-plane
rectangle('Position',[2 2 6 3], 'FaceColor', [0.8 0.8 0.8], 'EdgeColor', 'b');
text(5, 3.5, 'Keyboard', 'HorizontalAlignment', 'center');

% Define and plot the camera position
cameraPos = [5 5 8]; % x, y, z coordinates
plot3(cameraPos(1), cameraPos(2), cameraPos(3), 'ro', 'MarkerSize', 10, 'MarkerFaceColor', 'r');
text(cameraPos(1), cameraPos(2), cameraPos(3)+0.5, 'Camera', 'HorizontalAlignment', 'center');

% Define and plot the finger touch point on the keyboard
fingerTouchPos = [4 3 0]; % x, y, z coordinates (z is 0 because it's on the keyboard)
plot3(fingerTouchPos(1), fingerTouchPos(2), fingerTouchPos(3), 'go', 'MarkerSize', 10, 'MarkerFaceColor', 'g');
text(fingerTouchPos(1), fingerTouchPos(2), fingerTouchPos(3)+0.5, 'Finger Touch', 'HorizontalAlignment', 'center');


% Mark reference point 1 (1, 1, 0) on the desktop
plot3(1, 1, 0, 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
text(1, 1, 0.5, 'Ref Point 1', 'HorizontalAlignment', 'center');

% Mark reference point 2 (9, 1, 0) on the desktop
plot3(9, 1, 0, 'ko', 'MarkerSize', 5, 'MarkerFaceColor', 'k');
text(9, 1, 0.5, 'Ref Point 2', 'HorizontalAlignment', 'center');

% Mark control point 1 (2, 2, 0) on the keyboard
plot3(2, 2, 0, 'mo', 'MarkerSize', 5, 'MarkerFaceColor', 'm');
text(2, 2, 2, 'Control Point 1', 'HorizontalAlignment', 'center');

% Mark control point 2 (8, 2, 0) on the keyboard
plot3(8, 2, 0, 'mo', 'MarkerSize', 5, 'MarkerFaceColor', 'm');
text(8, 2, 2, 'Control Point 2', 'HorizontalAlignment', 'center');

% Draw a line connecting the reference point1 and the camera position
line([1, cameraPos(1)], [1, cameraPos(2)], [0, cameraPos(3)], 'Color', 'k', 'LineStyle', '--');
text((1+cameraPos(1))/2, (1+cameraPos(2))/2, (0+cameraPos(3))/2, 'A1', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the control point1 and the camera position
line([2, cameraPos(1)], [2, cameraPos(2)], [0, cameraPos(3)], 'Color', 'k', 'LineStyle', '--');
text((2+cameraPos(1))/2, (2+cameraPos(2))/2, (0+cameraPos(3))/2, 'A2', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the reference point1 and control point1
line([1, 2], [1,2], [0, 0], 'Color', 'k', 'LineStyle', '--');
text((1+2)/2, (1+2)/2, (0+0)/2, 'A3', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the reference point2 and the camera position
line([9, cameraPos(1)], [1, cameraPos(2)], [0, cameraPos(3)], 'Color', 'k', 'LineStyle', '--');
text((9+cameraPos(1))/2, (1+cameraPos(2))/2, (0+cameraPos(3))/2, 'B1', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the control point2 and the camera position
line([8, cameraPos(1)], [2, cameraPos(2)], [0, cameraPos(3)], 'Color', 'k', 'LineStyle', '--');
text((8+cameraPos(1))/2, (2+cameraPos(2))/2, (0+cameraPos(3))/2, 'B2', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the reference point2 and control point2
line([9, 8], [1,2], [0, 0], 'Color', 'k', 'LineStyle', '--');
text((9+8)/2, (1+2)/2, (0+0)/2, 'B3', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the finger touch point and the camera position
line([fingerTouchPos(1), cameraPos(1)], [fingerTouchPos(2), cameraPos(2)], [fingerTouchPos(3), cameraPos(3)], 'Color', 'k', 'LineStyle', '--');
text((fingerTouchPos(1)+cameraPos(1))/2, (fingerTouchPos(2)+cameraPos(2))/2, (fingerTouchPos(3)+cameraPos(3))/2, 'c', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Mark reference point 3 (2, 2, 0) on the keyboard
plot3(2, 2, 0, 'mo', 'MarkerSize', 5, 'MarkerFaceColor', 'm');
text(2, 2, 0.5, 'Reference Point 3', 'HorizontalAlignment', 'center');

% Mark reference point 4 (8, 2, 0) on the keyboard
plot3(8, 2, 0, 'mo', 'MarkerSize', 5, 'MarkerFaceColor', 'm');
text(8, 2, 0.5, 'Reference Point 4', 'HorizontalAlignment', 'center');

% Draw a line connecting the reference point 3 and the camera position
line([2, cameraPos(1)], [2, cameraPos(2)], [0, cameraPos(3)], 'Color', 'k', 'LineStyle', '--');
text((2+cameraPos(1))/2, (2+cameraPos(2))/2, (0+cameraPos(3))/2, 'C1', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the reference point 4 and the camera position
line([8, cameraPos(1)], [2, cameraPos(2)], [0, cameraPos(3)], 'Color', 'k', 'LineStyle', '--');
text((8+cameraPos(1))/2, (2+cameraPos(2))/2, (0+cameraPos(3))/2, 'C2', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the reference point 3 and the fingerTouchPos
line([2, fingerTouchPos(1)], [2, fingerTouchPos(2)], [0, fingerTouchPos(3)], 'Color', 'k', 'LineStyle', '--');
text((2+ fingerTouchPos(1))/2, (2+ fingerTouchPos(2))/2, (0+ fingerTouchPos(3))/2, 'D1', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the reference point 4 and the fingerTouchPos
line([8, fingerTouchPos(1)], [2, fingerTouchPos(2)], [0, fingerTouchPos(3)], 'Color', 'k', 'LineStyle', '--');
text((8+ fingerTouchPos(1))/2, (2+ fingerTouchPos(2))/2, (0+ fingerTouchPos(3))/2, 'D2', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the FingerTouchPos perpendicular to edge
line([4, fingerTouchPos(1)], [2, fingerTouchPos(2)], [0, fingerTouchPos(3)], 'Color', 'k', 'LineStyle', '--');
text((4+ fingerTouchPos(1))/2, (2+ fingerTouchPos(2))/2, (0+ fingerTouchPos(3))/2, ' vertical segment', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line connecting the FingerTouchPos perpendicular to edge
line([4.2,4], [2.2,2.2], [0,0], 'Color', 'r', 'LineStyle', '-');
line([4.2,4.2], [2.2,2], [0,0], 'Color', 'r', 'LineStyle', '-');

% Draw a line on keyboard
text(5, 2, 0, 'D3', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Draw a line of x
line([4,8], [2,2], [0,0], 'Color', 'r', 'LineStyle', '-');
text(6, 2, 0, 'x', 'HorizontalAlignment', 'center', 'BackgroundColor', 'white');

% Adjust the view for better observation
view(3);
