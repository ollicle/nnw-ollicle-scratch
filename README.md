# Scratch – NetNewsWire theme

A NetNewsWire theme built from scratch.

A [theme](https://netnewswire.com/help/mac/6.1/en/themes.html) for [NetNewsWire](https://netnewswire.com/) that documents NetNewsWire theme template variables – displaying the values extracted for each viewed post.

Useful if you are [building a NetNewsWire theme](https://github.com/Ranchero-Software/NetNewsWire/blob/main/Technotes/Themes.md) from scratch.

## Install for use

1. Download: <a href="https://github.com/ollicle/nnw-ollicle-scratch/raw/main/dist/Scratch.nnwtheme_v1.zip">Scratch.nnwtheme_v1.zip</a>
2. Unzip it
3. Open **Scratch.nnwtheme** and follow the prompts.
4. Select “Scratch” in the NetNewsWire theme dropdown. 

## Build and deploy a new version

1. After making changes, increment the `src/Info.plist` Version.
2. `cd` to the root directory of this project.
3. Run `make`
4. Commit and push
5. Blog it!












## TODO

- A theme source folder
- A make file to build theme package from source folder

	How are versions named? Number as per plist version?

- A directory of built themes

	Play with theme id and version to check install behaviour
	
	- Replace or add?
	- Can we go back to old versions?
	- Can versions be somehow nested? (too complicated probably!)



<!-- Template Variables

title: The title of the article
preferred_link: The best link to associate with the article for linking out.

external_link_label: A localized label for the external link.
external_link_stripped: The external link minus the scheme. Useful for displaying the external link.
external_link: The external link of the article if there is one provided by the author.

feed_link_title: The name of the feed associated with this article.
feed_link: The URL of the feed associated with this article.
byline: HTML that combines all the authors and links to them if available.
avatar_src: The image source URL for the feed icon / avatar.
dateline_style: Either "articleDateline" or "articleDatelineTitle" depending on if the title was populated or not.

datetime_long: Long version of a combined publish date and time.
datetime_medium: Medium length version of a combined publish date and time.
datetime_short: Short version of a combined publish date and time.

date_long: Long version of the publish date.
date_medium: Medium version of the publish date.
date_short: Long version of the publish date.

time_long: Long version of the publish time.
time_medium: Medium version of the publish time.
time_short: Long version of the publish time.

text_size_class: The size class that the user has selected in Preferences for article text.
body: The body of the article.

-->

<!-- 

Placeholders to check:

- feed_link
- feed_link_title
- byline
- avatar_src
- preferred_link
- title
- datetime_medium
- external_link_label
- external_link
- external_link_stripped
- text_size_class
- body


Classes used:

- .articleBody

	used as a rootselector in ios js

	must be assigned to a div so that: `div.articleBody` works as a selector
	- main js will find contained tables and pre elements for wrapping/unwrapping

Classes unused (theme specific structural):

- headerContainer
- headerTable
- header
- leftAlign
- rightAlign
- avatar
- feedlink
- externalLink

ID Used:

- #nnwImageIcon

	Used as a hook to assign a click handler in iOS to show feed inspector.
	- Accessibility issue – click handler on non-operable img
	- Accessibility issue - no alt on image
	Presumed to be an img as same hook is used to reload article image

ID Unused:

- #bodyContainer

-->
