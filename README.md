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

--collector=load モードで、

TargetTest < CustomTest < Test::Unit::TestCase

という継承関係で作るのはおそらく慣例としてよくないのではないか？

（TestRunnerで、CustomTestもcollectorで集めてきて、テスト対象として扱ってしまうため、verboseで表示がおかしくなる）

共通処理などをはさみたい場合は、moduleにして、includeさせる方式がおそらく好ましい



→カテゴリ化したいケースは、フォルダ分けすることで、うまく表示してくれる

---

--collector=descendant モードでは、

継承関係にあるテストケースを対象にしてくれるモードのようなんだが、

どうやら、AutoRunner#runの前か、ブロックに指定して、
Test::Unit::TestCase::DESCENDANTS
を事前に準備しておく必要があるようだ
__使い方が分かりにくい__


下記条件では、自動で対象を探してくれるほうがいいんではないかとは思うが

  * --collector=descendant　オプション指定されている かつ
  * AutoRunnner#runの第二引数で対象のdir が指定されている かつ
  * Test::Unit::TestCase::DESCENDANTS　がempty(明示されていない)






