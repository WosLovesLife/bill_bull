/// ErrCode : 0
/// ErrMsg : null
/// Datas : T

class TtSearchResultResponse {
  int _ErrCode;
  dynamic _ErrMsg;
  List<TtSearchResult> _Datas;

  int get ErrCode => _ErrCode;
  dynamic get ErrMsg => _ErrMsg;
  List<TtSearchResult> get Datas => _Datas;

  TtSearchResultResponse(this._ErrCode, this._ErrMsg, this._Datas);

  TtSearchResultResponse.map(dynamic obj) {
    this._ErrCode = obj["ErrCode"];
    this._ErrMsg = obj["ErrMsg"];
    this._Datas = obj["Datas"].map<TtSearchResult>((result){
      return TtSearchResult.map(result);
    }).toList();
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["ErrCode"] = _ErrCode;
    map["ErrMsg"] = _ErrMsg;
    map["Datas"] = _Datas;
    return map;
  }
}

/// _id : "270002"
/// CODE : "270002"
/// NAME : "广发稳健增长混合"
/// JP : "GFWJZZHH"
/// CATEGORY : 700
/// CATEGORYDESC : "基金"
/// STOCKMARKET : ""
/// BACKCODE : ""
/// MatchCount : 1
/// FundBaseInfo : {"_id":"270002","DWJZ":1.5206,"FCODE":"270002","FSRQ":"2020-04-13","FTYPE":"混合型","FUNDTYPE":"002","ISBUY":"1","JJGS":"广发基金","JJGSBID":24,"JJGSID":"80000248","JJJL":"傅友兴","JJJLID":"30040221","MINSG":10,"NAVURL":"http://fund.eastmoney.com/HH_jzzzl.html#os_0;isall_0;ft_;pt_3","OTHERNAME":"广发稳健,广发稳健增长混合","SHORTNAME":"广发稳健增长混合"}
/// StockHolder : ""
/// ZTJJInfo : []

class TtSearchResult{
  String _Id;
  String _CODE;
  String _NAME;
  String _JP;
  int _CATEGORY;
  String _CATEGORYDESC;
  String _STOCKMARKET;
  String _BACKCODE;
  int _MatchCount;
  FundBaseInfoBean _FundBaseInfo;
  String _StockHolder;
  List<dynamic> _ZTJJInfo;

  String get Id => _Id;
  String get CODE => _CODE;
  String get NAME => _NAME;
  String get JP => _JP;
  int get CATEGORY => _CATEGORY;
  String get CATEGORYDESC => _CATEGORYDESC;
  String get STOCKMARKET => _STOCKMARKET;
  String get BACKCODE => _BACKCODE;
  int get MatchCount => _MatchCount;
  FundBaseInfoBean get FundBaseInfo => _FundBaseInfo;
  String get StockHolder => _StockHolder;
  List<dynamic> get ZTJJInfo => _ZTJJInfo;

  TtSearchResult(
      this._Id,
      this._CODE,
      this._NAME,
      this._JP,
      this._CATEGORY,
      this._CATEGORYDESC,
      this._STOCKMARKET,
      this._BACKCODE,
      this._MatchCount,
      this._FundBaseInfo,
      this._StockHolder,
      this._ZTJJInfo);

  TtSearchResult.map(dynamic obj) {
    this._Id = obj["Id"];
    this._CODE = obj["CODE"];
    this._NAME = obj["NAME"];
    this._JP = obj["JP"];
    this._CATEGORY = obj["CATEGORY"];
    this._CATEGORYDESC = obj["CATEGORYDESC"];
    this._STOCKMARKET = obj["STOCKMARKET"];
    this._BACKCODE = obj["BACKCODE"];
    this._MatchCount = obj["MatchCount"];
    this._FundBaseInfo = FundBaseInfoBean.map(obj["FundBaseInfo"]);
    this._StockHolder = obj["StockHolder"];
    this._ZTJJInfo = obj["ZTJJInfo"];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["Id"] = _Id;
    map["CODE"] = _CODE;
    map["NAME"] = _NAME;
    map["JP"] = _JP;
    map["CATEGORY"] = _CATEGORY;
    map["CATEGORYDESC"] = _CATEGORYDESC;
    map["STOCKMARKET"] = _STOCKMARKET;
    map["BACKCODE"] = _BACKCODE;
    map["MatchCount"] = _MatchCount;
    map["FundBaseInfo"] = _FundBaseInfo;
    map["StockHolder"] = _StockHolder;
    map["ZTJJInfo"] = _ZTJJInfo;
    return map;
  }
}

/// _id : "270002"
/// DWJZ : 1.5206
/// FCODE : "270002"
/// FSRQ : "2020-04-13"
/// FTYPE : "混合型"
/// FUNDTYPE : "002"
/// ISBUY : "1"
/// JJGS : "广发基金"
/// JJGSBID : 24
/// JJGSID : "80000248"
/// JJJL : "傅友兴"
/// JJJLID : "30040221"
/// MINSG : 10
/// NAVURL : "http://fund.eastmoney.com/HH_jzzzl.html#os_0;isall_0;ft_;pt_3"
/// OTHERNAME : "广发稳健,广发稳健增长混合"
/// SHORTNAME : "广发稳健增长混合"

class FundBaseInfoBean {
  String _Id;
  double _DWJZ;
  String _FCODE;
  String _FSRQ;
  String _FTYPE;
  String _FUNDTYPE;
  String _ISBUY;
  String _JJGS;
  double _JJGSBID;
  String _JJGSID;
  String _JJJL;
  String _JJJLID;
  double _MINSG;
  String _NAVURL;
  String _OTHERNAME;
  String _SHORTNAME;

  String get Id => _Id;
  double get DWJZ => _DWJZ;
  String get FCODE => _FCODE;
  String get FSRQ => _FSRQ;
  String get FTYPE => _FTYPE;
  String get FUNDTYPE => _FUNDTYPE;
  String get ISBUY => _ISBUY;
  String get JJGS => _JJGS;
  double get JJGSBID => _JJGSBID;
  String get JJGSID => _JJGSID;
  String get JJJL => _JJJL;
  String get JJJLID => _JJJLID;
  double get MINSG => _MINSG;
  String get NAVURL => _NAVURL;
  String get OTHERNAME => _OTHERNAME;
  String get SHORTNAME => _SHORTNAME;

  FundBaseInfoBean(
      this._Id,
      this._DWJZ,
      this._FCODE,
      this._FSRQ,
      this._FTYPE,
      this._FUNDTYPE,
      this._ISBUY,
      this._JJGS,
      this._JJGSBID,
      this._JJGSID,
      this._JJJL,
      this._JJJLID,
      this._MINSG,
      this._NAVURL,
      this._OTHERNAME,
      this._SHORTNAME);

  FundBaseInfoBean.map(dynamic obj) {
    this._Id = obj["Id"];
    this._DWJZ = obj["DWJZ"];
    this._FCODE = obj["FCODE"];
    this._FSRQ = obj["FSRQ"];
    this._FTYPE = obj["FTYPE"];
    this._FUNDTYPE = obj["FUNDTYPE"];
    this._ISBUY = obj["ISBUY"];
    this._JJGS = obj["JJGS"];
    this._JJGSBID = obj["JJGSBID"];
    this._JJGSID = obj["JJGSID"];
    this._JJJL = obj["JJJL"];
    this._JJJLID = obj["JJJLID"];
    this._MINSG = obj["MINSG"];
    this._NAVURL = obj["NAVURL"];
    this._OTHERNAME = obj["OTHERNAME"];
    this._SHORTNAME = obj["SHORTNAME"];
  }

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["Id"] = _Id;
    map["DWJZ"] = _DWJZ;
    map["FCODE"] = _FCODE;
    map["FSRQ"] = _FSRQ;
    map["FTYPE"] = _FTYPE;
    map["FUNDTYPE"] = _FUNDTYPE;
    map["ISBUY"] = _ISBUY;
    map["JJGS"] = _JJGS;
    map["JJGSBID"] = _JJGSBID;
    map["JJGSID"] = _JJGSID;
    map["JJJL"] = _JJJL;
    map["JJJLID"] = _JJJLID;
    map["MINSG"] = _MINSG;
    map["NAVURL"] = _NAVURL;
    map["OTHERNAME"] = _OTHERNAME;
    map["SHORTNAME"] = _SHORTNAME;
    return map;
  }
}
