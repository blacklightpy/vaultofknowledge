I guess Apple started this.
I mean, reinventing is great, and is my thing, but I don't appreciate the hype that much.
# What is an app really?
App, is short for Application.

An application is a type of computer program that faces the user, and performs a task. For example: A word processor, an e-mail client, 

This is different from utility software, which performs tasks which the user would like to get done, but don't interact with much. For example, Virus Scanners, Backup Utilities, Video Conversion Utilities.

Windows used to refer to all user-space software as programs, and any system provided applications would be classified as accessories (such as Wordpad, Paint, etc.)
## The big picture and the problem

The big picture is that all software that faces a user are programs of some sort, but right now we have classified everything into applications for ease of marketing. With this ideology, we have converted software that can be run locally into network services (termed as the cloud), and network services further into apps which can be obtained from centralized app stores.

For example, the popularity of apps has led to users not accessing network services via the de-facto network service explorer, the web browser. Instead of addressing any drawbacks with the web browser platform, people have chosen to build bloated apps for every use case. This is primarily due to the philosophy, or meme, whereby an app is closer to an individual by being on their device, but a website has to be manually dialed in or bookmarked for ease of use. Also, the web browser UI gets in the way.

But in doing so, we have firstly changed the internet from a freely distributed network to a centralized platform. This is avoidable if we use 3rd party app stores, however, the problem of apps still remains.
### Problem 1: Sandboxing (Forced / Free)
The mobile app is a packaged piece of software that is sandboxed in its own environment, and does not interact with other apps or with system software. That is, unless we hack into the blockade and enable system access to the applications. Even then, the app ecosystem makes it so that apps themselves are standalone packages which do not interface with other applications aside from via notifications, etc.

This is also becoming a trend in the general computing space, with the trend towards immutable file systems. The system software remains immutable, while the userspace programs stay in their sandboxed environments.

One of the problems with this is the inability to use shared libraries. It is a pretty big deal in of itself, because that allows applications to just stop repeatedly using the same UI libraries and so on and save space.
### Problem 2: Temporary Apps
More importantly, I'd say - not everything needs an app. You don't need an app per se to book a ticket or to read a piece of documentation. A properly designed website would do much better than downloading a package that bundles all the assets related to the website, even if you are not making use of all of it. These apps then flood your mobile device and you'll have to clean them when you run out of space.

You don't really need to download an app just so you can convert an image and delete it. For temporary use cases, you can use network services. Such a network service could simply perform the operations on the client side as well, to avoid operational costs. Of course, you could keep the app if you intend to use it from time to time, but apps being used for temporary purposes could've been built in a better fashion, I'd say.
### Social Networking Apps
Same is the case for Microblogging platforms. Sure, if you do need to catch up with notifications. But you don't really need them if you could just login to the site using your web browser from time to time. This will also help you reduce cognitive overload from all the timely notifications delivered straight to your device.

Apps also make sense when they perform some system intensive work, not so suited for a web browser, such as Instagram with it's filters and story editors. Some such experiences need apps, but not all of them do.

> [!tip] Thought
> Far more than apps, we need standards for doing anything. For example, a drawing standard. With the presence of so many apps, all doing similar things, we are getting stuck trying to make the right choices. Going with the flow may not seem as easy as its sounds. Apps present experiences, and we all love having good experiences.
> 
> But sometimes, or if you consider that the general world is capitalist, most of the time, the main intention of an app is not to help the user, but to make money by doing so. Sometimes this takes the approach of dark UI patterns, such as using algorithms to make the user spend more time, which by itself makes the user less productive, but also failing to notice that at the same.
>
> This is often achieved by giving the user a false sense of productivity, for example, by pushing in tons of video resources, all of which the person won't be able to watch. There is often a better way of doing things.
# My Ideas of Software
## Purpose-Built Software
- Infrastructure Software: General Purpose Infrastructure Software (Replaces [[Enterprise Management Software|EMS]], [[Learning Management Systems|LMS]], etc.)
- Organization Software: Software tailored to a specific Organization (is expected to have interfaces with other infrastructure software)

- Presentation Software: To present ideas to others (e.g. Educational Software, Slideshows, etc.)
- Computing Software: (e.g. Mathematical Analysis, Math Libraries, Physics Engines)
- Creative Software: Software used to bring ideas to life (e.g. Painting, 3D Modelling, CAD, CFD)
- Productivity Software: Software used for personal matters (e.g. Spreadsheets, Sticky Notes)
- Libraries: Software that allows other software to easily perform routines (e.g. Vulkan, Qt, GTK)
### Philosophy of Classification
- There are categories such as infrastructure management, creative and personal productivity.
- While most tasks are similar and hence can use the same software, some organizations may choose to be different for themselves. Even if they like to share their ideas, it may not suit others, for example. Think of womens' sleepovers. Men aren't usually interested in those areas. Well, I'm not implying that things can't change over time, but rather that at a given time, interests can be different for different people.
## General
- Applications (e.g. Office Software, Productivity Suites, 3D Modeling Software, CAE Software)
- Accessories (e.g. Web Browser, E-Mail, Audio Manager, Podman)
	- System Accessories (e.g. File Manager, Shell)
- Utilities (e.g. Video Converters, Virus Scanners, Compiler)
	- System Utilities (e.g. Service Software Manager, Disk Checker)
- Local Service (e.g. Steam Update Service, ADB Server, Download Manager)
	- Local System Service (e.g. Service Software Monitor, ACPI, Defragmenter)
- Network Host Service: Software that provides network services (Self-hosting / Web Applications)
	- System Network Host Service (e.g. Remote Shell)
- Software Library Runtimes (e.g. DirectX, Wine, Mesa, GTK Library)
	- System Software Library API Runtimes (e.g. Win32 DLLs, GNU C Library)
- Media and Games (Games are a combination of Media and Application)

### Philosophy of Classification
Software can be further divided into Local and Network software.
Local Software can be divided into User and System Software.
Network Software can be divided into Host and Client Software.
Network Host Software are provided as Services, and Client Software are Utilities or Applications.

> [!tip] Idea
> There's only just software. All software either runs directly on the CPU, or it is dependent (or restricted) on other software such as the booted **Kernel**, **Kernel+System API Runtime** (aka the OS), **Kernel+System API Runtime+Application Specific Runtime**, or just an **Application Specific Runtime** (in which case, the runtime already depends on the OS, without the developer having to worry about it)