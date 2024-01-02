It's an Israeli tracking software that tracks people by leveraging loopholes in proprietary modem firmware.

Exploits like this are possible due to the regulatory authorities fooling people and keeping them under blinds.

- Closed source baseband firmware
- Tivoized open baseband firmware with unpatchable loopholes
- Non-isolated basebands
- Non-removable smartphone batteries
# More References
- NSO Group Page: https://www.nsogroup.com/
- The Guardian News Report linked by FSF: https://www.theguardian.com/news/2021/jul/18/what-is-pegasus-spyware-and-how-does-it-hack-phones
- Analysis linked by FSF: https://info.lookout.com/rs/051-ESQ-475/images/lookout-pegasus-technical-analysis.pdf

> [!NOTE]
> This is what media shows you, but reality is much simpler than this. They are just making you look at the wrong angles. The truth is, regulatory bodies demand that you should have closed source firmware for cellular radio modems. In the best cases, like for example, an amateur radio project, the radio is supposed to be "Tivoized", meaning while one can see the firmware used, they won't be able to modify or patch it, even to fix any visible vulnerabilities. 
>
> By having such vulnerabilities, with simple technologies, one can easily hack the devices of users. Secondly, such radios are often not isolated from the CPU, in which case, even if one flashes an entirely open source operating system, with even ignoring the radio part, the radio will function it's own because it has direct access to the CPU, and we cannot turn it off. This makes it the textbook definition of a tracking device.
>
> ![[A misleading Pegasus infographic from Guardian.png]]