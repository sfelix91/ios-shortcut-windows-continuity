# Windows Continuity (iOS Shortcut)

Personal automation project designed to recreate an Apple-like continuity experience between a Windows PC and an iPhone.

## Problem
When working across Windows and iPhone, simple actions such as transferring text, links or short notes between devices usually involve unnecessary friction: messaging apps, emails, cloud notes or manual copy-paste workarounds.

Coming from the Apple ecosystem, I missed the native Continuity experience available between macOS and iOS, where information flows naturally and almost invisibly between devices.

The challenge was to recreate this *experience* in a Windows-based workflow, using lightweight tools and without relying on paid or complex third-party solutions.

## Solution
This project combines iOS Shortcuts, iCloud Drive and a small Windows-side automation to create a fast and intentional continuity-like flow between Windows and iPhone.

The solution focuses on reducing cognitive load and interaction cost, allowing text copied on Windows to become immediately available on the iPhone clipboard.

## How it works

The solution is intentionally split into two simple and independent parts: Windows and iPhone.

### Windows side
On Windows, the workflow is driven entirely by keyboard shortcuts:

- `Ctrl + C`  
  Copies text normally, preserving default system behavior.

- `Ctrl + Shift + C`  
  Indicates that the copied content should be sent to the iPhone.

This shortcut triggers an AutoHotkey script that writes the copied text into a shared file located at: iCloud Drive / iClipboard / from_windows.txt

By using iCloud Drive as a shared layer, the solution avoids servers, background services or paid sync tools.

---

### iPhone side
On the iPhone, the flow is handled entirely by an iOS Shortcut.

The Shortcut is triggered using **Back Tap** (double tap on the back of the device), configured via Accessibility settings.

The Shortcut flow is:
1. Read the file `from_windows.txt` from iCloud Drive
2. Extract the text content
3. Copy the text directly to the iOS clipboard
4. Display the content using Quick Look as visual confirmation

This provides immediate feedback that the content is now available and ready to be pasted anywhere on the iPhone.

---

### Design intent
The goal is not to replicate Apple Continuity technically, but to recreate the *experience*:
- Fast and intentional interaction
- Minimal friction
- No context switching
- Easy customization
- No dependency on paid tools

The result is a lightweight, reliable and highly adaptable workflow that fits naturally into daily use.

## Tools and Technologies
- iOS Shortcuts
- iCloud Drive
- Apple Accessibility (Back Tap)
- Windows
- AutoHotkey

## What I learned
- Designing cross-platform workflows
- Thinking in terms of experience rather than tools
- Reducing friction in everyday operational tasks
- Leveraging native system capabilities to solve real problems

## Possible improvements
- Support for multiple content types (links, formatted text)
- Bidirectional flow (iPhone → Windows)
