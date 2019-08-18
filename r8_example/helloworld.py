import r8


class HelloWorld(r8.Challenge):
    title = "Hello World"
    flag = "__flag__{test}"

    async def description(self, user: str, solved: bool):
        return r8.util.media(
            self.api_url("helloworld.svg"),
            "The flag is <code>__flag__{test}</code>."
        )
