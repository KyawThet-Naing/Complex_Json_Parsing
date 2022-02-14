class ExamModel {
  TimeModel? time;
  ScoreModel? score;
  MalayModel? malay;
  MyanmarModel? myanmar;
  EndModel? end;
  StatusModel? status;
  ExtraExplain? extraExplain;
  String? explain, id, matchId, created;
  bool? isHome;
  HomeModel? home;
  AwayModel? away;
  LeagueModel? league;

  ExamModel.fromJson(Map<String, dynamic> json) {
    time = TimeModel.fromJson(json['time']);
    score = ScoreModel.fromJson(json['score']);
    malay = MalayModel.fromJson(json['malay']);
    myanmar = MyanmarModel.fromJson(json['myanmar']);
    end = EndModel.fromJson(json['end']);
    status = StatusModel.fromJson(json['status']);
    extraExplain = ExtraExplain.fromJson(json['extraExplain']);
    home = HomeModel.fromJson(json['home']);
    away = AwayModel.fromJson(json['away']);
    league = LeagueModel.fromJson(json['league']);
    explain = json['explain'];
    id = json['_id'];
    created = json['created'];
    isHome = json['is_home'];
    matchId = json['matchId'];
  }
}

class TimeModel {
  String? matchTime;
  String? halfStartTime;
  String? running;
  String? extra;
  num? status;

  TimeModel.fromJson(Map<String, dynamic> json) {
    matchTime = json['matchTime'];
    halfStartTime = json['halfStartTime'];
    running = json['running'];
    extra = json['extra'];
    status = json['status'];
  }
}

class FullModel {
  num? home;
  num? away;

  FullModel.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    away = json['away'];
  }
}

class HalfModel {
  num? home;
  num? away;

  HalfModel.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    away = json['away'];
  }
}

class OddModel {
  String? show;
  num? goal;
  num? percent;

  OddModel.fromJson(Map<String, dynamic> json) {
    show = json['show'];
    goal = json['goal'];
    percent = json['percent'];
  }
}

class ScoreModel {
  FullModel? full;
  HalfModel? half;

  ScoreModel.fromJson(Map<String, dynamic> json) {
    full = FullModel.fromJson(json['full']);
    half = HalfModel.fromJson(json['half']);
  }
}

class MalayHdpModel {
  OddModel? odd;
  num? home;
  num? away;
  String? changeTime;
  bool? close;
  bool? active;
  num? oddType;

  MalayHdpModel.fromJson(Map<String, dynamic> json) {
    odd = OddModel.fromJson(json['odd']);
    home = json['home'];
    away = json['away'];
    changeTime = json['changeTime'];
    close = json['close'];
    active = json['active'];
    oddType = json['oddType'];
  }
}

class MalayOuModel {
  OddModel? odd;
  num? over;
  num? under;
  String? changeTime;
  bool? close;
  bool? active;
  num? oddType;

  MalayOuModel.fromJson(Map<String, dynamic> json) {
    odd = OddModel.fromJson(json['odd']);
    over = json['over'];
    under = json['under'];
    changeTime = json['changeTime'];
    close = json['close'];
    active = json['active'];
    oddType = json['oddType'];
  }
}

class MalayModel {
  MalayHdpModel? hdp;
  MalayOuModel? ou;

  MalayModel.fromJson(Map<String, dynamic> json) {
    hdp = MalayHdpModel.fromJson(json['hdp']);
    ou = MalayOuModel.fromJson(json['ou']);
  }
}

class MyanmarHdpModel {
  OddModel? odd;
  num? home;
  num? away;

  num? oddType;

  MyanmarHdpModel.fromJson(Map<String, dynamic> json) {
    odd = OddModel.fromJson(json['odd']);
    home = json['home'];
    away = json['away'];
    oddType = json['oddType'];
  }
}

class MyanmarOuModel {
  OddModel? odd;
  num? over;
  num? under;
  num? oddType;

  MyanmarOuModel.fromJson(Map<String, dynamic> json) {
    odd = OddModel.fromJson(json['odd']);
    over = json['over'];
    under = json['under'];
    oddType = json['oddType'];
  }
}

class MyanmarModel {
  MyanmarHdpModel? hdp;
  MyanmarOuModel? ou;

  MyanmarModel.fromJson(Map<String, dynamic> json) {
    hdp = MyanmarHdpModel.fromJson(json['hdp']);
    ou = MyanmarOuModel.fromJson(json['ou']);
  }
}

class EndModel {
  dynamic date;
  bool? active, calculate;

  EndModel.fromJson(Map<String, dynamic> json) {
    date = json['date'];
    active = json['active'];
    calculate = json['calculate'];
  }
}

class RedModel {
  num? home;
  num? away;

  RedModel.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    away = json['away'];
  }
}

class YellowModel {
  num? home;
  num? away;

  YellowModel.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    away = json['away'];
  }
}

class CornerModel {
  num? home;
  num? away;

  CornerModel.fromJson(Map<String, dynamic> json) {
    home = json['home'];
    away = json['away'];
  }
}

class StatusModel {
  RedModel? red;
  YellowModel? yellow;
  CornerModel? corner;
  bool? maintenance, inPlay, neutral, delete, hasLineup;

  StatusModel.fromJson(Map<String, dynamic> json) {
    red = RedModel.fromJson(json['red']);
    yellow = YellowModel.fromJson(json['yellow']);
    corner = CornerModel.fromJson(json['corner']);
    maintenance = json['maintenance'];
    inPlay = json['inPlay'];
    neutral = json['neutral'];
    delete = json['delete'];
    hasLineup = json['hasLineup'];
  }
}

class ExtraExplain {
  num? kickOff,
      minute,
      awayScore,
      extraTimeStatus,
      extraHomeScore,
      extraAwayScore,
      penHomeScore,
      penAwayScore,
      twoRoundsHomeScore,
      twoRoundsAwayScore,
      winner;

  ExtraExplain.fromJson(Map<String, dynamic> json) {
    kickOff = json['kickOff'];
    minute = json['minute'];
    awayScore = json['awayScore'];
    extraTimeStatus = json['extraTimeStatus'];
    extraHomeScore = json['extraHomeScore'];
    extraAwayScore = json['extraAwayScore'];
    penHomeScore = json['penHomeScore'];
    penAwayScore = json['penAwayScore'];
    twoRoundsHomeScore = json['twoRoundsHomeScore'];
    twoRoundsAwayScore = json['twoRoundsAwayScore'];
    winner = json['winner'];
  }
}

class HomeModel {
  num? teamId;
  String? id,
      leagueId,
      realName,
      name,
      mmName,
      logo,
      address,
      area,
      venue,
      capacity,
      coach,
      website;

  HomeModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    teamId = json['teamId'];
    leagueId = json['leagueId'];
    realName = json['realName'];
    name = json['name'];
    mmName = json['mmName'];
    logo = json['logo'];
    address = json['address'];
    area = json['area'];
    venue = json['venue'];
    capacity = json['capacity'];
    coach = json['coach'];
    website = json['website'];
  }
}

class AwayModel {
  num? teamId;
  String? id,
      leagueId,
      realName,
      name,
      mmName,
      logo,
      address,
      area,
      venue,
      capacity,
      coach,
      website;

  AwayModel.fromJson(Map<String, dynamic> json) {
    id = json['_id'];
    teamId = json['teamId'];
    leagueId = json['leagueId'];
    realName = json['realName'];
    name = json['name'];
    mmName = json['mmName'];
    logo = json['logo'];
    address = json['address'];
    area = json['area'];
    venue = json['venue'];
    capacity = json['capacity'];
    coach = json['coach'];
    website = json['website'];
  }
}

class LeagueModel {
  num? leagueId, type, totalRound, currentRound, countryId, areaId;
  String? id, name, mmName, shortName, subLeagueName, currentSeason, logo;

  LeagueModel.fromJson(Map<String, dynamic> json) {
    leagueId = json['leagueId'];
    type = json['type'];
    totalRound = json['totalRound'];
    currentRound = json['currentRound'];
    countryId = json['countryId'];
    areaId = json['areaId'];
    id = json['_id'];
    name = json['name'];
    mmName = json['mmName'];
    shortName = json['shortName'];
    subLeagueName = json['subLeagueName'];
    currentSeason = json['currentSeason'];
    logo = json['logo'];
  }
}
