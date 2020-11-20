# Git tags

* `git tag tag_name` - Creates a tag with name `tag_name` pointing to the HEAD commit in the current branch.
* `git tag tag_name commit_id` - Creates a tag pointing to the given commit id.
* `git tag --list` - Lists all the tags.
* `git show tag_name` - Shows the commit at the tag.
* `git tag --delete tag_name` - Deletes the `tag_name`.

There are options like `--contains <commit_id>, --merged <commit_id>` using which we can filter the tags. Use `git tag --help` to learn more about those options.

## Annotated Tags

Annotated tags contains a message.

* `git tag -a tag_name` - This launches the default editor. We can type a tag message (similar to a commit message). If `tag_name` is a version number like `1.0.0`, then the tag message can contain its **release notes**.
* `git tag tag_name -m <tag_message>` - This is a quick way to create an annotated tags without opening editor.
* `git show tag_name` - With annotated tags, `show` command displays the tag message.

## Comparing tags

When we have multiple tags(each tag pointing a release), `git diff/difftool tag_name1 tag_name2` compares the differences between the two tags.

## Tagging a specific commit

* `git tag -a tag_name commit_id` - Creates an annotated tag that points to a specific commit.

## Updating an existing tag

* `git tag -a tag_name -f commit_id` - Forces the tag to update the commit to which its pointing to.

* `git push origin master --tag` - pushes the master branch to the remote repo `origin` along with all the tags associated with that branch.

* `git push origin :tag_name` - Deletes the tag_name from the remote repository pointed by `origin`.
