import sys
if sys.prefix == '/usr':
    sys.real_prefix = sys.prefix
    sys.prefix = sys.exec_prefix = '/home/rebirther/ros2_ws_ctrl/install/excavator_ctrl'
