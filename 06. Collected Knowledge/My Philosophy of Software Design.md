- Store data in binary files and databases
- Philosophize modularity
- The most efficient design is the most intuitive design
- Provide safety to the user in matters of privacy

# About features

## Scope, Updates and User Support
### Scope
- Each program should have a definite scope and should be complete.
- The scope should be based on the philosophy of the user designing it.
- Making a general purpose program would mean adapting to the needs of users.
- Even then, a definite scope should be defined to prevent scope creep.
### Updates
- Any updates should be added as extensions later if possible.
- But each release is not a grown version of a previous product, but a new product in itself.

- That is, `<My Program>` 2.0 will be `<My Program> 2.0` hosted in its own repository. The version is important, as people will not have to wonder if compatibility is available for a specific release with a set of programs.
- If compatibility ever breaks for a certain release, instead of patching the software to increase compatibility, we start an entirely new project from its old codebase.
- The advantage of this approach is that people need not worry about the original developer updating the code to fit new systems. They themselves can create their own forks. Of course contributions are encouraged, but the key idea is that a release is a new project of its own, with a definite scope.
- Another advantage of this approach is that it makes projects have the stability of centralized platforms (like Apple) while still having a decentralized development model.
	- About app updates within the App Stores for iPhone, iPad or macOS (such as Clash of Clans), well, the apps that update less frequently are more reliable. And when it comes to online games, it is best that games have a fixed release schedule that's known to the user. If games were not developed as cash grabs, perhaps the developers wouldn't update them that often, and would only provide meaningful updates.

Example:
> This is a Flutter 3.2 app with a definite design for Android 6.10 and above, unless there are any breaking changes.
> Last checked for breaking changes: 07/05/2016
### User Support
- User Support is a problem to address.
- We typically use a ticket management system (Kanban or Linear), or a mailing list.
- Mailing list public archives are generally hard to browse, and it doesn't have the ability to tag tickets.