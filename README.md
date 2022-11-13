# SmartParking

# Intent
The intent of this project is to provide an iOS solution for a block of flats, that have a underground parking.

Provided features:
1. Registration for a person that lives in that block. It would allow them to declare their spot and handle reservation for it in case they don't use it.
2. Ad-hoc usage for a foregin person (someone that doesn't live in that block). They would be allowed to see the free parking spots and require them for a specific time frame. When this happens, the owner of the spot can accept/reject the requirment. When it is accepted, the spot automaticaly becomes occupied for the amount of required by the foreign person.
3. Nice to have but requires hardware integration. If the paring lot requires a remote control to open the door, it would be nice to control the door with the phone. This functionality should become available for the person requiring it, when the deal described above is finalised with success. This should disappear from the application, when the time has expired. (Or maybe it would make sense to have a delay of 30 mins or so to avoid situations in which the foreign becomes stuck due to the door not opening).

# Tech Stack
In what concerns the tech stack, the main goal of the application is learning. The mobile application will be integrated with a simple backend solution (like Firebase) at least in the beginning. In the future it might evolve to a self hosted backend.

The application is going to be split in backend & frontend. The main focus on the app is the frontend through the iOS app. The app will contain (and will be a `playground` for):

1. `SwiftUI` & `SwiftUI` new navigation API. The goal here is to have close to 100% `SwiftUI` usage.
2. The new concurency model. The goal here is to avoid using any `DispatchQueues` or low level APIs. In case a functionality is not possible due to the limitation of `async/await` then the fallback will be `GCD`.
3. In what concerns the architecture, the UI design pattern will most likely be `MVVM`. But the overall architecture will respect the `Clean architecture` & `SOLID principles`. The main intent of this would be to make it as composable as possible, while hidding most of the implementation details. From API calls or database working to more obscure details like a `weak` references or the multithreading API used. All these details should be abstracted away from the business itself.
4. The project is intented to be written in a `TDD` fashion. While some parts might not be so easily to tested and written in this paradigm, the main purpose of this project is to test the limitations & strong points of `TDD`. This will also include `FIRST` & `FIRE` principles of testing as described by `Jon Reid`.
