MC Heli MOD 1.0.4 / MC1.7.10 [SSP/SMP]

このMODについて
	ヘリコプターや戦闘機、UAV、対空兵器を追加します。
	また、航空機に関連するアイテムも追加します。
		AH-64 アパッチ、AH-6 キラ−エッグ、EC665 ティーガー、SH-60 シーホーク など
	　戦闘機&輸送機
		AV-8B ハリアー II(英/米)、MV-22 オスプレイ、強風、A-10、EMB4314、セスナ172 など
	　対空兵器
		Mk.15 ファランクス、Mk.15 mod.31 SeaRAM、オート・メラーラ76mm砲 など
	　その他
		GLTD:レーザー目標指示装置 (A-10を呼び出す)
		鎖: トロッコなどのエンティティを繋ぐ
		コンテナ:ヘリコプターや輸送機で吊り下げられるラージチェスト
		パラシュート: 降下中に右クリックで使用、戦闘機に入れておくと射出座席が使用可能
		スティンガー: 携帯対空ミサイル
		ジャベリン: 対戦車ミサイル
		UAVステーション: UAVを遠隔操作する地上誘導ステーション
		レンチ: 機体の耐久値を回復
		ガンナー: 自動的にモンスターや対他チームプレイヤーを攻撃するモブ

	マルチプレイに正式対応しました。
	!!!必ずワールドのバックアップをとってから使用して下さい!!!


前提MOD
	Minecraft Forge 1.7.10-10.13.2.1230 以降が必要です。
	(上記バージョンで動作確認を行ってます)

Install 方法
	zipを解凍し、mcheliフォルダを .minecraft\mods に入れて下さい。

Uninstall方法
	mods フォルダからmcheliフォルダを削除して下さい。


Item ID / Block ID
	1.7.2 以降はItemID, BlockIDは使用しません。

Command
	ヘリMOD用のコマンドで /mcheli ??? パラメータ..  の形式です。
	シングルプレイか、マルチでOP権限があれば全コマンドが使用できます。
	OPでなくても、サーバ側の mcheli.cfg の CommandPermission でコマンドごとに許可を出すことが可能です。
	
	/mcheli list
		コマンドの一覧を表示します。
	
	/mcheli reconfig
		起動したまま mcheli.cfgファイルを読み込み直します。
		マルチの場合一部の設定はクライアントにも反映されます。
		マルチプレイ中はサーバ側の mchli.cfg しか読み込みしなおせません。
		
	/mcheli title 表示時間 表示位置 メッセージ[JSON format]
		画面に大きく文字を表示します。マインクラフト1.8の title を一部移植したものです。
		
	/mcheli fill X1 Y1 Z1 X2 Y2 Z2 ブロック名 ブロックメタデータ 既存ブロックの扱い データタグ
		指定領域をブロックで埋めます。マインクラフト1.8の fill の強化版です。
		3000000個までのブロックを置き換えできます。
		便利な機能として /mcheli fill か /mcheli fill X1 Y1 Z1 まで入力した状態でTABキーを押すと
		現在のプレイヤー位置が入力されます。
		既存ブロックの扱い は以下の4つが指定できます。
			replace : 指定した領域をすべてブロックで埋める
			destroy : 指定した領域にあるブロックをすべて破壊してから埋める
			keep : 指定した領域にすでにあるブロックは保持したまま埋める
			override : 指定した領域にすでにあるブロックのみ置き換える（1.8にはない）
		
	/mcheli status エンティティの種類 表示する最小数
		エンティティの種類 は以下の2種類が指定できます。
		entity : 全エンティティ
		tile : チェストやピストンなどの特殊なブロック
		表示する最小数 を指定すると、この数より少ないエンティティは表示しません。
	
	/mcheli showboundingbox true/false
		バニラ標準の機能である Ctrl+B の当たり判定表示機能のON/OFFです。
		マルチでサーバから強制OFFするために使用します。
	
	/mcheli killentity クラス名の一部
		指定したクラス名のエンティティを全て殺します。(プレイヤーは除く)
		クラス名の一部は /mcheli status で調べることができます。
		例： /mcheli killentity Creep と指定すると全てのクリーパーだけを殺します。
	
	/mcheli removeentity クラス名の一部
		指定したクラス名のエンティティを消します。(プレイヤーは除く)
	
	/mcheli attackentity クラス名の一部 ダメージ ダメージの種類
		指定したクラス名のエンティティに指定したダメージを与えます。(プレイヤーは除く)
		ダメージの種類 は以下が使用可能です。
		player : コマンド実行者からの攻撃として指定
		anvil : 金床の落下
		cactus : サボテン
		drown : 窒息
		fall : 落下
		fallingblock : ブロック落下
		generic : 一般的なダメージ
		infire : 火や溶岩に触れたときのダメージ
		inwall : ブロックにめり込み窒息
		lava : 溶岩
		magic : ポーション
		onfire : 火のダメージ
		starve : 空腹
		wither : ウィザー
	
	/mcheli modlist プレイヤー名1 プレイヤー名2 ...
		指定したプレイヤーのMOD一覧を表示します。
	
	/mcheli sendss プレイヤー名
		指定したプレイヤーが見えている画面のスクリーンショットを
		サーバの screenshots_op フォルダに保存します。
		これは F2 キーを押したときと同じ画像と同じです。
		画面サイズによっては保存までに数十秒かかることがありますので連発しないでください。
		実行したプレイヤーがOPでも画像を見ることはできず、サーバの管理者のみ見ることができます。

	/mcheli delayhitbox 遅延時間 0〜50
		指定した時間当たり判定の位置を遅延させます。
		マルチプレイで移動中の機体の前を狙わないと当たらない場合
		この値を大きくすることでずれを改善できます。

Recipe
数が多いので下記を参照して下さい。
http://www61.atwiki.jp/mcheli/pages/116.html


3人称視点時のカメラ距離
	PageUpまたはPageDownボタンでカメラ距離の変更をできます。

操作方法
http://www61.atwiki.jp/mcheli/pages/126.html


既知の問題
	・描画関連のMODと競合する可能性がある。

	・ヘリコプターに乗り、ナイトビジョンを使用したまま
	　ログアウト→ログインした場合、ログイン直後にポーション効果が切れる。
	　→ ナイトビジョンを使用したままログアウトしないことで回避可能



更新履歴
	2017/08/17 Ver.1.0.4
		機体追加 PZL W-3PL グウシェッツ
		機体追加 クルップ C/34 沿岸砲
		機体追加 オート・メラーラ127mm砲
		マルチプレイ向けに機体が破壊されたときに全員大ダメージを受ける KillPassengersWhenDestroyed を追加
		3人称視点のデフォルト距離を機体毎に設定した
		自動攻撃を行う「ガンナー」を追加
		・対モンスター用と対他チームプレイヤー用の2種類
		・スポーンエッグを持って座席を右クリックすると生成される
		・ガンナーを右クリックすると消滅する
		・座席から降りると消滅する
		・クリエイティブのプレイヤーが生成すると無敵かつ弾薬無限に
		　サバイバルのプレイヤーが生成すると、HP20で機体に装填されている分のみ撃つ
		・機体に乗り Ctrl + C で自動射撃のON/OFFを切り替えられる
		・攻撃範囲は mcheli.cfg から変更可能
		　RangeOfGunner_VsMonster_Horizontal 対モンスター用 水平方向の攻撃範囲
		　RangeOfGunner_VsMonster_Vertical   対モンスター用 垂直方向の攻撃範囲
		　RangeOfGunner_VsPlayer_Horizontal  対他チームプレイヤー用 水平方向の攻撃範囲
		　RangeOfGunner_VsPlayer_Vertical    対他チームプレイヤー用 垂直方向の攻撃範囲
		FlansModPlusの機体がMCヘリのミサイルをフレアで回避できるように変更
		スポンジの上のみに生成できるようにする PlaceableOnSpongeOnly を有効にした場合、
		ボートだけスポンジの上に 3 x 3 の水ブロックが無いと設置できないようにした
		ヘリコプターの回転を制限する設定を追加 (サーバの設定が優先される)
		・EnableRotationLimit
		・PitchLimitMax
		・PitchLimitMin
		・RollLimit
		マルチプレイ向けにヒットボックスを遅延させる delayhitbox コマンドを追加
		墜落後のデスポーン時間設定 DespawnCount を追加
		modlist の不具合修正
		マルチプレイでの機体の描画距離を伸ばした
		地上兵器が爆風などで移動しないようにする FixVehicleAtPlacedPoint を追加
		機体設定 CreativeOnly を追加。CreativeOnly = true を記載した機体はクリエイティブのプレイヤー
		のみ設置またはアイテム化が可能になる。
		機体設定 Invulnerable を追加。Invulnerable = true を記載した機体は無敵になる。
	2016/10/10 Ver.1.0.3
		ブロックマーカーのサイズを変更できるようにした
		BNRの視点切り替え機能
		FlansModPlus の対空ミサイルでヘリMODの機体をロックできるようにした
		■機体追加
		・Kurganets-25 歩兵戦闘車 追加
		・M1129 自走迫撃砲 追加
		・M26 パーシング 追加
		・MXT-MV ハスキーTSV 追加
		・グラウラーITV 追加
		■不具合修正
		ゼロ戦から降りると主翼に引っかかる不具合修正
		mcheli.cfgの「BulletBreakableBlocks」の内容が変更できない不具合修正
		Throttle Down TankをONにしたとき、GUIのスロットルが下がらない不具合修正
	2016/04/02 Ver.1.0.2
		NotEnoughItems を導入している状態でマルチでMキーを押すとクラッシュする不具合修正
		・CB90 Combat Boat 追加
	2016/03/31 Ver.1.0.1
		戦車に乗ったままワールドに再ログインするとクラッシュする不具合修正
		Ctrl 以外のキーでも1番席と2番席を移動できるようにした(Freelook key + F or R)
	2016/03/29 Ver.1.0.0
		■機体追加
		・NHインダストリーズ NH90-TTH 追加
		・スカイラインGT-R BNR32 追加
		・チェンタウロ偵察戦闘車 追加
		・M1A2 エイブラムス 追加
		・Merkava Mk.4 追加
		・T-90 主力戦車 追加
		・KV-2 ギガント 追加
		・P-51 マスタング 追加
		・T-84 オプロートM 追加
		■コマンド追加/変更
		・全てOP権限が必要
		/mcheli reconfig 起動したまま mcheli.cfgファイルを読み込み直す
		/mcheli title 画面に大きく文字を表示する。マインクラフト1.8の title を一部移植
		/mcheli fill 指定領域をブロックで埋める。マインクラフト1.8の fill を一部移植
		/mcheli status ロードされているエンティティ数を表示する
		/mcheli showboundingbox Ctrl+Bの当たり判定表示機能のON/OFF (マルチ向けでサーバから強制OFFできる)
		/mcheli killentity 指定したクラス名のエンティティを全て殺す(プレイヤーは除く)
		/mcheli removeentity 指定したクラス名のエンティティを消す(プレイヤーは除く)
		/mcheli attackentity 指定したクラス名のエンティティにダメージを与える(プレイヤーは除く)
		/mcheli modlist 指定したプレイヤーのMOD一覧を表示する
		■機能追加 シングル/マルチ共通
		・ブレーキを実装した(車両のみ実装した。スペースキー)
		・ジャベリン (対戦車ミサイル)を追加
		・携帯兵器の保持可能弾薬数を2倍にした
		・車両(乗用車/戦車など)を追加
		・車両が一部ブロックにぶつかると、破壊するように機能を追加
		・車両がエンティティにぶつかると、ダメージを与える機能を追加
		・車両のみ射撃時の反動で機体が揺れる機能を追加
		・Ctrl + R または Ctrl + F で1番席と2番席以降を切り替えできるようにした
		・機銃や砲にマズルフラッシュと煙のパーティクルを追加
		・爆発エフェクトをバニラと全く異なるものに変更(mcheli.cfg の DefaultExplosionParticle でバニラに戻せる)
		・機体をアイテム化した時、燃料も保持するよう変更
		・駆動音が遠くまで聞こえるように変更
		・駆動音が位置によって左右で音量が変わるように変更
		・弾やミサイルの到達距離を伸ばした
		　　→シングルでロードされている範囲なら200mくらいまで到達する
		　　→マルチでロードされている範囲なら500mくらいまで到達する
		・クリエイティブのみShiftを押しながら機体を叩くとアイテム化するように変更
		・当たり判定が他のMODの銃やバニラの矢なども当たるように変更
		　→これによって2番席以降に乗りづらくなったので Ctrl+R または Ctrl+F で切り替え可能にした
		・FreeLook切替時鳴らしていたクリック音を削除
		■機能追加 マルチ向け
		・機体が破壊された時に実行されるコマンドを機体に設定できるようにした
		・他にプレイヤーが乗ってる時に叩いても壊れないように変更
		・スポンジの上のみで機体を設置できるようにする設定を mcheli.cfg に追加(PlaceableOnSpongeOnly)
		■モデル作者向け
		・範囲内の他の機体を無条件で回復する機体設定を追加 RepairOtherVehicles
		・沈んでもダメージを受けない水面の高さを設定できるようにした SubmergedDamageHeight
		・砲塔の回転速度を設定できるようにした CameraRotationSpeed
		・砲塔に合わせて武器の射撃位置を変える機能を追加
		・砲塔に合わせて座席位置やカメラ位置を変える機能を追加
		・武器設定に機体種別ごとのダメージ倍率追加 DamageFactor
		・1つの武器を使うと他の同じグループの武器もリロードされる設定を追加 group (弾は減らない)
		・MOD Optionから武器設定ファイルが読み込みできるボタンを追加
		・MOD OptionからHUD設定ファイルが読み込みできるボタンを追加
		・当たり判定にダメージ倍率を設定できるようにした
		■不具合修正
		・燃料を右クリックした時、石炭を6個ではなく8個消費する不具合修正
		・爆風が草や蜘蛛の巣でダメージ軽減できてしまう不具合修正
	2015/09/20 Ver.0.10.8
		■機体追加
		・E767 追加
		・プロジェクト1204 Shmel国境警備艇 追加
		■シングル/マルチ共通
		・クリエイティブモードの場合、製図台でいつでもアイテムが作れるように変更
		・Fl282 コリブリ, 46cm3連装砲, MD90 モデル更新
		・WWIIのHUDが夜間モードのままになる不具合修正
		・製図台でモデルを移動/拡大/回転できるようにした
		・「レーザー レンジ ファインダー」追加(マルチ向けだが一応シングルでも使用可)
		・各機体にスポット機能を装備
		・ヘリコプター/戦闘機が地上/海上付近にいる時の砂煙のエフェクトを変更
		・スティンガーの射程を伸ばした。コンフィグから射程を変更可能
		■マルチ向け機能
		・プレイヤーリスト：全プレイヤー使用可能
		・管理者向けプレイヤーリスト：権限のあるプレイヤーのみ使用可能
		・管理者専用 スクリーンショット取得コマンド「/mcheli sendss <player name>」
		・管理者専用 導入MOD一覧取得コマンド「/mcheli modlist <player name>」
		■モデル作者向け
		・サーチライトの向きを固定化できるように変更
		・戦車用の転輪、履帯を追加
		■不具合修正
		・UAVステーションにアイテムを置いた時に増殖する不具合
	2015/07/11 Ver.0.10.7
		■機体追加
		・スカイラーク(小型UAV) 追加
		・F-4A 追加
		・Mi-24 ハインド 警察仕様 追加
		・Bell ペネトレーター 追加
		■機能追加
		・３人称視点距離変更機能をサーバ側で制限できるように変更
		・小型UAV用(RC Goblin, スカイラーク)の携帯UAV制御端末追加
		・コンフィグからダメージ倍率変更に対応(他のMODにも対応)
		　　ヘリMODの機体が受けるダメージの倍率 
		　　ヘリMODが与えるダメージの倍率
		・UAVを設置した地点でも補給できるように変更
		・マルチプレイで同じチームのプレイヤーからの攻撃を受けないように変更
		・サーチライト追加
		・スモークグレネードをディスペンサーから発射できるように変更
		・マウススクロールで武器を切り替える機能追加(コンフィグでON/OFF可能)
		■不具合修正
		・他の機体に乗ったヘリコプターがブレードを折りたたんだまま飛行できてしまう不具合修正
	2015/04/01 Ver.0.10.6
		■機体追加
		・C-5ギャラクシー 追加
		・Su-47追加 
		・F-15E追加 
		・Bell207追加 
		・Mk.5 特殊任務艇 追加
		・ゴムボート 追加
		・スティンガー 390X 追加
		■機能追加
		コンテナや機体の積み込み機能と投下機能
		モブのパラシュート降下機能(オスプレイのみ)
		ラペリング(SH-3, MH-60G, CH-47, MH-6, SH-60のみ)
		機体の耐久値が 50% 未満になると自動回復しないように変更(コンフィグから変更可能) 
		機体の修理アイテム「レンチ」追加
		モデル作者やカスタマイズされる方向け 
		　マイクラを起動したまま設定ファイルを再読み出しする機能追加
	2015/01/18 Ver.0.10.5
		■不具合修正
		・小数点が , の国で実行すると起動時にコンフィグが読み込めずクラッシュする
		・実績が他のMOD被っていたため変更
		・武器を切り替えると残弾が０になる
		・bspkrsCore-6.15 を入れるとヘリMODがクラッシュする
		B-2A スプリット追加
		機銃の弾数増加：２〜４倍（マルチで弾切れが多いとの報告による）
		■モデル作者向け
		・２番席以降のカメラの固定に対応
		・ハッチにも速度変更機能を追加
		・空対地ミサイルも子弾を撒けるようになった
	2014/12/23 Ver.0.10.4
		カスタムHUD
		　機体の各座席ごとにHUDを割り当てることができるようになる。
		　HUD自体は設定ファイルで好きに変更できる。
		既存のHUDの変更
		　戦闘機/民間機/WWII機
		ギアの手動上げ下げ 
		製図台 追加
		アイテムの散布機能追加(着弾地点に骨粉を使ったり、火打ち石を使ったりする)
		■地上兵器
		　追加 : Mk29 艦対空ミサイル(シースパロー)
		■ヘリコプター
		　追加 : Fl282、MH-53E、Ka-29、OH-1
		　更新 : Ka27、CH-47、Mi-24 モデル更新
		■固定翼機
		　追加 : F-15 S/MTD、An-2(消防用)、PZL M-18(農業用)、Su-37、P.180
		　更新 : EMB-314 モデル更新
		■標的機
		　BQM-74E 追加 
		　MQM-170 追加
	2014/10/08 Ver.0.10.2
		マインカートの近くに機体があるときにマインカートに乗るよう変更
		空の燃料/パラシュートスロットをクリックするとクラッシュする不具合修正
		1.6.4以前版のみサーバが起動できない不具合対策
	2014/10/04 Ver.0.10.1
		TVミサイル使用中に降りるとクラッシュする不具合修正
		MouseInvertで操縦桿の表示が上下逆に動くように修正
	2014/10/02 Ver.0.10.0
		UH-1C 追加
		ロビンソン R44 （通常/フロート）追加
		AH-1Z ヴァイパー 追加
		T-4 中等練習機 追加
		S-75 地対空ミサイル (SA-2 ガイドライン) 追加
		MIM-23 ホーク 地対空ミサイル 追加
		VADS 追加
		射出座席に対応
		クリエイティブタブを分類ごとに分けた(ヘリ、戦闘機、地上兵器、その他)
		クリエイティブタブ内の並び順がバラバラだったのを修正
		ロール追加 ... ロール追加に伴い機体の視点移動変更
		フライトシミュレータ風の操作を追加(A,Dでラダー、マウスの横でロール)
		コンフィグファイルの設定をゲーム内でコンフィグ画面やキーコンフィグ画面からできるように対応
		マウス操作に操縦桿タイプ追加(StickMode) ... マウスを動かし続けなくても旋回できる
		墜落で炎上 ... 撃墜されて地面にぶつかると爆発する
		耐久値が0になっても一定時間機体が残る。そのまま乗っていると乗員は炎上ダメージをうける
		スモーク（飛行機雲）を出す機能の追加
		兵器の音声ファイル構成の整理(1武器ごとに音声ファイルを用意する必要がなくなった)
		ミサイルのダメージ強化
	2014/07/09 Ver.0.9.3
		Minecraft 1.7.10 に対応
		M18 発煙手榴弾(赤、黄、紫、緑) 追加
		X-47B 追加
		F-35B 追加
		B-29 追加
		MD90 追加
		SH-3 追加
		Ka50N/Ka52 追加
		ホバリング前のスロットルを保持するように変更
		モブへの攻撃がヒットした際のヒットマークの色をコンフィグから変更可能にした
		水中のモブへ魚雷が当たった際に水柱が立たない不具合修正
		モデルを滑らかに表示するスムースシェーディングに対応（ON/OFF可）
		メタセコイア形式のモデルを変換せずにそのまま表示できるようにした
		水中に銃が当たった場合に水柱が立つようにした
		UAVステーションに乗ると最後に操作したUAVを操作できるボタン追加
		機銃が当たった際に板ガラスが割れるように変更
	2014/06/05 Ver.0.9.2
		武器ごとのロックオン時間が固定になっている不具合修正
		水上機が補給できない不具合修正
	2014/06/03 Ver.0.9.1
		地上のモブがロックオンできない不具合修正
	2014/06/01 Ver.0.9.0
		F-22A、F-35A、F-35C 追加
		Mi-28、ボフォース40mm/L60 追加
		弾薬、燃料を追加
		当たり判定を追加
		機銃の弾速を上げた
		魚雷を強化した
		シングルでも２番席に乗れるようにした
		座席の位置をクリックすると乗れるようにした
		モデル開発用のテストモード追加
	2014/04/28 Ver.0.8.1
		1.7.2のみForgeのバージョン変更 10.12.1.1060
		トーネード IDS / トーネード GR.4追加
		２番席もフレアが使用可能
		ディスペンサーによる機体の設置に対応
		可変翼機の地上での折りたたみに対応
		機体の角度を固定するフリールックモードに対応(Ctrl キーでON/OFF)
		空薬莢のエフェクト追加
		一部の砲が駐退するように対応
		CAS(A-10)を使用するときに、空中を指定するとクラッシュする不具合修正
	2014/04/12 Ver.0.8.0
		マルチプレイでの２番席以降からの兵器の使用
		AH-64 アパッチのモデル更新(AH-64D)
		MQ-8B ファイアスカウト追加
		フィーゼラー Fi167 雷撃機追加
		無誘導の魚雷追加
		マッキ M33 追加
		マッキ M.C.72
		九三式酸素魚雷発射管追加
		RC Goblin・RC Goblin with Bomb追加
		爆弾付きは右クリックで爆発します。
		MH60L-DAP追加
		MH60G追加
		Mk32 短魚雷発射管追加
		AC-130H スペクター追加
		F-14D スーパートムキャット追加
		F/A-18F スーパーホーネット追加
		Su-33 フランカーD追加
		Mig-29 フルクラ厶追加
		不定形レシピに対応(アイテムをどこにおいても作れるレシピ)
		幾つかの機体の座席位置を左右変更
	2014/3/9 Ver.0.7.4
		不具合修正：コンテナ/鎖などのアイテムが作れない不具合修正(レシピが間違っていた)
		コンテナ/鎖などのレシピをコンフィグから指定できるように変更
		US-2のパイロット以外のモブが自動回復する機能追加
		EC665のモデルと武装を更新
		MC Heli用のクリエイティブタブを追加
	2014/3/5 Ver.0.7.3
		マルチのみCAS(A-10の呼び出し)でクラッシュする不具合修正
		マルチのみナイトビジョンを使用するとクラッシュする不具合修正
		シングル/マルチ共通 地上兵器から降りた時にクラッシュする不具合修正
	2014/3/1 Ver.0.7.2
		Minecraft1.7.2に対応
		設定ファイルの文字コードを全てUTF-8に変更
		機体自体をレシピに加えられるよう変更
		MODのアイテムをレシピに加えられるよう変更
		MC1.7.2以降のバージョンのみサーマルビジョンを追加
		レシピの指定をアイテムIDからアイテム名に変更
		複数のレシピを指定できるよう変更
	2014/2/11 Ver.0.7.1
		武器設定の爆発威力の上限を10から50に変更
		US-2 のレシピが間違っていたのを修正
		ボーイング AH-6のモデル更新
	2014/2/11 Ver.0.7.0
		UAV : MQ-9 リーパー、ボーイング AH-6 とUAV地上誘導ステーションを追加
		ヘリコプター : CH-47 チヌーク、Mi-24 ハインド 追加
		艦砲 : 12.7cm連装砲(2種類)、15.5cm3連装砲、25mm三連装機銃、46cm3連装砲 追加
		戦闘機 : 零式艦上戦闘機21型、零式水上観測機、US-2救難飛行艇 追加

		ヘリコプターと固定翼機でスロットルが自動で下がるか固定かをmcheli.cfgで変更できる機能追加
		航空機から降りた際に他のモブを降ろすかどうかmcheli.cfgで変更できる機能追加
		スロットルの変化を機体毎に設定できる機能追加
		機体ごとに機動性を変更できる機能追加
		ハイドラ70MPSM弾を追加(発射後、複数の子弾に分裂)
		MV-22オスプレイのモデルを正式版に変更
		ハリアーのキャノピーを実物同様スライドするように変更
		Zキーで MV-22、CH-47 の後部ハッチが開閉できる機能追加
		スロットルが0で Zキーを押すと 零戦、零観 の主翼が折りたためる機能追加
		近接信管の反応距離を変更できる機能追加
		クラスター爆弾などの発射後に子弾を撒くまでの時間を変更できる機能追加
		固定翼機にもガンナーモードを追加
		水上機の水上での高さを変更できる機能追加
		WWIIの機体など地上で上を向く機体用に、地上での仰角設定を追加
		TV誘導ミサイルを固定翼機も使えるように変更
		マルチで他のプレイヤーが乗ったヘリコプターの機銃や、艦砲がガクガクする不具合修正
		OptiFine_1.6.4_HD_C8 でクラッシュする不具合修正
	2013/12/27 Ver.0.6.0
		ハリアーのテクスチャ修正(US/EN)
		ヘリコプター・戦闘機の耐久値を機体ごとに設定できるように変更
		ヘリコプター・戦闘機の耐久値を下げた
		弾丸のみOBJ形式のモデルの読み込みに対応(ミサイルなども順次切り替え)
		Mk15 ファランクス(CIWS) 追加
		Mk15 Mod.31(SeaRAM) 追加
		オート・メラーラ 76 mm 砲 追加
		エンブラエル EMB-314 追加
		セスナ172 追加
		水上戦闘機 強風 追加
		A-10 Thunderbolt II 追加
		Bell47G と Bell47GF(架空) 追加
		レシピに染料も指定できるように変更
		シングル/マルチ両方で爆破によるブロックの破壊のON/OFF設定追加
		シングル/マルチ両方で爆破時のブロックへの着火のON/OFF設定追加
		フレアの有無を機体ごとに切り替える設定を追加
		ヘリコプター・戦闘機を水上に浮かせるオプションを追加(水上機が追加可能)
		プレイヤーが下りた時、機体の上に降りてしまい身動きが取れなくなるバグを修正
		VTOLモード時、オスプレイのみヘリコプターのように速く移動できるように変更
		叩いてアイテム化したとき、ダメージを引き継ぐように変更(コンフィグから機能のON/OFF可)
		PageUp/Downで３人称視点でのカメラ距離を変更
	2013/11/16 Ver.0.5.1
		描画関連のMODと競合する可能性をわずかに下げた
		ハリアーを英米で分けた＆テクスチャ追加
		アイテム：FIM92 スティンガー (携帯対空ミサイル) 追加
		アイテム：ヘリコプターや輸送機でアイテムを運搬するためのコンテナ追加
		アイテム：パラシュート 追加
	2013/11/04 Ver.0.5.0
	 ■シングル・マルチ共通
		MV-22 オスプレイ 追加
		AV-8B ハリアー II のモデルを暫定版から正式版に変更
		エンティティとの当たり判定を取るように変更(ウゴクラフトで動かせる)
		GLTDのレーザーが常に描画されるように変更＆遠くからでも見えるように変更
		スティンガー、サイドワインダー、ヘルファイアでロックできるモブにマーカーを表示
		スティンガーとヘルファイアが正しくロックオンできない不具合修正
		撃ったロケットがいつまでも画面に残る不具合修正
		死んで戻ってくると武器の状態がおかしくなる不具合修正
		パイロットが死んだ時にホバリングモードが解除されない不具合修正
	 ■マルチプレイ関連
		マルチプレイに正式対応(前のVersionから動いてはいましたが)
		ヘリコプターに乗った時に座席の位置がおかしい不具合修正
		フレアの機能を実装(使用中は追尾してくるミサイルを無効化)
		パイロットが乗り込んだ時に近くのプレイヤーは乗せないように変更(降りた時も同様)
		他のプレイヤーは2番席以降に乗れるように変更
		2番席以降の乗員はFキーで座席変更
		機体名が22字を超えた状態でインベントリを開くとクラッシュする不具合修正
		２番席の人をスティンガーでロックしてしまう不具合修正
	2013/10/26 Ver.0.4.2
		「Bell 206L ロングレンジャー」を追加
		いくつかのヘリコプターにインベントリを追加
		キーを画面に表示(表示/非表示切り替え可)
		AH-6にマーカーロケット追加
	2013/10/20 Ver.0.4.1
		新しいアイテム「鎖」を追加
		ヘリコプターのみ鎖をつないだ状態で Fキー を押すと鎖を外す機能追加
		ヘリコプターや飛行機に乗っている場合、乗員同士の攻撃でダメージを受けないように変更
		ハリアーに CRV7(通常弾 or ブロック貫通弾) と AGM-65 を追加
		ヘリコプターの上下の角度を変えた時に、乗員の位置がずれる不具合修正
		Rキー でパイロットと2番席以外の乗員を降ろすように変更
		戦闘機のVTOL中はヘリコプターのように傾きで移動できるように変更
	2013/10/13 Ver.0.4.0
		「AV-8B ハリアー II」のお試し版を追加
		複数座席にモブを載せた際に動きがおかしくなる不具合対応
		ヘリコプターのプロペラ音にノイズが混じる不具合対応
	2013/10/05 Ver.0.3.3
		「Ka-27 ヘリックス」を追加
	2013/09/29 Ver.0.3.2 MC1.5.2
		MC1.5.2に対応(1.6.2には変更なし)
	2013/09/27 Ver.0.3.2
		「GLTD:レーザー目標指示装置」を追加
	2013/09/22 Ver.0.3.1
		ヘリコプターの中心部分が視界内にない場合表示されない不具合対応
	2013/09/21 Ver.0.3.0
		内部構造を一新
		インストール方法変更、zipのまま→zipを解凍
		いくつかの効果音追加
		ヘリコプター＆兵器の情報をテキストファイルから読みだすように変更
		 →追加や書き換えが可能
		ヘリコプターのモデルをOBJファイルから読みだすように変更
	2013/09/15 Ver.0.2.0
		SH-60 シーホーク を追加
		「フレア」の追加
		「ブレードの折りたたみ」を追加
	2013/09/08 Ver.0.1.0
		既存のレシピを変更(コストアップ)
		EC665 ティーガー を追加
		.cfg ファイルを生成するように変更(キーとアイテムIDの変更が可能)
	2013/09/06 Ver.0.0.3
		M134の照星を追加
		ホバリングモードを追加(お試し版)
		パイロットモード中にADキーによる平行を追加
	2013/09/04 Ver.0.0.2
		Hydra70の照星を追加(お試し版)
		A-10の音声を追加(お試し版)
	2013/09/01 Ver.0.0.1
		ベータ版公開

