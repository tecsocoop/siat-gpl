//Copyright (c) 2011 Municipalidad de Rosario and Coop. de Trabajo Tecso Ltda.
//This file is part of SIAT. SIAT is licensed under the terms
//of the GNU General Public License, version 3.
//See terms in COPYING file or <http://www.gnu.org/licenses/gpl.txt>

package ar.gov.rosario.siat.bal.buss.bean;

/**
 * Esta clase contiene la lista de codigos de referencia de pagos para transacciones de Servicio Banco 85 emitidas entre del 14/09/2009  al 18/09/2009 y para
 * las cuales se debe corregir el tipo de boleta (que llega en el campo clave de la transaccion).
 * 
 * La lista se guarda en un string con los codRegPag separados por coma.
 * 
 * (TODO eliminar esta clase luego de que se hayan procesado en balance los dias de banco anteriores al 01/10/2009)
 *
 */
public class BalanceHelper {

		public String listCodRefPag 
		= "1646242,1646243,1646245,1646246,1646249,1646278,1646279,1646280,1646282,1646285,1646286,1646289,1646305,1646321,1646322,1646323,1646329,1646330,1646331,16463"+
		"34,1646335,1646349,1646350,1646351,1646352,1646353,1646354,1646356,1646359,1646362,1646372,1646380,1646382,1646385,1646390,1646392,1646400,1646403,1646404,16"+
		"46406,1646413,1646414,1646415,1646420,1646425,1646428,1646429,1646434,1646436,1646439,1646440,1646441,1646442,1646446,1646451,1646456,1646457,1646459,1646461"+
		",1646464,1646466,1646469,1646470,1646471,1646472,1646473,1646474,1646475,1646476,1646477,1646478,1646479,1646480,1646481,1646482,1646483,1646484,1646485,1646"+
		"486,1646487,1646488,1646489,1646490,1646491,1646492,1646493,1646494,1646495,1646496,1646497,1646498,1646499,1646500,1646501,1646502,1646503,1646504,1646505,1"+
		"646506,1646507,1646508,1646509,1646510,1646511,1646512,1646513,1646514,1646515,1646516,1646517,1646518,1646519,1646520,1646521,1646522,1646523,1646524,164652"+
		"5,1646526,1646527,1646528,1646529,1646530,1646531,1646532,1646533,1646534,1646535,1646536,1646537,1646538,1646539,1646540,1646541,1646542,1646543,1646544,164"+
		"6545,1646546,1646547,1646548,1646549,1646550,1646551,1646552,1646553,1646554,1646555,1646556,1646557,1646558,1646559,1646560,1646561,1646562,1646563,1646564,"+
		"1646565,1646566,1646567,1646568,1646569,1646570,1646571,1646572,1646573,1646574,1646575,1646576,1646577,1646578,1646579,1646580,1646581,1646582,1646583,16465"+
		"84,1646585,1646586,1646587,1646588,1646589,1646590,1646591,1646592,1646593,1646594,1646595,1646596,1646597,1646598,1646599,1646600,1646601,1646602,1646603,16"+
		"46604,1646605,1646606,1646607,1646608,1646609,1646610,1646611,1646612,1646613,1646614,1646615,1646616,1646617,1646618,1646619,1646620,1646621,1646622,1646623"+
		",1646624,1646625,1646626,1646627,1646628,1646629,1646630,1646631,1646632,1646633,1646634,1646635,1646636,1646637,1646638,1646639,1646640,1646641,1646642,1646"+
		"643,1646644,1646645,1646646,1646647,1646648,1646649,1646650,1646651,1646652,1646653,1646654,1646655,1646656,1646657,1646658,1646659,1646660,1646661,1646662,1"+
		"646663,1646664,1646665,1646666,1646667,1646668,1646669,1646670,1646671,1646672,1646673,1646674,1646675,1646676,1646677,1646678,1646679,1646680,1646681,164668"+
		"2,1646683,1646684,1646685,1646686,1646687,1646688,1646689,1646690,1646691,1646692,1646693,1646694,1646695,1646696,1646697,1646698,1646699,1646700,1646701,164"+
		"6702,1646703,1646704,1646705,1646706,1646707,1646708,1646709,1646710,1646711,1646712,1646713,1646714,1646715,1646716,1646717,1646718,1646719,1646720,1646721,"+
		"1646722,1646723,1646724,1646725,1646726,1646727,1646728,1646729,1646730,1646731,1646732,1646733,1646734,1646735,1646736,1646737,1646738,1646739,1646740,16467"+
		"41,1646742,1646743,1646744,1646745,1646746,1646747,1646748,1646749,1646750,1646751,1646752,1646753,1646754,1646755,1646756,1646757,1646758,1646759,1646760,16"+
		"46761,1646762,1646763,1646764,1646765,1646766,1646767,1646768,1646769,1646770,1646771,1646772,1646773,1646774,1646775,1646776,1646777,1646778,1646779,1646780"+
		",1646781,1646782,1646783,1646784,1646785,1646786,1646787,1646788,1646789,1646790,1646791,1646792,1646793,1646794,1646795,1646796,1646797,1646798,1646799,1646"+
		"800,1646801,1646802,1646803,1646804,1646805,1646806,1646807,1646808,1646809,1646810,1646811,1646812,1646813,1646814,1646815,1646816,1646817,1646818,1646819,1"+
		"646820,1646821,1646822,1646823,1646824,1646825,1646826,1646827,1646828,1646829,1646830,1646831,1646832,1646833,1646834,1646835,1646836,1646837,1646838,164683"+
		"9,1646840,1646841,1646842,1646843,1646844,1646845,1646846,1646847,1646848,1646849,1646850,1646851,1646852,1646853,1646854,1646855,1646856,1646857,1646858,164"+
		"6859,1646860,1646861,1646862,1646863,1646864,1646865,1646866,1646867,1646868,1646869,1646870,1646871,1646872,1646873,1646874,1646875,1646876,1646877,1646878,"+
		"1646879,1646880,1646881,1646882,1646883,1646884,1646885,1646886,1646887,1646888,1646889,1646890,1646891,1646892,1646893,1646894,1646895,1646896,1646897,16468"+
		"98,1646899,1646900,1646901,1646902,1646903,1646904,1646905,1646906,1646907,1646908,1646909,1646910,1646911,1646912,1646913,1646914,1646915,1646916,1646917,16"+
		"46918,1646919,1646920,1646921,1646922,1646923,1646924,1646925,1646926,1646927,1646928,1646929,1646930,1646931,1646932,1646933,1646934,1646935,1646936,1646937"+
		",1646938,1646939,1646940,1646941,1646942,1646943,1646944,1646945,1646946,1646947,1646948,1646949,1646950,1646951,1646952,1646953,1646954,1646955,1646956,1646"+
		"957,1646958,1646959,1646960,1646961,1646962,1646963,1646964,1646965,1646966,1646967,1646968,1646969,1646970,1646971,1646972,1646973,1646974,1646975,1646976,1"+
		"646977,1646978,1646979,1646980,1646981,1646982,1646983,1646984,1646985,1646986,1646987,1646988,1646989,1646990,1646991,1646992,1646993,1646994,1646995,164699"+
		"6,1646997,1646998,1646999,1647000,1647001,1647002,1647003,1647004,1647005,1647006,1647007,1647008,1647009,1647010,1647011,1647012,1647013,1647014,1647015,164"+
		"7016,1647017,1647018,1647019,1647020,1647021,1647022,1647023,1647024,1647025,1647026,1647027,1647028,1647029,1647030,1647031,1647032,1647033,1647034,1647035,"+
		"1647036,1647037,1647038,1647039,1647040,1647041,1647042,1647043,1647044,1647045,1647046,1647047,1647048,1647049,1647050,1647051,1647052,1647053,1647054,16470"+
		"55,1647056,1647057,1647058,1647059,1647060,1647061,1647062,1647063,1647064,1647065,1647066,1647067,1647068,1647069,1647071,1647072,1647075,1647079,1647080,16"+
		"47082,1647083,1647084,1647088,1647092,1647093,1647119,1647122,1647123,1647126,1647129,1647131,1647132,1647133,1647134,1647137,1647162,1647164,1647165,1647166"+
		",1647167,1647171,1647184,1647185,1647186,1647189,1647190,1647192,1647193,1647195,1647196,1647197,1647225,1647226,1647227,1647228,1647229,1647230,1647231,1647"+
		"232,1647233,1647234,1647235,1647236,1647237,1647238,1647239,1647240,1647241,1647242,1647244,1647246,1647250,1647251,1647252,1647255,1647258,1647259,1647260,1"+
		"647261,1647262,1647263,1647264,1647265,1647271,1647272,1647273,1647275,1647276,1647277,1647278,1647279,1647280,1647281,1647282,1647284,1647285,1647286,164728"+
		"7,1647288,1647289,1647290,1647291,1647292,1647293,1647294,1647295,1647297,1647298,1647299,1647300,1647301,1647302,1647303,1647304,1647310,1647312,1647313,164"+
		"7314,1647316,1647315,1647317,1647318,1647319,1647320,1647349,1647350,1647351,1647352,1647353,1647354,1647355,1647357,1647359,1647362,1647363,1647364,1647365,"+
		"1647366,1647367,1647377,1647378,1647379,1647380,1647383,1647385,1647386,1647387,1647388,1647391,1647392,1647394,1647395,1647400,1647402,1647406,1647407,16474"+
		"08,1647411,1647412,1647414,1647415,1647416,1647418,1647420,1647422,1647423,1647425,1647424,1647447,1647449,1647450,1647451,1647452,1647453,1647454,1647455,16"+
		"47456,1647457,1647463,1647465,1647473,1647474,1647475,1647476,1647477,1647478,1647481,1647482,1647483,1647488,1647489,1647490,1647491,1647492,1647493,1647494"+
		",1647495,1647496,1647497,1647498,1647499,1647500,1647501,1647502,1647503,1647504,1647505,1647506,1647507,1647508,1647509,1647510,1647511,1647512,1647513,1647"+
		"514,1647515,1647516,1647517,1647518,1647519,1647520,1647521,1647522,1647523,1647524,1647525,1647526,1647527,1647528,1647529,1647530,1647531,1647532,1647533,1"+
		"647534,1647535,1647536,1647537,1647538,1647539,1647540,1647541,1647542,1647543,1647544,1647545,1647546,1647547,1647548,1647549,1647550,1647551,1647552,164755"+
		"3,1647554,1647555,1647556,1647557,1647558,1647559,1647560,1647561,1647562,1647563,1647564,1647565,1647566,1647567,1647568,1647569,1647570,1647571,1647572,164"+
		"7573,1647574,1647575,1647576,1647577,1647578,1647579,1647580,1647581,1647582,1647583,1647584,1647585,1647586,1647587,1647588,1647589,1647590,1647591,1647592,"+
		"1647593,1647594,1647595,1647596,1647597,1647598,1647599,1647600,1647601,1647602,1647603,1647604,1647605,1647606,1647607,1647608,1647609,1647610,1647611,16476"+
		"12,1647613,1647614,1647615,1647616,1647617,1647618,1647619,1647620,1647621,1647622,1647623,1647624,1647626,1647627,1647628,1647629,1647630,1647647,1647648,16"+
		"47650,1647666,1647667,1647668,1647670,1647672,1647680,1647682,1647683,1647684,1647685,1647687,1647688,1647691,1647692,1647693,1647694,1647695,1647699,1647700";
		
}