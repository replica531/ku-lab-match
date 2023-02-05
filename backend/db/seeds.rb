survey = Survey.create(name: '京都大学電気電子工学科B3研究室配属', max_request: 7)
# 工学研究科
# 電気工学専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻',
                                        major: '先端電気システム論')
laboratory.teachers.create(name: '引原 隆士', position: '教授(兼任)')
laboratory.teachers.create(name: '薄 良彦', position: '准教授')
laboratory.teachers.create(name: '持山 志宇', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻',
                                        major: '自動制御工学')
laboratory.teachers.create(name: '萩原 朋道', position: '教授')
laboratory.teachers.create(name: '細江 陽平', position: '講師')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻',
                                        major: 'システム創成論')
laboratory.teachers.create(name: '阪本 卓也', position: '教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻',
                                        major: '複合システム論')
laboratory.teachers.create(name: '土居 伸二', position: '教授')
laboratory.teachers.create(name: '田中 俊二', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻',
                                        major: '生体機能工学')
laboratory.teachers.create(name: '伊藤 陽介', position: '講師')
laboratory.teachers.create(name: '上田 博之', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻', major: '超伝導工学')
laboratory.teachers.create(name: '雨宮 尚之', position: '教授')
laboratory.teachers.create(name: '曽我部 友輔', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻',
                                        major: '電磁回路工学')
laboratory.teachers.create(name: '和田 修己', position: '教授')
laboratory.teachers.create(name: '久門 尚史', position: '准教授')
laboratory.teachers.create(name: 'イスラム マーフズル', position: '講師')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電気工学専攻',
                                        major: '電磁エネルギー工学')
laboratory.teachers.create(name: '松尾 哲司', position: '教授')
laboratory.teachers.create(name: '美舩 健', position: '講師')
laboratory.teachers.create(name: '比留間 真悟', position: '助教')
# 電子工学専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '集積機能工学')
laboratory.teachers.create(name: '掛谷 一弘', position: '准教授')
laboratory.teachers.create(name: '後藤 康仁', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '極微電子工学')
laboratory.teachers.create(name: '白石 誠司', position: '教授')
laboratory.teachers.create(name: '安藤 裕一郎', position: '准教授')
laboratory.teachers.create(name: '大島 諒', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '応用量子物性')
laboratory.teachers.create(name: '竹内 繁樹', position: '教授')
laboratory.teachers.create(name: '岡本 亮', position: '准教授')
laboratory.teachers.create(name: '衞藤 雄二郎', position: '准教授')
laboratory.teachers.create(name: '高島 秀聡', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '半導体物性工学')
laboratory.teachers.create(name: '木本 恒暢', position: '教授')
laboratory.teachers.create(name: '金子 光顕', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '電子材料物性工学')
laboratory.teachers.create(name: '小林 圭', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '光材料物性工学')
laboratory.teachers.create(name: '川上 養一', position: '教授')
laboratory.teachers.create(name: '船戸 充', position: '准教授')
laboratory.teachers.create(name: '石井 良太', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '光量子電子工学')
laboratory.teachers.create(name: '野田 進', position: '教授')
laboratory.teachers.create(name: '浅野 卓', position: '准教授')
laboratory.teachers.create(name: '吉田 昌宏', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '電子工学専攻',
                                        major: '量子電磁工学')
laboratory.teachers.create(name: '杉山 和彦', position: '准教授')
laboratory.teachers.create(name: '中西 俊博', position: '講師')
# 光・電子理工学教育研究センター
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院工学研究科', field: '光・電子理工学教育研究センター',
                                        major: 'ナノプロセス工学')
laboratory.teachers.create(name: 'Menaka De Zoysa', position: '講師')
laboratory.teachers.create(name: '井上 卓也', position: '助教')

# 情報学研究科
# 知能情報学専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '知能情報学専攻',
                                        major: '言語メディア')
laboratory.teachers.create(name: '黒橋 禎夫', position: '教授')
laboratory.teachers.create(name: '村脇 有吾', position: '講師')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '知能情報学専攻',
                                        major: 'コンピュータビジョン')
laboratory.teachers.create(name: '西野 恒', position: '教授')
laboratory.teachers.create(name: '延原 章平', position: '准教授')
laboratory.teachers.create(name: 'Marc A. Kastner', position: '助教')
# 通信情報システム専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '通信情報システム専攻',
                                        major: 'ディジタル通信')
laboratory.teachers.create(name: '原田 博司', position: '教授')
laboratory.teachers.create(name: '水谷 圭一', position: '准教授')
laboratory.teachers.create(name: '香田 優介', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '通信情報システム専攻',
                                        major: '伝送メディア')
laboratory.teachers.create(name: '山本 高至', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '通信情報システム専攻',
                                        major: '知的通信網')
laboratory.teachers.create(name: '大木 英司', position: '教授')
laboratory.teachers.create(name: '佐藤 丈博', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '通信システム専攻',
                                        major: '情報回路方式')
laboratory.teachers.create(name: '佐藤 高史', position: '教授')
laboratory.teachers.create(name: '粟野 俊', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '通信システム専攻',
                                        major: '大規模集積回路')
laboratory.teachers.create(name: '新津 葵一', position: '教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: '通信システム専攻',
                                        major: '超高速信号処理')
laboratory.teachers.create(name: '橋本 昌宜', position: '教授')
laboratory.teachers.create(name: '白井 僚', position: '助教')
# システム科学専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: 'システム科学専攻',
                                        major: '論理生命学')
laboratory.teachers.create(name: '石井 信', position: '教授')
laboratory.teachers.create(name: '島﨑 秀昭', position: '准教授')
laboratory.teachers.create(name: '東 広志', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院情報学研究科', field: 'システム科学専攻',
                                        major: '医用工学')
laboratory.teachers.create(name: '今井 宏彦', position: '助教')

# 大学院エネルギー科学研究科
# エネルギー社会・環境科学専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院エネルギー科学研究科', field: 'エネルギー社会・環境科学専攻',
                                        major: 'エネルギー情報学')
laboratory.teachers.create(name: '下田 宏', position: '教授')
laboratory.teachers.create(name: '石井 裕剛', position: '准教授')
laboratory.teachers.create(name: '上田 樹美', position: '助教')
# エネルギー基礎科学専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院エネルギー科学研究科', field: 'エネルギー基礎科学専攻',
                                        major: '電磁エネルギー学')
laboratory.teachers.create(name: '中村 祐司', position: '教授')
laboratory.teachers.create(name: '石澤 明宏', position: '准教授')
# エネルギ-応用科学専攻
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院エネルギー科学研究科', field: 'エネルギー応用科学専攻',
                                        major: 'エネルギー材料学')
laboratory.teachers.create(name: '土井 俊哉', position: '教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '大学院エネルギー科学研究科', field: 'エネルギー応用科学専攻',
                                        major: 'プロセスエネルギー学')
laboratory.teachers.create(name: '白井 康之', position: '教授')
laboratory.teachers.create(name: '川山 巌', position: '准教授')

# 関連研究所/センター等
# 生存圏研究所
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: '生存圏研究所',
                                        major: 'リモートセンシング工学')
laboratory.teachers.create(name: '山本 衛', position: '教授')
laboratory.teachers.create(name: '横山 竜宏', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: '生存圏研究所',
                                        major: '地球大気計測')
laboratory.teachers.create(name: '橋口 浩之', position: '教授')
laboratory.teachers.create(name: '西村 耕司', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: '生存圏研究所',
                                        major: '宇宙電波工学')
laboratory.teachers.create(name: '小嶋 浩嗣', position: '教授')
laboratory.teachers.create(name: '栗田 怜', position: '准教授')
laboratory.teachers.create(name: '上田 義勝', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: '生存圏研究所',
                                        major: 'マイクロ波エネルギー伝送')
laboratory.teachers.create(name: '篠原 真毅', position: '教授')
laboratory.teachers.create(name: '三谷 友彦', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: '生存圏研究所',
                                        major: '電波科学シミュレーション')
laboratory.teachers.create(name: '大村 善治', position: '教授')
laboratory.teachers.create(name: '海老原 祐輔', position: '准教授')
# エネルギー理工学研究所
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: 'エネルギー理工学研究所',
                                        major: 'プラズマエネルギー変換')
laboratory.teachers.create(name: '長﨑 百伸', position: '教授')
laboratory.teachers.create(name: '小林 進二', position: '准教授')
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: 'エネルギー理工学研究所',
                                        major: '高温プラズマ物性')
laboratory.teachers.create(name: '稲垣 滋', position: '教授')
laboratory.teachers.create(name: '南 貴司', position: '准教授')
laboratory.teachers.create(name: '門 信一郎', position: '准教授')
laboratory.teachers.create(name: '大島 慎介', position: '助教')
laboratory.teachers.create(name: '金 史良', position: '助教')
laboratory = survey.laboratories.create(university: '京都大学', department: '関連研究所/センター等', field: 'エネルギー理工学研究所',
                                        major: 'エネルギー光物性')
laboratory.teachers.create(name: '松田 一成', position: '教授')
laboratory.teachers.create(name: '篠北 啓介', position: '助教')
