# NSFileProviderExtension
## 概要  
- DocumentPickerViewControllerの拡張とコンテナを共有するためのクラス。  
  DocumentPickerViewControllerをカスタマイズする時に使用する。  
- File Providerを作成する時は、サブクラス化する必要があり、そのクラスでコンテンツの管理を行う

## Initialize
  - init(name: String)  
    name: セットするDataSet名。  
    ディレクトリ内にnameで指定されたDataSetファイルを探し出し、インスタンスにする。見つからなかった場合はnilになる。

  - init(name: String, bundle: Bundle)  
    name: セットするDataSet名  
    bundle: bundle名 ※[Bundle詳細](https://developer.apple.com/reference/foundation/bundle)  

## プロパティ  
編集中

## 使用例
編集中