# NSDataAsset
## 概要  
  - Assetカタログに保存されているファイルデータにアクセスしてインスタンスを生成するクラス  
  - オンデマンドリソースとして使用する為にタグづけすることも可能　　

## Initialize
  - init(name: String)  
    name: セットするDataSet名。  
    ディレクトリ内にnameで指定されたDataSetファイルを探し出し、インスタンスにする。見つからなかった場合はnilになる。

  - init(name: String, bundle: Bundle)  
    name: セットするDataSet名  
    bundle: bundle名 ※[Bundle詳細](https://developer.apple.com/reference/foundation/bundle)  

## プロパティ  
### get  
  - data: Data型   
    Assetデータの実体が入ってる
  - name: String型  
    AssetカタログのDataSet名が入ってる  
  - typeIdentifier; String型  
    データの種類を決める識別子が入ってる

## 使用例
 - テキストデータのDataSetから文字列を取得する場合
 ```
 let text = String(data: asset.data, encoding: .utf8)
 ```
- サウンドデータのDataSetからサウンドデータを取得する場合
```
let asset = NSDataAsset(name: "sound")  
if let asset = asset {
	self.sound = try! AVAudioPlayer(data: asset.data, fileTypeHint: "wav")
}
```
