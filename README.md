Why did I make another image that is about Meteor? Well the simple answer is I couldn't find one that was simple, plain, and worked with my testing needs.
The main branch of this docker image will be kept as up to date as I can. I plan on trying to find a way to have it when Meteor updates it builds for the new release.
The main branch will also be updated as I need to add specific packages to get things to work for me in my environment, please feel free to use the "base" or "phantomBase" versions if you just want Debian and the basic Meteor install or Debian, PhantomJS 2 and the basic Meteor install respectively.

What is in this image:
- Debian:jessie
- Meteor (1.3.4.1 as of this build)
- PhantomJS 2.1.1

Note, to install NPM packages it is recommended to use "meteor npm install". Please preface any Node or NPM commands with "meteor".
Luckily the Meteor tool is good at updating itself if it sees a different version in your .meteor folder, so nothing should break, but your tests might take a bit longer until I trigger a rebuild.
