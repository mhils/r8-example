import r8
from r8.builtin_challenges.basic import Attendance


class HelloWorld(Attendance):
    title = "Hello World"
    flag = "__flag__{test}"

    async def description(self, user: str, solved: bool):
        return r8.util.media(
            self.api_url("helloworld.svg"),
            "The flag is <code>__flag__{test}</code>."
        )
