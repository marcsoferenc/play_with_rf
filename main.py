#!/usr/bin/env python3

import argparse
import time

import robot



def main():
    timestamp = time.strftime('%Y%m%d%m_%H%M%S')

    parser = argparse.ArgumentParser(description='Run Selenium Based Test Cases')
    parser.add_argument('--browser', default='chrome',
                        help='Browser to run')

    args = parser.parse_args()
    browser = args.browser
    if browser not in ('chrome', 'firefox'):
        print('Invalid browser argument!')
        print('chrome option will be applied')

    robot.run_cli(['-d', f'Results/{timestamp}', '-v', f'browser:{browser}', 'src/Tests'])


if __name__ == '__main__':
    main()
