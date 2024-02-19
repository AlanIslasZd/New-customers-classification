WITH Tix AS (
SELECT
ticket_id,
instance_account_id,
created_at_date
FROM
`edw-prod-153420.adv_data_domain__prototype.tickets`
WHERE ticket_id
IN (11710927,
11745112,
11775238,
11770836,
11770436,
11747414,
11765522,
11769546,
11742262,
11752496,
11771301,
11768249,
11750558,
11768631,
11770916,
11771990,
11744251,
11730093,
11769693,
11761469,
11778975,
11777407,
11748130,
11744031,
11780808,
11776100,
11752266,
11758024,
11729649,
11730268,
11780405,
11757852,
11767764,
11764342,
11778334,
11767958,
11788935,
11761976,
11754099,
11780897,
11767484,
11788747,
11788388,
11767394,
11789181,
11791127,
11793832,
11785070,
11793693,
11772494,
11730282,
11796079,
11696344,
11794325,
11794040,
11792340,
11792245,
11796810,
11780318,
11757674,
11761540,
11797141,
11794189,
11782547,
11798876,
11673223,
11788810,
11798132,
11798307,
11807823,
11792616,
11789869,
11791108,
11792035,
11807952,
11788802,
11807451,
11812958,
11813290,
11813470,
11808396,
11791651,
11816525,
11767067,
11790166,
11815218,
11808275,
11813636,
11773701,
11814255,
11812901,
11794400,
11776618,
11813162,
11789454,
11820738,
11821755,
11818077,
11804470,
11817541,
11435133,
11820129,
11802353,
11802782,
11792428,
11798589,
11776325,
11804478,
11822212,
11778874,
11730007,
11794796,
11807990,
11817637,
11806062,
11827870,
11829324,
11829553,
11808522,
11830331,
11819671,
11801953,
11787760,
11822546,
11828441,
11832992,
11833087,
11833590,
11819018,
11816412,
11808482,
11834949,
11734498,
11768813,
11836493,
11836697,
11809661,
11821802,
11836088,
11781659,
11795328,
11839519,
11836870,
11836998,
11837254,
11840589,
11774420,
11842103,
11804293,
11842296,
11842409,
11842972,
11832169,
11842956,
11834951,
11829971,
11814011,
11840538,
11843698,
11844664,
11845608,
11827273,
11822143,
11822918,
11808444,
11821869,
11844539,
11834786,
11845468,
11825012,
11841223,
11849265,
11849213,
11833855,
11817534,
11814324,
11844475,
11817136,
11844451,
11849964,
11850093,
11836869,
11844159,
11828149,
11845646,
11831498,
11841584,
11849127,
11847565,
11754071,
11851120,
11836495,
11844596,
11815572,
11838968,
11857566,
11843215,
11841515,
11858553,
11858911,
11856224,
11825934,
11842907,
11859284,
11854715,
11855616,
11856033,
11857832,
11861767,
11857847,
11838266,
11858292,
11862040,
11859268,
11847587,
11859124,
11851022,
11865071,
11808531,
11861435,
11862675,
11845640,
11862308,
11812608,
11851427,
11843138,
11854463,
11867763,
11856742,
11868437,
11868925,
11861674,
11870256,
11858193,
11868641,
11871008,
11862836,
11871396,
11868776,
11853726,
11874260,
11867300,
11869622,
11870369,
11836845,
11875428,
11866348,
11875623,
11870572,
11838779,
11876687,
11851960,
11871970,
11866060,
11862346,
11857711,
11874452,
11879169,
11878889,
11876636,
11876742,
11855050,
11880394,
11880172,
11882264,
11859534,
11749321,
11876269,
11884121,
11882849,
11879074,
11860557,
11876584,
11884378,
11885860,
11881421,
11858265,
11883584,
11887575,
11866463,
11873005,
11887025,
11868046,
11890196,
11860335,
11870718,
11891245,
11855685,
11884493,
11887802,
11865271,
11880447,
11889744,
11889680,
11897451,
11895245,
11835290,
11887272,
11899848,
11899928,
11870849,
11901376,
11872504,
11896455,
11859793,
11897376,
11903103,
11898226,
11899723,
11904753,
11898661,
11905481,
11900777,
11901688,
11883030,
11876236,
11906926,
11907606,
11903422,
11844447,
11908173,
11874794,
11906912,
11901286,
11907594,
11906155,
11880832,
11914166,
11902985,
11884770,
11907629,
11916133,
11905905,
11909677,
11902550,
11863249,
11922372,
11912310,
11930827,
11930967,
11886010,
11918175,
11931891,
11930107,
11921579,
11935193,
11894444,
11936862,
11933413,
11935332,
11839502,
11940085,
11933480,
11911903,
11901304,
11932397,
11902059,
11933416,
11932727,
11944885,
11938604,
11933293,
11914413,
11940787,
11911328,
11947370,
11917815,
11948626,
11942959,
11940018,
11884349,
11937580,
11946766,
11891128,
11915551,
11884467,
11916239,
11877862,
11935171,
11950706,
11930560,
11904625,
11925234,
11913807,
11937525,
11839323,
11948506,
11876061,
11946722,
11914764,
11959620,
11938705,
11962466,
11941937,
11967115,
11948563,
11963948,
11964155,
11950753,
11964339,
11902713,
11971461,
11971980,
11972627,
11972803,
11970428,
11965388,
11944522,
11953377,
11901989,
11896728,
11893926,
11951173,
11971587,
11964604,
11970508,
11975533,
11974455,
11941067,
11909233,
11981696,
11981621,
11981915,
11960447,
11983102,
11983494,
11976103,
11980372,
11970104,
11980388,
11944211,
11985755,
11981090,
11961350,
11968277,
11985858,
11938873,
11983132,
11982904,
11951670,
11965148,
11976732,
11990288,
11972589,
11961737,
11991437,
11940550,
11984969,
11986814,
11993141,
11994080,
11994439,
11976552,
11994500,
11958437,
11989607,
11967690,
11972058,
11969729,
11964901,
11984980,
11981562,
11969364,
11958473,
11939842,
11980248,
11997291,
11973855,
11973000,
11969726,
11996327,
11974820,
11980301,
11980711,
12004805,
11988212,
11995048,
11997601,
12003171,
12002229,
11988002,
11996760,
11990417,
11990860,
12009237,
11991217,
11991861,
11989443,
11971059,
12011292,
11990223,
11986034,
12006638,
11991770,
12009997,
12003714,
12009178,
12014834,
11970184,
12009337,
12015602,
12015792,
12015213,
11998623,
12004492,
11992981,
12011289,
11976160,
12018045,
11959883,
12015987,
12019283,
12012169,
12019319,
11976104,
11994142,
12005241,
12020772,
11974895,
12021975,
12004783,
12018227,
12002192,
11997055,
12019214,
12004963,
12009408,
12020384,
12019763,
12010668,
12024233,
12006395,
12019214,
12004891,
12022802,
12023599,
12026086,
12010291,
12002629,
11999803,
12001278,
11947571,
12000983,
11950928,
12028601,
12024696,
12029437,
12012558,
12026644,
12031192,
12027554,
12027018,
12031385,
12001876,
12010682,
12014061,
12003736,
12030257,
12033787,
12008133,
12034239,
12030519,
12020650,
11996790,
12002401,
12013618,
12005278,
12037442,
12029483,
12012690,
12021031,
11994195,
12034317,
12041555,
12041276,
12037660,
12025324,
12018304,
12024288,
12034365,
12042165,
12027082,
12041318,
12042006,
12041465,
12044835,
12043643,
12044379,
12048245,
12027579,
12045711,
12031152,
12029446,
12046786,
12005730,
12024683,
12045793,
12049398,
12012124,
12025684,
12050160,
12051494,
12053177,
12034579,
12041605,
12047692,
12048956,
12021412,
12054946,
12058923,
12059304,
12035834,
12031276,
12063746,
12060342,
12024835,
12058742,
12042323,
12049153,
12060551,
12061765,
12048442,
12065349,
12060670,
12047555,
12059429,
12062005,
12065938,
12066293,
12044679,
12063112,
12063974,
12066359,
11991761,
12043446,
12061853,
12068850,
12049376,
12048254,
12067480,
12067284,
12040585,
12066124,
12059956,
12055038,
12051942,
12066324,
12066198,
12048669,
12072003,
12062412,
12041892,
12068612,
12066700,
12063806,
12066727,
12072429,
12070526,
12016217,
12061960,
12060156,
12073229,
12061237,
12067541,
12068803,
12074989,
12075244,
12072251,
12069837,
12058542,
12059501,
12076173,
12045650,
12049309,
12063180,
12076698,
12054564,
12073584,
12060515,
12069049,
12077020,
12064290,
12080262,
12064800,
12076138,
12027784,
12080685,
11917082,
11996425,
12076480,
12042963,
12069653,
12075061,
12079491,
12075960,
12072563,
12080953,
12077038,
12067431,
12069311,
12085770,
12045911,
12082608,
12082945,
12075998,
12069111,
12081854,
12066527,
12076470,
12070379,
12072760,
12067197,
12080607,
12070448,
12090751,
12069489,
12080494,
12088896,
12077066,
12086302,
12088227,
12062932,
12077078,
12058682,
12081062,
12096920,
12074781,
12098161,
12072450,
12086718,
12098565,
12095765,
12099571,
12076061,
12100205,
12074022,
12095961,
11991891,
12097187,
12077080,
12101227,
12098063,
12078526,
12083960,
12066393,
12102929,
12097134,
12103163,
12100506,
12103784,
12084387,
12050927,
12045838,
12096380,
12100857,
12101748,
12082722,
12083264,
12086686,
12100922,
12090290,
12101102,
12075552,
12101484,
12099948,
12088796,
12088709,
12090277,
12086306,
12093912,
12103948,
12081981,
12099662,
12105373,
12104928,
12110064,
12110488,
12097011,
12072708,
12101727,
12091550,
12111885,
12104928,
12102974,
12105670,
12108712,
12101022,
12089459,
12108844,
12095037,
12103461,
12075142,
12098707,
12080621,
12088378,
12108691,
12114350,
12101033,
12056960,
12111732,
11891233,
12116162,
12113959,
12103318,
12117395,
12114167,
12095994,
12106486,
12097536,
12104524,
12101375,
12101886,
12101422,
12098186,
12120405,
12121180,
12121625,
12121573,
12122043,
12118663,
12094228,
12115078,
12121607,
12122568,
12121528,
12118784,
12085477,
12111215,
12112951,
12090897,
12101131,
12109743,
12114595,
12123252,
12105297,
12122766,
12122361,
12122830,
12122830,
12126145,
12121157,
12121064,
12121755,
12120584,
12122149,
12100562,
12109985,
12128199,
12128161,
12128347,
12119475,
12128835,
12131950,
12118433,
12123019,
12107153,
12133710,
12133176,
12111472,
12131463,
12131146,
12046810,
12135016,
12135120,
12107039,
12121181,
12124032,
12111497,
12135682,
12136214,
12137439,
12133604,
12081112,
12131740,
12122714,
12050009,
12120560,
12127903,
12138266,
12138723,
12096548,
12085204,
12125564,
12139543,
12133827,
12139850,
12137329,
12139656,
12141369,
12144210,
12123999,
12135759,
12138775,
12118390,
12127781,
12144807,
12130774,
12137161,
12118065,
12146373,
12108800,
12144423,
12143910,
12147357,
12147475,
12078806,
12126832,
12122426,
12131887,
12132044,
12136449,
12144645,
12128709,
12123811,
12101708,
12112724,
12139187,
12147250,
12154275,
12135279,
12137006,
12155745,
12119568,
12157075,
12120511,
12154955,
12124849,
12158456,
12158599,
12134363,
12158631,
12158547,
12155928,
12158426,
12143753,
12158156,
12156298,
12140340,
12149392,
12160334,
12155889,
12124386,
12134891,
12148564,
12145404,
12148963,
12146678,
12146030,
12158375,
12159030,
12139721,
12163597,
12139794,
12145609,
12139072,
12165220,
12148179,
12158643,
12156106,
12163629,
12167029,
12140784,
12167411,
12147174,
12139314,
12155985,
12137433,
12164934,
12117414,
12154518,
12154117,
12170606,
12146715,
12165265,
12166104,
12171204,
12131055,
12173568,
12173579,
12170246,
12173912,
12174465,
12169979,
12080161,
12170185,
12175057,
12166309,
12156931,
12143956,
12158680,
12133513,
12178707,
12175781,
12175342,
12170847,
12169655,
12179653,
12164503,
12150577,
12161075,
12159230,
12167489,
12179612,
12176067,
12116057,
12175531,
12150110,
12160494,
12183436,
12171691,
12164809,
12170509,
12166110,
12185603,
12185148,
12183778,
12185390,
12185424,
12175345,
12133736,
12164597,
12184578,
12186718,
12179630,
12176250,
12174834,
12137396,
12185251,
12143806,
12174962,
12190138,
12179796,
12146034,
12188913,
12196031,
12174148,
12164792,
12197269,
12178871,
12128095,
12173554,
12173502,
12199925,
12177101,
12184470,
12147878,
12181972,
12201297,
12195600,
12194107,
12195507,
12167997,
12198298,
12150094,
12198088,
12184300,
12028798,
12200673,
12149463,
12203597,
12203859,
12204338,
12183608,
12195627,
12183131,
12171063,
12202181,
12195797,
12190827,
12187692,
12206506,
12203175,
12055200,
12170300,
12189981,
12202683,
12202797,
12196152,
12210502,
12211557,
12202870,
12212497,
12212039,
12214600,
12212822,
12201199,
12217435,
12202766,
12200807,
12187965,
12199418,
12216787,
12222314,
12221187,
12210872,
12200580,
12223855,
12200957,
12190831,
12202280,
12224331,
12184414,
12164610,
12195769,
12215337,
12226512,
12214092,
12198030,
12179846,
12202823,
12184713,
12186213,
12201529,
12225350,
12224186,
12227924,
12228114,
12187165,
12224802,
12206486,
12213298,
12212312,
12224034,
12136839,
12228064,
12181461,
12232399,
12232911,
12230835,
12232758,
12216870,
12208313,
12219739,
12227535,
12234068,
12231894,
12234491,
12208363,
12234631,
12232170,
12220177,
12228189,
12236862,
12224201,
12224662,
12223895,
12237698,
12179907,
12230662,
12238445,
12225217,
12224761,
12239648,
12226415,
12226572,
12237833,
12229014,
12195127,
12224342,
12186840,
12225962,
12233605,
12238277,
12238441,
12243307,
12243261,
12216584,
12238916,
12242042,
12238424,
12231139,
12239296,
12228808,
12239538,
12229286,
12245970,
12211773,
12246495,
12240756,
12230306,
12246709,
12236783,
12230724,
12247904,
12242130,
12234125,
12233532,
12231614,
12250186,
12228088,
12243717,
12227036,
12241052,
12235316,
12233838,
12230629,
12226700,
12237290,
12232247,
12249857,
12247785,
12252550,
12251791,
12238492,
12253820,
12253852,
12253900,
12232254,
12230880,
12243442,
12240333,
12227657,
12234721,
12240905,
12228668,
12256078,
12238718,
12220119,
12252464,
12225130,
12259944,
12239641,
12260622,
12260628,
12259008,
12258238,
12243148,
12242947,
12241295,
12257341,
12262956,
12255594,
12245059,
12264563,
12264046,
12225518,
12243687,
12248353,
12244310,
12250611,
12259480,
12267588,
12241704,
12267800,
12268872,
12229138,
12264947,
12253301,
12235922,
12257647,
12236708,
12240956,
12271077,
12271412,
12252407,
12262961,
12245681,
12245037,
12256077,
12251254,
12244694,
12255093,
12257706,
12267180,
12267902,
12276174,
12258518,
12276398,
12276849,
12252844,
12258793,
12252537,
12250442,
12278002,
12278260,
12278467,
12272136,
12242276,
12187906,
12254441,
12258620,
12275094,
12280628,
12229682,
12252981,
12278453,
12278266,
12260238,
12258406,
12281105,
12248731,
12278661,
12267962,
12266379,
12284054,
12268065,
12256514,
12262251,
12282512,
12241990,
12268791,
12261751,
12264440,
12264012,
12261601,
12203473,
12269713,
12288173,
12289671,
12251685,
12264191,
12289930,
12290137,
12287697,
12287545,
12280342,
12291736,
12291110,
12242964,
12276644,
12263210,
12246419,
12269206,
12277252,
12242142,
12286247,
12170073,
12295063,
12270960,
12295415,
12251102,
12298253,
12291400,
12294888,
12279214,
12286383,
12286057,
12293619,
12286387,
12283000,
12252542,
12299219,
12294647,
12305815,
12298676,
12305922,
12287421,
12280672,
12262973,
12303778,
12264674,
12270987,
12265219,
12290845,
12292483,
12291658,
12309778)
)
----Tix shape is (3,1354)
SELECT a.ticket_id,
a.created_at_date,
a.instance_account_id,
b.crm_churn_dt,
b.crm_total_arr,
FROM `edw-prod-153420.adv_data_domain__prototype.customers` b
JOIN tix a
ON a.instance_account_id = b.instance_account_id
 AND a.created_at_date = b.run_at