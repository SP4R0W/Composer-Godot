# Composer

A lightweight scene manager library for [Godot](https://godotengine.org/), written in C#, with a mere 20 KB footprint. It boasts robust efficiency and cross-language scripting capabilities, supporting both 2D and 3D environments.\
This library excels in loading scenes [asynchronously](https://en.wikipedia.org/wiki/Asynchrony_(computer_programming)), facilitating the implementation of dynamic loading screens, smooth transitions and other features.

## 🧾 Prerequisites

- [Godot](https://godotengine.org/) 4.2 (.NET version)
- [.NET](https://docs.godotengine.org/en/stable/tutorials/scripting/c_sharp/c_sharp_basics.html#prerequisites) SDK 

## 🛠️ Installation

- Download the `Composer` folder as .ZIP or from the releases tab
- Extract it into your project folder
- [Autoload](https://docs.godotengine.org/en/stable/tutorials/scripting/singletons_autoload.html) `Composer.cs` and if you plan to use it from `.gd` files, autoload `ComposerGD.cs` as well

## ⚙️ Usage
Disclaimer: If you're utilizing ComposerGD, replace `Composer.` to `ComposerGD.` in the provided C# code snippets unless a GDScript example is presented.
<details>
<summary><strong>Scene Creation</strong></summary>

**Method 1:**\
First, add a reference name and path to the *Manifest*.
```
Composer.AddScene("MyScene", "res://path/to/MyScene")
```

We then create it.
```
Composer.CreateScene("MyScene")
```
\
**Method 2:**\
We can add a scene and create it instantly using *SceneSettings*, without needing to call `CreateScene()`.

C#:
```
Composer.AddScene("MyScene", "res://path/to/MyScene", new(){
    InstantCreate = true,
})
```

GDScript:
```
ComposerGD.AddScene("MyScene", "res://path/to/MyScene", {
    "instant_create":true,
})
```

**Method 3:**\
We can add a scene with the export method.

</details>
