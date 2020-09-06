//
//  MapInteractor.swift
//  ginkgo
//
//  Created by Junichi Shimazaki on 2019/01/20.
//  Copyright © 2019 JSBlueSky. All rights reserved.
//

import Foundation

class MapInteractor: MapUseCase {
    var output: MapInteractorOutput!
    // delete
    var mapContents: [MapContents] = []
    
    func fetchContentsList() {
        // get data at db
        if true {
            // Success
            mapContents.append(MapContents(id: 1, title: "和光市駅", description: "和光市の中心にある駅です", latitude: 35.788469, longitude: 139.612517, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 2, title: "わこうっち銅像", description: "和光市のゆるキャラ「わこうっち」の銅像です", latitude: 35.788173, longitude: 139.612096, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 3, title: "和光市北駐輪場", description: "和光市北にある駐輪場です", latitude: 35.789973, longitude: 139.612585, imageUrl: "", tagList: [], typeId: 3))
            
            mapContents.append(MapContents(id: 4, title: "濱松屋", description: "小洒落たビールのよく合うお店です", latitude: 35.788756, longitude: 139.612948, imageUrl: "", tagList: [], typeId: 1))
            mapContents.append(MapContents(id: 5, title: "パパピニョル", description: "洋風のお菓子屋さんです", latitude: 35.790116, longitude: 139.612863, imageUrl: "", tagList: [], typeId: 4))
            mapContents.append(MapContents(id: 6, title: "もくれんハウス", description: "幼児から遊べる施設です。親同士の交流も行えるスポットです", latitude: 35.791127, longitude: 139.613714, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 7, title: "柿ノ木坂湧き水公園", description: "坂の間にある公園です。住宅街の中ですがとても多くの自然がある公園です。", latitude: 35.792426, longitude: 139.614258, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 8, title: "ふるさと民家園", description: "古民家です。東京メトロのCMで石原さとみさんが最初に訪れた場所になります。", latitude: 35.791261, longitude: 139.618464, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 9, title: "365アニバーサリー", description: "ケーキやクッキーなどを取り扱っている洋菓子屋とレストランが一体になったお店です。 わこうっちのクッキーも売ってます", latitude: 35.786291, longitude: 139.620575, imageUrl: "", tagList: [], typeId: 4))
            mapContents.append(MapContents(id: 10, title: "せせらぎ公園", description: "夏にじゃぶじゃぶ遊べる川がある公園です。駅近公園です", latitude: 35.786547, longitude: 139.615536, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 11, title: "白子熊野神社", description: "夏に大きなお神輿が出る、大きな神社です。滝行が行えますよ。", latitude: 35.781862, longitude: 139.622475, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 12, title: "百段階段", description: "長い階段が続いたスポットです。 夏には木々が茂ってとても涼しいスポット。百段あるかはぜひ数えてみてください。", latitude: 35.776184, longitude: 139.623322, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 13, title: "理化学研究所", description: "日本の誇る科学はここで生まれます。", latitude: 35.780578, longitude: 139.612409, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 14, title: "鈴木製麺所", description: "和光のうどんはここで生まれます", latitude: 35.786325, longitude: 139.608373, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 15, title: "新倉うどん ひろとみ", description: "和光のおいしい水で作られたうどんはここで食べられます。東京メトロのCMで石原さとみさんが訪れたお店です", latitude: 35.786543, longitude: 139.610015, imageUrl: "", tagList: [], typeId: 1))
            mapContents.append(MapContents(id: 16, title: "本町図書館", description: "シーアイハイツの中にある和光市の図書館です。読み聞かせイベントなど様々なイベントを行っています", latitude: 35.787346, longitude: 139.607496, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 17, title: "本田技研", description: "本田技研の建物です。冬にはクリスマスツリーがライトアップされてオススメです", latitude: 35.790061, longitude: 139.606703, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 18, title: "東京メトロ車両基地", description: "東京メトロの車両基地です。有楽町線の出入りが見られるスポットです", latitude: 35.789770, longitude: 139.604689, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 19, title: "上谷津公園", description: "2018年春にできたとても新しい公園です。芝で埋め尽くされておりとても開放感のある公園です。近くに川が流れているためゆっくりできます", latitude: 35.795832, longitude: 139.613711, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 20, title: "越戸川沿い", description: "川に沿ってまっすぐな道です。朝自転車で走るととても爽快感があります。", latitude: 35.799692, longitude: 139.614493, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 21, title: "みつば公園", description: "運動器具やボルダリング施設などを備えた公園です。全て無料で遊べます。", latitude: 35.801855, longitude: 139.616936, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 22, title: "串焼 大澤", description: "とても小さな串焼き屋さんです。どれもおいしいです。", latitude: 35.797622, longitude: 139.618049, imageUrl: "", tagList: [], typeId: 1))
            mapContents.append(MapContents(id: 23, title: "リトルベアー", description: "小さなパン屋さんです。キャラクターのパンなど置いてあり、子供にとっても人気です。", latitude: 35.794009, longitude: 139.619569, imageUrl: "", tagList: [], typeId: 1))
            mapContents.append(MapContents(id: 24, title: "堀江商店", description: "昔ながらの駄菓子屋さんです。昔ながらのゲームがあったりするので、子供達の溜まり場になっています。子供達が帰ってくる時間しか開いてません", latitude: 35.795165, longitude: 139.619205, imageUrl: "", tagList: [], typeId: 4))
            mapContents.append(MapContents(id: 25, title: "無人販売所", description: "和光北に複数箇所ある無人販売所の一つです。付近で育てられた野菜などが買えます。売っているものはその時々で違うため、何回行っても飽きません。", latitude: 35.791559, longitude: 139.622795, imageUrl: "", tagList: [], typeId: 4))
            mapContents.append(MapContents(id: 26, title: "西本村桜公園", description: "大きな滑り台や大きな砂場のある公園です。春には桜祭りが開催されます。", latitude: 35.791983, longitude: 139.627489, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 27, title: "そば処ふじ屋", description: "和光オススメのお蕎麦屋さんです、。少し奥にあります。", latitude: 35.793863, longitude: 139.626703, imageUrl: "", tagList: [], typeId: 1))
            mapContents.append(MapContents(id: 28, title: "長照寺", description: "わこうっちのお家である大きなイチョウの木があるお寺です。 わこうっち銅像もあります", latitude: 35.794417, longitude: 139.623649, imageUrl: "", tagList: [], typeId: 2))
            mapContents.append(MapContents(id: 29, title: "らーめん屋さん・ヤベツ", description: "色々なタイプのらーめんを取り扱っているラーメン屋さん。野菜がいっぱい入ったラーメンやスタミナたっぷりのラーメンなど種類が多いのでオススメです", latitude: 35.796328, longitude: 139.623224, imageUrl: "", tagList: [], typeId: 1))
            mapContents.append(MapContents(id: 30, title: "坂下ショッピングセンター", description: "食材や日用品など様々な物を取り扱っているショッピングセンターです。特に、激安品など扱っている、少し変わったお店です。毎日激安品が変わるため、飽きません", latitude: 35.796587, longitude: 139.623132, imageUrl: "", tagList: [], typeId: 4))
            mapContents.append(MapContents(id: 31, title: "新倉８丁目セブンイレブン", description: "和光市にあるセブンイレブンの一つです。 ここのセブンイレブンでは、日本全国であまり取り扱われていないスラーピーがあります。必見です！！", latitude: 35.799792, longitude: 139.625521, imageUrl: "", tagList: [], typeId: 4))
            mapContents.append(MapContents(id: 32, title: "和光市勤労福祉センター アクシス", description: "市の施設ですが、運動器具やアリーナがある施設です。 お風呂もあるため、運動後にお風呂に入って汗を流すことができます。 トレーナーがいるため効率的に運動ができます。駐車場もあります。", latitude: 35.803371, longitude: 139.623379, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 33, title: "レインボーモータースクール", description: "和光市にある、教習所です。イベントも行われており、中には警察官の白バイに乗ったりすることもできます", latitude: 35.793709, longitude: 139.637708, imageUrl: "", tagList: [], typeId: 3))
            mapContents.append(MapContents(id: 34, title: "テニスゼロ和光", description: "和光市にあるテニススクールです。 とても多くの方が通われているため、", latitude: 35.795240, longitude: 139.631953, imageUrl: "", tagList: [], typeId: 3))
            
            output.fetchedContentsList(mapContents)
        } else {
            output.fetchedFailedContentsList()
        }
    }
    
    func fetchContentsDetail(_ id: Int) {
        for contents in self.mapContents {
            if contents.id == id {
                output.fetchedContentsDetail(contents)
                break;
            }
        }
        output.fetchedFailedContentsDetail()
    }

    
}
