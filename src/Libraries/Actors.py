"""
Lightweight Faker Like Solution.

I know that is Faker awesome. I just wanted to show,
that I could write my own Library, if necessary.
"""
import random
import string
import time
from typing import Dict


class Actors:
    def a_visitor_user(self) -> Dict[str, str]:
        user_data = {}
        user_data['email'] = self._email()
        user_data['first_name'] = self._first_name()
        user_data['last_name'] = self._last_name()
        user_data['password'] = self._password()
        user_data['address'] = 'Baker Street 13.'
        user_data['city'] = self._city()
        user_data['state'] = self._state()
        user_data['post_code'] = str(random.randint(11111, 60000))
        user_data['mobile'] = '00366666666'

        return user_data

    def _first_name(self) -> str:
        return random.choice(['Frank', 'John', 'Kaite', 'Samantha', 'Mark'])

    def _last_name(self) -> str:
        return random.choice(['Potter', 'Smith', 'McDonalds', 'Fun'])

    def _password(self, pw_length: int = 6) -> str:
        lower = string.ascii_lowercase
        upper = string.ascii_uppercase
        num = string.digits

        all = lower + upper + num

        return "".join(random.sample(all, pw_length))

    def _city(self) -> str:
        return random.choice(['New York', 'Washington', 'Boston', 'Dallas'])

    def _state(self) -> str:
        return random.choice([
            'Alabama',
            'Alaska',
            'Arizona',
            'Arkansas',
            'California',
            'Colorado',
            'Connecticut',
            'Delaware',
            'District of Columbia'
            'Florida',
            'Georgia',
            'Hawaii',
            'Idaho',
            'Illinois',
            'Indiana',
            'Iowa',
            'Kansas',
            'Kentucky',
            'Louisiana',
            'Maine',
            'Maryland',
            'Massachusetts',
            'Michigan',
            'Minnesota',
            'Mississippi',
            'Missouri',
            'Montana',
            'Nebraska',
            'Nevada',
            'New Hampshire',
        ])

    def _email(self) -> str:
        return f'{int(time.time())}.mf@testing.hu'
