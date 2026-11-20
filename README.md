# shortcuts

This repository keeps my iPhone shortcuts as source code.

## How it works

- The source is text files in the [Cherri](https://cherrilang.org/) language (`src/*.cherri`).
- The Cherri compiler turns a source file into a `.shortcut` file. After signing, the file runs on an iPhone.
- You can sign the files from Linux, with the HubSign service of RoutineHub. You do not need a Mac.

The source files are the master copy. If you want to change a shortcut, you edit the source. You do not edit the shortcut on the iPhone screen.

## How to build

You need the Cherri compiler (Linux / macOS).

```sh
make build
```

This builds and signs each `.cherri` file in `src/`, and writes a `.shortcut` file in the same folder.
Send the `.shortcut` file to your iPhone and open it. The shortcut is then added to your iPhone.

## How I use this repository

- Changes go into main through pull requests.
- After a merge, I build again and add the new files to my iPhone again.
- I do not write secret information (tokens, device IDs, and so on) in the source files.

## What each shortcut does

Most shortcuts here are simple menus. You tap the shortcut, choose a name from the list, and that app or web page opens.

| File | Shortcut name | What it does |
|---|---|---|
| `src/pay.cherri` | Pay | A menu of payment apps: Rakuten Pay, PayPay, au Pay, d-Barai, MerPay, majica, and more. It also has apps for money records, like MoneyForward. |
| `src/html-source-copy.cherri` | HTML Source Copy | This one is not a menu. You run it from the share button on a web page in Safari. It copies the HTML code of that page, so you can paste it somewhere else. |
| `src/self-dev.cherri` | Self-Dev | A menu of tools for making and checking my own web sites and apps: GitHub, Termius, ChatGPT, Safari, Google Drive, and my test web page. |
| `src/development.cherri` | Development | The same menu as Self-Dev: GitHub, Termius, ChatGPT, Safari, Google Drive, and my test web page. It is a second copy with a different name and icon. |
| `src/mobility.cherri` | Mobility | A menu for going out: Google Maps, HelloCycling (bike share), Times Car (car share), PASMO, GO (taxi), and LUUP (e-scooter share). |
| `src/sns.cherri` | SNS | A menu of social media apps: X, Instagram, Facebook, Threads, YouTube, LinkedIn, TikTok, and Discord. It also opens my Reader web page. |
| `src/photo-and-video.cherri` | Photo&Video | A menu for photos and recordings: Apple Photos, Preview, Google Photos, Voice Memos, and the Picnic camera app. |
| `src/food-and-health.cherri` | Food&health | A menu for food and health: Coke ON, wellcne, Digisma, Rakuten Healthcare, the Aeon online supermarket page, and Yoyakusuri (an app for booking medicine). |
| `src/home-control.cherri` | Home control | A menu for things at home. It opens my home control pages (ha.ze.gs and tv.ze.gs) and apps like Google Home, SwitchBot, and IKEA Home smart. It also has a speed test page. |
