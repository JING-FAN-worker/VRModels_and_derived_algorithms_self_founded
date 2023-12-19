import math
# Distance_D1 = (Speed of Light_D1 × Time of Flight_D1) / 2
# Distance_D2 = (Speed of Light_D2 × Time of Flight_D2) / 2
# Distance_D3 = (Speed of Light_D3 × Time of Flight_D3) / 2
# Distance_a = (Speed of Light_a × Time of Flight_a) / 2
# Distance_c = (Speed of Light_c × Time of Flight_c) / 2
def check_key_press(distance_d1, distance_d2, distance_d3, distance_c, distance_a, key_bounds):
    # Calculate the X and Y coordinates of the fingertip
    x = (distance_d2 ** 2) / (2 * distance_d3) - (distance_d1 ** 2) / (2 * distance_d3) + distance_d3 / 2
    y = math.sqrt((distance_d2 ** 2) - x ** 2)
    
    # Check the Z 
    if math.cos(angle(a, camera, c)) * distance_c != distance_a:
        return False

    # Check if the fingertip is within the key bounds
    for key in key_bounds:
        if key['xMin'] <= x <= key['xMax'] and key['yMin'] <= y <= key['yMax']:
            return True

    return False

