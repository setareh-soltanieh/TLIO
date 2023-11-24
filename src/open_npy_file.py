import numpy as np

file_location = './local_data/tlio_golden/110982076486017/imu0_resampled.npy'
def print_each_row(data):
    print(f"ts_us(1): {data[0]}")
    print(f"gyr_compensated_rotated_in_World(3): {data[1:4]}")
    print(f"acc_compensated_rotated_in_World(3): {data[4:7]}")
    print(f"qxyzw_World_Device(4): {data[7:11]}")
    print(f"pos_World_Device(3): {data[11:14]}")
    print(f"vel_World(3): {data[14:17]}")
data = np.load(file_location)
print(data[0])
print_each_row(data[0])

