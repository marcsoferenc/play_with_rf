#!/usr/bin/env python3

import time

import robot



def main():
    timestamp = time.strftime('%Y%m%d%m_%H%M%S')
    
    robot.run_cli(['-d', f'Results/{timestamp}', 'src/Tests'])


if __name__ == '__main__':
    main()
