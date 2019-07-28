# Reset your Xcode simulators to a opinionated mix of iOS devices and versions

This small shell script was inspired by the [fastlane](https://fastlane.tools/) CLI and sub-command
`fastlane snapshot reset_simulators`<sup>[1](https://docs.fastlane.tools/actions/snapshot/#completely-reset-all-simulators)</sup>. It removes all your Xcode simulators and re-create a list of new instances.

But instead of creating a really long list of iPhone, iPad and Apple Watch simulators, it creates a small and hopefully useful (opinionated) mix of iPhone/iPad/iOS sizes and versions. The final result looks simular to this list:

<img src="https://github.com/jerolimov/reset_simulators/blob/master/screenshot.png" width="228" height="346" />

To run this script directly from GitHub, just run:

```
\curl -fsSL "https://raw.githubusercontent.com/jerolimov/reset_simulators/master/reset_simulators.sh" | \bash
```

⚠️ Please notice: This command will remove all you local Xcode simulators and create a clean & fresh list.

<br/><br/>

## MIT License

Copyright (c) 2018-2019 Christoph Jerolimov

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
