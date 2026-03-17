# lecture_1

A simple personal profile card app.

## Steps

0. Investigate the project structure and files.
1. Create `assets` folder in the root directory, create `images` and `fonts` folder.
2. Add your profile image in `assets/images` folder.
3. Add custom font files in `assets/fonts` folder. (https://fonts.google.com/specimen/Poppins)
4. Update `pubspec.yaml` to include assets and fonts.

```yaml
 assets:
    - assets/images/avatar.png

  fonts:
    - family: Name
      fonts:
        - asset: assets/fonts/Name-Regular.ttf
        - asset: assets/fonts/Name-SemiBold.ttf
          weight: 600
```
5. Create main page.
6. Optionally set a custom icon (https://pub.dev/packages/flutter_launcher_icons)

<img width="1024" height="1024" alt="icon" src="https://github.com/user-attachments/assets/5a59e570-52b8-40f9-a56b-2a4d21681e5d" />

<img width="1206" height="2622" alt="Simulator Screenshot - iPhone 16 Pro - 2025-11-07 at 14 49 29" src="https://github.com/user-attachments/assets/e2ba01f9-25c1-47cb-aa1b-e43bf58eac9a" />

