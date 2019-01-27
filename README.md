# test/unit gem - An order of tests executed with Test::AutoRunner has no consistency.


## Environment

* OS : Windows 10
* ruby : ruby 2.5.3p105 (2018-10-18 revision 65156) [x64-mingw32]
* test-unit (3.2.9)


## How to run sample tests

Open a command prompt and set the current directory to the folder path of this file.


```
> bundle
> rake
```

## Suggestion

---


いや、
TargetTest < CustomTest < Test::Unit::TestCase

という継承関係で作るのはおそらく慣例としてよくないのではないか？

（TestRunnerで、CustomTestもcollectorで集めてきて、テスト対象として扱ってしまうため、表示がおかしくなる）

共通処理などをはさみたい場合は、moduleにして、includeさせる方式がおそらく好ましい


---

カテゴリ化したいケースは、フォルダ分けすることで、うまく表示してくれる

