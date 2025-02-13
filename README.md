# Toolz

> **Note**: This is a maintained fork of the [original Toolz project](https://github.com/d3ward/toolz) (which has been archived). We continue to maintain and improve the project while preserving its original purpose and license.

<p align="center">
 <img src="src/assets/toolz/icon.svg" alt="Toolz" title="b2ntp" width="160" height="160" />
</p>
A set of testing and verification tools, with simple and beautiful design

## Quick Start with Docker

You can run all the tools locally using Docker. Here's how:

```bash
# Clone the repository
git clone https://github.com/popfido/toolz.git
cd toolz

# Build the Docker image
docker build -t toolz .

# Run the container
docker run -d -p 3000:80 toolz

# Access the tools at:
# http://localhost:3000/toolz/
```

## Available Tools

### Ad Block Test

This tool allows you to check if your adblock solution is blocking enough hosts. With a simple UI and easy UX you can check how much you have blocked. The tool tries to connect to the most common domains for different categories (ads, analytics, bug tracking, social trackers, mix and OEMs).

If you don't block all the hosts but you want to, you can use:

- My hosts txt list -> [d3Host.txt](https://raw.githubusercontent.com/popfido/toolz/master/src/d3host.txt)
- Compressed adblock version -> [d3Host.adblock](https://raw.githubusercontent.com/popfido/toolz/master/src/d3host.adblock)

d3Host list is also included in:

- [Blokada](https://blokada.org/)
- [OISD List](https://oisd.nl/)

### Units Test of Viewport

This tool is useful for testing different units for expressing a length in CSS.
One of them is the 'vh', where 100vh should be 100%, but on mobile browsers it isn't. Over the years, there has been a lot of talk about this problem on mobile browsers, mainly on Safari which uses WebKit, but Chromium browsers are affected as well. In addition to the test, there are in-depth studies and solutions available.

### Fontlist

This tool allows you to check the list of web safe fonts supported by your browser. These are the fonts that are installed by default on virtually every computer or mobile device. This is what makes them "safe". No matter where you are in the world or what device you are using, a web safe font will always load and display correctly.

## Development

If you want to run the project in development mode:

```bash
# Install dependencies
npm install

# Start development server
npm run dev
```

## Contributing

If you have any problems with any of the tools, feel free to share them by opening an issue.
You can also suggest a new test tool to be created or added. Contributions are welcome and encouraged.

## Credits

This forked project was originally created by [Eduard Ursu (d3ward)](https://github.com/d3ward) and is now maintained by [Fido Wang](https://github.com/popfido).

## License

Toolz is licensed under [(CC BY-NC-SA 4.0)](https://creativecommons.org/licenses/by-nc-sa/4.0/)
