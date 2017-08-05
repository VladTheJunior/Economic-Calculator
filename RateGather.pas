unit RateGather;
{$WEAKLINKRTTI ON}
{$RTTI EXPLICIT METHODS([]) PROPERTIES([]) FIELDS([])}
interface

uses
  System.Math;

type

TShip = record
  rFish: Extended;
  rWhale: Extended;
end;

TRate = record
  rHuntable: Extended;
  rHerdable: Extended;
  rMill: Extended;
  rBerryBush: Extended;
  rFarm: Extended;
  rRicePaddyFood: Extended;

  rTree: Extended;

  rMine: Extended;
  rRicePaddyGold: Extended;
  rPlantation: Extended;
end;

TShrine = record
  rFood: Extended;
  rWood: Extended;
  rGold: Extended;
end;

TShipGather = class
  private
    FShipRate: TShip;
    FShipChange: TShip;

    FIndex: Integer;

    FSetFishMarket: Boolean;
    FSetFishMarket2: Boolean;
    FSetRenderingPlant: Boolean;

    FSetPeaceTimeFishing: Boolean;

    FSetWhaleOil: Boolean;

    FSetGillNets: Boolean;
    FSetLongLines: Boolean;

    FSetEconomicTheory: Boolean;
    FSetFishMarketTeam: Boolean;

    FSetHuronFishWedding: Boolean;
    FSetNavajoCraftsmanship: Boolean;
    FSetChonindoTeam: Boolean;

    FSetExcessiveTribute: Boolean;
    FSetExcessiveTaxacation: Boolean;
    FSetCollectiveEconomy: Boolean;

    FSetConsulateFrench: Boolean;

    procedure Inc(var X: Extended; const Y: Extended);
    procedure Dec(var X: Extended; const Y: Extended);

    function CalcFish: Extended;
    function CalcWhale: Extended;
  public
    property ShipRate: TShip read FShipRate;
    property ShipChange: TShip read FShipChange;
    property I: Integer read FIndex;
    property Fish: Extended read CalcFish;
    property Whale: Extended read CalcWhale;
    constructor Create(const Index: Integer);
    procedure SetFishMarket(const Flag: Boolean);
    procedure SetFishMarket2(const Flag: Boolean);
    procedure SetRenderingPlant(const Flag: Boolean);

    procedure SetPeaceTimeFishing(const Flag: Boolean);

    procedure SetWhaleOil(const Flag: Boolean);

    procedure SetGillNets(const Flag: Boolean);
    procedure SetLongLines(const Flag: Boolean);

    procedure SetEconomicTheory(const Flag: Boolean);
    procedure SetFishMarketTeam(const Flag: Boolean);

    procedure SetHuronFishWedding(const Flag: Boolean);
    procedure SetNavajoCraftsmanship(const Flag: Boolean);
    procedure SetChonindoTeam(const Flag: Boolean);

    procedure SetExcessiveTribute(const Flag: Boolean);
    procedure SetExcessiveTaxacation(const Flag: Boolean);
    procedure SetCollectiveEconomy(const Flag: Boolean);
    procedure SetConsulateFrench(const Flag: Boolean);
end;

TRateAutoGather = class
  private
    FFactory: Extended;
    FBank: Extended;
    FFactoryChanges: Extended;
    FBankChanges: Extended;
    FShrineChanges: TShrine;
    FShrineRate: TShrine;
    FShrineInc: Extended;

    FChangesInc: Extended;

    FTricleRate: TShrine;

    FPorcelainTower: TShrine;

    FGrazing: TShrine;

    FToshoguShrineChanges: TShrine;
    FToshoguShrineRate: TShrine;
    FToshoguShrineInc: Extended;

    FSetTulipSpeculation: Boolean;
    FSetCanneryWaterSteamPower: Boolean;

    FSetTempoReforms: Boolean;
    FSetHeavenlyKami: Boolean;
    FSetToshoguShrine: Boolean;

    FSetSumtuaryLaws: Boolean;
    FSetSumtuaryLawsTeam: Boolean;
    FSetColbertism: Boolean;
    FSetCapitalism: Boolean;
    FSetDistributivism: Boolean;
    FSetForeignLogging: Boolean;
    FSetEarthBounty: Boolean;
    FSetDutchAllies: Boolean;

    FSetPunjabiNewYear: Boolean;
    FSetFatterSheepTeam: Boolean;

    FSetPorcelainTower: Boolean;


    function CalcFactory: Extended;
    function CalcBank: Extended;

    function CalcShrineFood: Extended;
    function CalcShrineWood: Extended;
    function CalcShrineGold: Extended;

    function CalcToshoguShrineFood: Extended;
    function CalcToshoguShrineWood: Extended;
    function CalcToshoguShrineGold: Extended;

    procedure Inc(var X: Extended; const Y: Extended);
    procedure Dec(var X: Extended; const Y: Extended);
  public
    constructor Create;
    property FactoryChanges: Extended read FFactoryChanges;
    property BankChanges: Extended read FBankChanges;
    property ShrineChanges: TShrine read FShrineChanges;
    property ShrineRate: TShrine read FShrineRate;

    property TricleRate: TShrine read FTricleRate;

    property PorcelainTower: TShrine read FPorcelainTower;

    property Grazing: TShrine read FGrazing;

    property ToshoguShrineChanges: TShrine read FToshoguShrineChanges;
    property ToshoguShrineRate: TShrine read FToshoguShrineRate;

    property Factory: Extended read CalcFactory;
    property Bank: Extended read CalcBank;

    property ShrineFood: Extended read CalcShrineFood;
    property ShrineWood: Extended read CalcShrineWood;
    property ShrineGold: Extended read CalcShrineGold;

    property ToshoguShrineFood: Extended read CalcToshoguShrineFood;
    property ToshoguShrineWood: Extended read CalcToshoguShrineWood;
    property ToshoguShrineGold: Extended read CalcToshoguShrineGold;

    procedure SetTulipSpeculation(const Flag: Boolean);
    procedure SetCanneryWaterSteamPower(const Flag: Boolean);

    procedure SetTempoReforms(const Flag: Boolean);
    procedure SetHeavenlyKami(const Flag: Boolean);
    procedure SetSetToshoguShrine(const Flag: Boolean);

    procedure SetPunjabiNewYear(const Flag: Boolean);
    procedure SetFatterSheepTeam(const Flag: Boolean);

    procedure SetSumtuaryLaws(const Flag: Boolean);
    procedure SetSumtuaryLawsTeam(const Flag: Boolean);
    procedure SetColbertism(const Flag: Boolean);
    procedure SetCapitalism(const Flag: Boolean);
    procedure SetDistributivism(const Flag: Boolean);
    procedure SetForeignLogging(const Flag: Boolean);
    procedure SetEarthBounty(const Flag: Boolean);
    procedure SetDutchAllies(const Flag: Boolean);

    procedure SetPorcelainTower(const Age: Integer; const Flag: Boolean);

    procedure SetToshoguShrineInc(const Count, Types: Integer);
    procedure SetShrineInc(const Count, Types: Integer);

end;

TRateGather = class
  private
    FRate: TRate;
    FChanges: TRate;
    FStandard: TRate;

    FSetHuntingDogs: Boolean; // American
    FSetSteelTraps: Boolean;

    FSetGangSaw: Boolean;
    FSetLogFlume: Boolean;
    FSetCircularSaw: Boolean;

    FSetLumberCeremony: Boolean;
    FSetForestPeopleCeremony: Boolean;
    FSetForestSpiritCeremony: Boolean;

    FSetPlacerMines: Boolean; // American
    FSetAmalgamation: Boolean;
    // Mill
    FSetSeedDrill: Boolean;
    FSetArtificialFertilizer: Boolean;
    // Farm
    FSetGreatFeast: Boolean;
    FSetHarvestCeremony: Boolean;
    FSetGreenCornCeremony: Boolean;
    FSetLargeScaleGathering: Boolean;
    // Plantation Euro
    FSetBookkeeping: Boolean;
    FSetHomeSteading: Boolean;
    FSetRefineries: Boolean;
    // American Plantation
    FSetEarthCeremony: Boolean;
    FSetEarthGiftCeremony: Boolean;
    FSetExcessiveTribute: Boolean;
    // Capitol
    FSetLargeScaleAgriculture: Boolean;
    FSetDeforestation: Boolean; // American market
    FSetExcessiveTaxation: Boolean;
    // Asia Market
    // Ñhina and India
    FSetHuntingEagles: Boolean;
    FSetProfessiaonalHunters: Boolean;
    // Japan
    FSetHanamiParties: Boolean;
    FSetYozakuraLanterns: Boolean;
    // China and Japan
    FSetWaterWheel: Boolean;
    FSetRegenerativeForestry: Boolean;
    FSetTimberTrade: Boolean;           //  India
    FSetTropicalTimberTrade: Boolean;   //

    FSetBlanketFilters: Boolean;
    FSetFlumeAndDitching: Boolean;

    FSetCivilServants: Boolean;
    FSetImperialBeureaucracy: Boolean;
    // Paddy Food
    FSetPaddyThreshing: Boolean;
    FSetIrrigationChannels: Boolean;
    FSetDikeControlledCanals: Boolean;
    FSetMechanizedRiceCultivation: Boolean;
    // Paddy Gold
    FSetRiceSurplus: Boolean;
    FSetRiceTrade: Boolean;
    FSetRiceMarkets: Boolean;
    FSetRiceExports: Boolean;
    FSetCollectiveEconomy: Boolean;
    // Natives
    FSetVegetarianism: Boolean;
    FSetIncanMetalworking: Boolean;
    FSetKlamathWorkEthos: Boolean;
    FSetMayaCalendar: Boolean;
    FSetNavajoCraftsmanship: Boolean;
    FSetWoodClearing: Boolean;
    FSetFasting: Boolean;
    FSetPunjabiNewYear: Boolean;
    FSetZapotecFoodOfTheGods: Boolean;
    // Homecity Cards
    // Church
    FSetCodeNapoleon: Boolean;
    FSetEconmediaManor: Boolean;
    // Mill, Farm, Paddy
    FSetFoodSilosTeam: Boolean;
    FSetFoodSilos: Boolean;
    FSetSustainableAgriculture: Boolean;
    FSetGrainMarket: Boolean;
    FSetTempleOfXolotlSupport: Boolean;
    // Food
    FSetRefrigeration: Boolean;
    // All
    FSetChonindoTeam: Boolean;
    FSetEconomicTheory: Boolean;
    FSetGuildArtisans: Boolean;
    // Plantation, Paddy
    FSetRumDistilleryTeam: Boolean;
    FSetRumDistillery: Boolean;
    FSetCigarRoller: Boolean;
    FSetTextileMill: Boolean;
    // Plantation, Paddy, Mine
    FSetRoyalMint: Boolean;
    // Wood
    FSetSawmillsTeam: Boolean;
    FSetSawmills: Boolean; // x2 Jap
    FSetSawmills2: Boolean; // x2 Jap
    FSetExoticHardwoodsTeam: Boolean;
    FSetExoticHardwoods: Boolean;
    FSetWoodcrafting: Boolean;
    // Herd
    FSetFullingMills: Boolean;
    // Hunt, Berry
    FSetFurrierHuntTeam: Boolean;
    FSetFurrierHunt: Boolean;
    FSetSpiceTradeTeam: Boolean;
    FSetSpiceTrade: Boolean;
    FSetGreatHunter: Boolean;
    // Mine
    FSetSilversmithTeam: Boolean;
    FSetSilversmith: Boolean;  // x2 Jap
    FSetSilversmith2: Boolean;  // x2 Jap
    FSetIronmongerTeam: Boolean;
    FSetEstablishIronmonger: Boolean;
    FSetAztecMining: Boolean;
    // Plantation, Mill, Paddies, Farm
    FSetChinampa: Boolean;
    FSetGreatChinampa: Boolean;
    FSetReclaimedLand: Boolean;
    FSetFloodedParcel: Boolean;
    FSetTerracedHillsides: Boolean;
    // Berry
    FSetCherryBlossomFestival: Boolean;

    FSetFrenchAllies: Boolean;
    FSetKarniMata: Boolean;


    FSetTheWiseWomanSiox: Boolean;
    FSetTheWiseWomanAztecs: Boolean;

    FTheWiseWomanSiox: Extended;
    FTheWiseWomanAztecs: Extended;

    FIndex: Integer;
    function CalcHuntable: Extended;
    function CalcHerdable: Extended;
    function CalcMill: Extended;
    function CalcBerryBush: Extended;
    function CalcFarm: Extended;
    function CalcRicePaddyFood: Extended;

    function CalcTree: Extended;

    function CalcMine: Extended;
    function CalcRicePaddyGold: Extended;
    function CalcPlantation: Extended;

    procedure Inc(var X: Extended; const Y: Extended);
    procedure Dec(var X: Extended; const Y: Extended);
  public
    constructor Create(const Index: Integer);

    procedure SetTheWiseWomanSiox(const Age: Integer; const Flag: Boolean);
    procedure SetTheWiseWomanAztecs(const Age: Integer; const Flag: Boolean);
    // Market Euro
    procedure SetHuntingDogs(const Flag: Boolean); // American
    procedure SetSteelTraps(const Flag: Boolean);

    procedure SetGangSaw(const Flag: Boolean);
    procedure SetLogFlume(const Flag: Boolean);
    procedure SetCircularSaw(const Flag: Boolean);

    procedure SetLumberCeremony(const Flag: Boolean);
    procedure SetForestPeopleCeremony(const Flag: Boolean);
    procedure SetForestSpiritCeremony(const Flag: Boolean);

    procedure SetPlacerMines(const Flag: Boolean); // American
    procedure SetAmalgamation(const Flag: Boolean);
    // Mill
    procedure SetSeedDrill(const Flag: Boolean);
    procedure SetArtificialFertilizer(const Flag: Boolean);
    // Farm
    procedure SetGreatFeast(const Flag: Boolean);
    procedure SetHarvestCeremony(const Flag: Boolean);
    procedure SetGreenCornCeremony(const Flag: Boolean);
    procedure SetLargeScaleGathering(const Flag: Boolean);
    // Plantation Euro
    procedure SetBookkeeping(const Flag: Boolean);
    procedure SetHomeSteading(const Flag: Boolean);
    procedure SetRefineries(const Flag: Boolean);
    // American Plantation
    procedure SetEarthCeremony(const Flag: Boolean);
    procedure SetEarthGiftCeremony(const Flag: Boolean);
    procedure SetExcessiveTribute(const Flag: Boolean);
    // Capitol
    procedure SetLargeScaleAgriculture(const Flag: Boolean);
    procedure SetDeforestation(const Flag: Boolean); // American market
    procedure SetExcessiveTaxation(const Flag: Boolean);
    // Asia Market
    // Ñhina and India
    procedure SetHuntingEagles(const Flag: Boolean);
    procedure SetProfessiaonalHunters(const Flag: Boolean);
    // Japan
    procedure SetHanamiParties(const Flag: Boolean);
    procedure SetYozakuraLanterns(const Flag: Boolean);
    // China and Japan
    procedure SetWaterWheel(const Flag: Boolean);
    procedure SetRegenerativeForestry(const Flag: Boolean);
    procedure SetTimberTrade(const Flag: Boolean);           //  India
    procedure SetTropicalTimberTrade(const Flag: Boolean);   //

    procedure SetBlanketFilters(const Flag: Boolean);
    procedure SetFlumeAndDitching(const Flag: Boolean);

    procedure SetCivilServants(const Flag: Boolean);
    procedure SetImperialBeureaucracy(const Flag: Boolean);
    // Paddy Food
    procedure SetPaddyThreshing(const Flag: Boolean);
    procedure SetIrrigationChannels(const Flag: Boolean);
    procedure SetDikeControlledCanals(const Flag: Boolean);
    procedure SetMechanizedRiceCultivation(const Flag: Boolean);
    // Paddy Gold
    procedure SetRiceSurplus(const Flag: Boolean);
    procedure SetRiceTrade(const Flag: Boolean);
    procedure SetRiceMarkets(const Flag: Boolean);
    procedure SetRiceExports(const Flag: Boolean);
    procedure SetCollectiveEconomy(const Flag: Boolean);
    // Natives
    procedure SetVegetarianism(const Flag: Boolean);
    procedure SetIncanMetalworking(const Flag: Boolean);
    procedure SetKlamathWorkEthos(const Flag: Boolean);
    procedure SetMayaCalendar(const Flag: Boolean);
    procedure SetNavajoCraftsmanship(const Flag: Boolean);
    procedure SetWoodClearing(const Flag: Boolean);
    procedure SetFasting(const Flag: Boolean);
    procedure SetPunjabiNewYear(const Flag: Boolean);
    procedure SetZapotecFoodOfTheGods(const Flag: Boolean);
    // Homecity Cards
    // Church
    procedure SetCodeNapoleon(const Flag: Boolean);
    procedure SetEconmediaManor(const Flag: Boolean);
    // Mill, Farm, Paddy
    procedure SetFoodSilosTeam(const Flag: Boolean);
    procedure SetFoodSilos(const Flag: Boolean);
    procedure SetSustainableAgriculture(const Flag: Boolean);
    procedure SetGrainMarket(const Flag: Boolean);
    procedure SetTempleOfXolotlSupport(const Flag: Boolean);
    // Food
    procedure SetRefrigeration(const Flag: Boolean);
    // All
    procedure SetChonindoTeam(const Flag: Boolean);
    procedure SetEconomicTheory(const Flag: Boolean);
    procedure SetGuildArtisans(const Flag: Boolean);
    procedure SetFrenchAllies(const Flag: Boolean);
    procedure SetKarniMata(const Flag: Boolean);
    // Plantation, Paddy
    procedure SetRumDistilleryTeam(const Flag: Boolean);
    procedure SetRumDistillery(const Flag: Boolean);
    procedure SetCigarRoller(const Flag: Boolean);
    procedure SetTextileMill(const Flag: Boolean);
    // Plantation, Paddy, Mine
    procedure SetRoyalMint(const Flag: Boolean);
    // Wood
    procedure SetSawmillsTeam(const Flag: Boolean);
    procedure SetSawmills(const Flag: Boolean); // x2 Jap
    procedure SetSawmills2(const Flag: Boolean); // x2 Jap
    procedure SetExoticHardwoodsTeam(const Flag: Boolean);
    procedure SetExoticHardwoods(const Flag: Boolean);
    procedure SetWoodcrafting(const Flag: Boolean);
    // Herd
    procedure SetFullingMills(const Flag: Boolean);
    // Hunt, Berry
    procedure SetFurrierHuntTeam(const Flag: Boolean);
    procedure SetFurrierHunt(const Flag: Boolean);
    procedure SetSpiceTradeTeam(const Flag: Boolean);
    procedure SetSpiceTrade(const Flag: Boolean);
    procedure SetGreatHunter(const Flag: Boolean);
    // Mine
    procedure SetSilversmithTeam(const Flag: Boolean);
    procedure SetSilversmith(const Flag: Boolean);  // x2 Jap
    procedure SetSilversmith2(const Flag: Boolean);  // x2 Jap
    procedure SetIronmongerTeam(const Flag: Boolean);
    procedure SetEstablishIronmonger(const Flag: Boolean);
    procedure SetAztecMining(const Flag: Boolean);
    // Plantation, Mill, Paddies, Farm
    procedure SetChinampa(const Flag: Boolean);
    procedure SetGreatChinampa(const Flag: Boolean);
    procedure SetReclaimedLand(const Flag: Boolean);
    procedure SetFloodedParcel(const Flag: Boolean);
    procedure SetTerracedHillsides(const Flag: Boolean);
    // Berry
    procedure SetCherryBlossomFestival(const Flag: Boolean);

    property Changes: TRate read FChanges;
    property Rate: TRate read FRate;
    property SetRateMine: Extended read FStandard.rMine write FRate.rMine;
    property SetRateWood: Extended read FStandard.rTree write FRate.rTree;
    property SetRateHunt: Extended read FStandard.rHuntable write FRate.rHuntable;
    property SetRateHerd: Extended read FStandard.rHerdable write FRate.rHerdable;

    property TheWiseWomanSiox: Extended read FTheWiseWomanSiox;
    property TheWiseWomanAztecs: Extended read FTheWiseWomanAztecs;

    property Huntable: Extended read CalcHuntable;
    property Herdable: Extended read CalcHerdable;
    property Mill: Extended read CalcMill;
    property BerryBush: Extended read CalcBerryBush;
    property Farm: Extended read CalcFarm;
    property RicePaddyFood: Extended read CalcRicePaddyFood;
    property Tree: Extended read CalcTree;
    property Mine: Extended read CalcMine;
    property RicePaddyGold: Extended read CalcRicePaddyGold;
    property Plantation: Extended read CalcPlantation;


    property I: Integer read FIndex;
end;

implementation

function TShipGather.CalcFish: Extended;
begin
  Result := FShipRate.rFish * FShipChange.rFish;
end;

function TShipGather.CalcWhale: Extended;
begin
  Result := FShipRate.rWhale * FShipChange.rWhale;
end;

constructor TShipGather.Create(const Index: Integer);
begin
  FIndex := Index;
  case Index of
    0..1:
    begin
      FShipRate.rFish := 0.22;
      FShipRate.rWhale := 0.17;
    end;
    2..3:
    begin
      FShipRate.rFish := 0.67;
      FShipRate.rWhale := 0.5;
    end;
  end;
  FShipChange.rFish := 1;
  FShipChange.rWhale := 1;

  FSetFishMarket := False;
  FSetFishMarket2 := False;
  FSetRenderingPlant := False;

  FSetPeaceTimeFishing := False;

  FSetWhaleOil := False;

  FSetGillNets := False;
  FSetLongLines := False;

  FSetEconomicTheory := False;
  FSetFishMarketTeam := False;

  FSetHuronFishWedding := False;
  FSetNavajoCraftsmanship := False;
  FSetChonindoTeam := False;

  FSetExcessiveTribute := False;
  FSetExcessiveTaxacation := False;
  FSetCollectiveEconomy := False;

  FSetConsulateFrench := False;
end;

procedure TShipGather.SetFishMarket(const Flag: Boolean);
begin
  if Flag = not FSetFishMarket then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.25);
        Inc(FShipChange.rWhale, 0.25);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.25);
        Dec(FShipChange.rWhale, 0.25);
      end;
  end;
  FSetFishMarket := Flag;
end;

procedure TShipGather.SetFishMarket2(const Flag: Boolean);
begin
  if Flag = not FSetFishMarket2 then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.25);
        Inc(FShipChange.rWhale, 0.25);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.25);
        Dec(FShipChange.rWhale, 0.25);
      end;
  end;
  FSetFishMarket2 := Flag;
end;

procedure TShipGather.SetRenderingPlant(const Flag: Boolean);
begin
  if Flag = not FSetRenderingPlant then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.3);
        Inc(FShipChange.rWhale, 0.3);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.3);
        Dec(FShipChange.rWhale, 0.3);
      end;
  end;
  FSetRenderingPlant := Flag;
end;

procedure TShipGather.SetPeaceTimeFishing(const Flag: Boolean);
begin
  if Flag = not FSetPeaceTimeFishing then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 1.25);
        Inc(FShipChange.rWhale, 1.25);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 1.25);
        Dec(FShipChange.rWhale, 1.25);
      end;
  end;
  FSetPeaceTimeFishing := Flag;
end;

procedure TShipGather.SetWhaleOil(const Flag: Boolean);
begin
  if Flag = not FSetWhaleOil then
  case Flag of
    True:
      begin
        Inc(FShipChange.rWhale, 0.35);
      end;
    False:
      begin
        Dec(FShipChange.rWhale, 0.35);
      end;
  end;
  FSetWhaleOil := Flag;
end;

procedure TShipGather.SetGillNets(const Flag: Boolean);
begin
  if Flag = not FSetGillNets then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.15);
        Inc(FShipChange.rWhale, 0.15);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.15);
        Dec(FShipChange.rWhale, 0.15);
      end;
  end;
  FSetGillNets := Flag;
end;

procedure TShipGather.SetLongLines(const Flag: Boolean);
begin
  if Flag = not FSetLongLines then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.3);
        Inc(FShipChange.rWhale, 0.3);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.3);
        Dec(FShipChange.rWhale, 0.3);
      end;
  end;
  FSetLongLines := Flag;
end;

procedure TShipGather.SetEconomicTheory(const Flag: Boolean);
begin
  if Flag = not FSetEconomicTheory then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.1);
        Inc(FShipChange.rWhale, 0.1);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.1);
        Dec(FShipChange.rWhale, 0.1);
      end;
  end;
  FSetEconomicTheory := Flag;
end;

procedure TShipGather.SetFishMarketTeam(const Flag: Boolean);
begin
  if Flag = not FSetFishMarketTeam then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.1);
        Inc(FShipChange.rWhale, 0.1);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.1);
        Dec(FShipChange.rWhale, 0.1);
      end;
  end;
  FSetFishMarketTeam := Flag;
end;

procedure TShipGather.SetHuronFishWedding(const Flag: Boolean);
begin
  if Flag = not FSetHuronFishWedding then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.2);
        Inc(FShipChange.rWhale, 0.2);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.2);
        Dec(FShipChange.rWhale, 0.2);
      end;
  end;
  FSetHuronFishWedding := Flag;
end;

procedure TShipGather.SetNavajoCraftsmanship(const Flag: Boolean);
begin
  if Flag = not FSetNavajoCraftsmanship then
  case Flag of
    True: Inc(FShipChange.rWhale, 0.2);
    False:Dec(FShipChange.rWhale, 0.2);
  end;
  FSetNavajoCraftsmanship := Flag;
end;

procedure TShipGather.SetChonindoTeam(const Flag: Boolean);
begin
  if Flag = not FSetChonindoTeam then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.08);
        Inc(FShipChange.rWhale, 0.08);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.08);
        Dec(FShipChange.rWhale, 0.08);
      end;
  end;
  FSetChonindoTeam := Flag;
end;

procedure TShipGather.SetExcessiveTribute(const Flag: Boolean);
begin
  if Flag = not FSetExcessiveTribute then
  case Flag of
    True:
      begin
        Inc(FShipChange.rWhale, 0.5);
      end;
    False:
      begin
        Dec(FShipChange.rWhale, 0.5);
      end;
  end;
  FSetExcessiveTribute := Flag;
end;

procedure TShipGather.SetExcessiveTaxacation(const Flag: Boolean);
begin
  if Flag = not FSetExcessiveTaxacation then
  case Flag of
    True:
      begin
        Inc(FShipChange.rWhale, 0.5);
      end;
    False:
      begin
        Dec(FShipChange.rWhale, 0.5);
      end;
  end;
  FSetExcessiveTaxacation := Flag;
end;

procedure TShipGather.SetCollectiveEconomy(const Flag: Boolean);
begin
  if Flag = not FSetCollectiveEconomy then
  case Flag of
    True:
      begin
        Inc(FShipChange.rWhale, 0.5);
      end;
    False:
      begin
        Dec(FShipChange.rWhale, 0.5);
      end;
  end;
  FSetCollectiveEconomy := Flag;
end;

procedure TShipGather.SetConsulateFrench(const Flag: Boolean);
begin
  if Flag = not FSetConsulateFrench then
  case Flag of
    True:
      begin
        Inc(FShipChange.rFish, 0.05);
        Inc(FShipChange.rWhale, 0.05);
      end;
    False:
      begin
        Dec(FShipChange.rFish, 0.05);
        Dec(FShipChange.rWhale, 0.05);
      end;
  end;
  FSetConsulateFrench := Flag;
end;

constructor TRateAutoGather.Create;
begin
  FFactory := 5.5;
  FBank := 2.75;
  FFactoryChanges := 1;
  FBankChanges := 1;
  FSetTulipSpeculation := False;
  FSetCanneryWaterSteamPower := False;

  FChangesInc := 1;

  FGrazing.rFood := 0.05;
  FGrazing.rWood := 0.1;

  FShrineRate.rFood := 0.14;
  FShrineRate.rWood := 0.1;
  FShrineRate.rGold := 0.1;

  FShrineChanges.rFood := 1;
  FShrineChanges.rWood := 1;
  FShrineChanges.rGold := 1;

  FToshoguShrineRate.rFood := 0;
  FToshoguShrineRate.rWood := 0;
  FToshoguShrineRate.rGold := 0;

  FToshoguShrineChanges.rFood := 1;
  FToshoguShrineChanges.rWood := 1;
  FToshoguShrineChanges.rGold := 1;

  FTricleRate.rFood := 0;
  FTricleRate.rWood := 0;
  FTricleRate.rGold := 0;

  FShrineInc := 0;
  FToshoguShrineInc := 0;

  FSetPunjabiNewYear := False;
  FSetFatterSheepTeam := False;

  FSetTempoReforms := False;
  FSetHeavenlyKami := False;
  FSetToshoguShrine := False;

  FSetPorcelainTower := False;

  FSetSumtuaryLaws := False;
  FSetSumtuaryLawsTeam := False;
  FSetColbertism := False;
  FSetCapitalism := False;
  FSetDistributivism := False;
  FSetForeignLogging := False;
  FSetEarthBounty := False;
  FSetDutchAllies := False;
end;

function  TRateAutoGather.CalcShrineFood: Extended;
begin
  Result := FShrineRate.rFood * FShrineChanges.rFood + FShrineInc;
end;

function  TRateAutoGather.CalcShrineWood: Extended;
begin
  Result := FShrineRate.rWood * FShrineChanges.rWood + FShrineInc;
end;

function  TRateAutoGather.CalcShrineGold: Extended;
begin
  Result := FShrineRate.rGold * FShrineChanges.rGold + FShrineInc;
end;

function  TRateAutoGather.CalcToshoguShrineFood: Extended;
begin
  if FSetToshoguShrine then
    Result := FToshoguShrineRate.rFood * FToshoguShrineChanges.rFood + FToshoguShrineInc
  else
    Result := 0;
end;

function  TRateAutoGather.CalcToshoguShrineWood: Extended;
begin
  if FSetToshoguShrine then
    Result := FToshoguShrineRate.rWood * FToshoguShrineChanges.rWood + FToshoguShrineInc
  else
    Result := 0;
end;

function  TRateAutoGather.CalcToshoguShrineGold: Extended;
begin
  if FSetToshoguShrine then
    Result := FToshoguShrineRate.rGold * FToshoguShrineChanges.rGold + FToshoguShrineInc
  else
    Result := 0;
end;

procedure TRateAutoGather.SetToshoguShrineInc(const Count: Integer; const Types: Integer);
begin
  case Types of
    1: FToshoguShrineInc := 0.07 * Count;
    2: FToshoguShrineInc := 0.08 * Count;
    3: FToshoguShrineInc := FChangesInc * 0.11 * Count;
    4: FToshoguShrineInc := 0.12 * Count;
    5: FToshoguShrineInc := FChangesInc * 0.13 * Count;
    6: FToshoguShrineInc := FChangesInc * 0.14 * Count;
  end;
end;

procedure TRateAutoGather.SetShrineInc(const Count: Integer; const Types: Integer);
begin
  case Types of
    1: FShrineInc := 0.07 * Count;
    2: FShrineInc := 0.08 * Count;
    3: FShrineInc := FChangesInc * 0.11 * Count;
    4: FShrineInc := 0.12 * Count;
    5: FShrineInc := FChangesInc * 0.13 * Count;
    6: FShrineInc := FChangesInc * 0.14 * Count;
  end;
end;

procedure TRateAutoGather.SetTempoReforms(const Flag: Boolean);
begin
  if Flag = not FSetTempoReforms then
  case Flag of
    True:
    begin
      Inc(FShrineChanges.rFood, 3.5);
      Inc(FToshoguShrineChanges.rFood, 3.5);
      Inc(FShrineChanges.rWood, 3);
      Inc(FToshoguShrineChanges.rWood, 3);
      Inc(FShrineChanges.rGold, 3);
      Inc(FToshoguShrineChanges.rGold, 3);
    end;
    False:
    begin
      Dec(FShrineChanges.rFood, 3.5);
      Dec(FToshoguShrineChanges.rFood, 3.5);
      Dec(FShrineChanges.rWood, 3);
      Dec(FToshoguShrineChanges.rWood, 3);
      Dec(FShrineChanges.rGold, 3);
      Dec(FToshoguShrineChanges.rGold, 3);
    end;
  end;
  FSetTempoReforms := Flag;
end;

procedure TRateAutoGather.SetHeavenlyKami(const Flag: Boolean);
begin
  if Flag = not FSetHeavenlyKami then
  case Flag of
    True:
    begin
      Inc(FShrineChanges.rFood, 0.5);
      Inc(FToshoguShrineChanges.rFood, 0.5);
      Inc(FShrineChanges.rWood, 0.5);
      Inc(FToshoguShrineChanges.rWood, 0.5);
      Inc(FShrineChanges.rGold, 0.5);
      Inc(FToshoguShrineChanges.rGold, 0.5);
    end;
    False:
    begin
      Dec(FShrineChanges.rFood, 0.5);
      Dec(FToshoguShrineChanges.rFood, 0.5);
      Dec(FShrineChanges.rWood, 0.5);
      Dec(FToshoguShrineChanges.rWood, 0.5);
      Dec(FShrineChanges.rGold, 0.5);
      Dec(FToshoguShrineChanges.rGold, 0.5);
    end;
  end;
  FSetHeavenlyKami := Flag;
end;

procedure TRateAutoGather.SetSetToshoguShrine(const Flag: Boolean);
begin
  if Flag = not FSetToshoguShrine then
  case Flag of
    True:
    begin
      FToshoguShrineRate.rFood := 0.35;
      FToshoguShrineRate.rWood := 0.35;
      FToshoguShrineRate.rGold := 0.35;
      Inc(FShrineChanges.rFood, 0.5);
      Inc(FShrineChanges.rWood, 0.5);
      Inc(FShrineChanges.rGold, 0.5);
    end;
    False:
    begin
      FToshoguShrineRate.rFood := 0;
      FToshoguShrineRate.rWood := 0;
      FToshoguShrineRate.rGold := 0;
      Dec(FShrineChanges.rFood, 0.5);
      Dec(FShrineChanges.rWood, 0.5);
      Dec(FShrineChanges.rGold, 0.5);
    end;
  end;
  FSetToshoguShrine := Flag;
end;

procedure TRateAutoGather.SetPunjabiNewYear(const Flag: Boolean);
begin
  if Flag = not FSetPunjabiNewYear then
  case Flag of
    True: Inc(FChangesInc, 0.1);
    False: Dec(FChangesInc, 0.1);
  end;
  FSetPunjabiNewYear := Flag;
end;

procedure TRateAutoGather.SetFatterSheepTeam(const Flag: Boolean);
begin
  if Flag = not FSetFatterSheepTeam then
  case Flag of
    True: Inc(FChangesInc, 0.25);
    False: Dec(FChangesInc, 0.25);
  end;
  FSetFatterSheepTeam := Flag;
end;

procedure TRateAutoGather.SetSumtuaryLaws(const Flag: Boolean);
begin
  if Flag = not FSetSumtuaryLaws then
  case Flag of
    True:
    begin
      Inc(FTricleRate.rFood, 0.3);
      Inc(FTricleRate.rWood, 0.3);
      Inc(FTricleRate.rGold, 0.3);
    end;
    False:
    begin
      Dec(FTricleRate.rFood, 0.3);
      Dec(FTricleRate.rWood, 0.3);
      Dec(FTricleRate.rGold, 0.3);
    end;
  end;
  FSetSumtuaryLaws := Flag;
end;

procedure TRateAutoGather.SetSumtuaryLawsTeam(const Flag: Boolean);
begin
  if Flag = not FSetSumtuaryLawsTeam then
  case Flag of
    True:
    begin
      Inc(FTricleRate.rFood, 0.2);
      Inc(FTricleRate.rWood, 0.2);
      Inc(FTricleRate.rGold, 0.2);
    end;
    False:
    begin
      Dec(FTricleRate.rFood, 0.2);
      Dec(FTricleRate.rWood, 0.2);
      Dec(FTricleRate.rGold, 0.2);
    end;
  end;
  FSetSumtuaryLawsTeam := Flag;
end;


procedure TRateAutoGather.SetColbertism(const Flag: Boolean);
begin
  if Flag = not FSetColbertism then
  case Flag of
    True: Inc(FTricleRate.rFood, 1.5);
    False: Dec(FTricleRate.rFood, 1.5);
  end;
  FSetColbertism := Flag;
end;

procedure TRateAutoGather.SetCapitalism(const Flag: Boolean);
begin
  if Flag = not FSetCapitalism then
  case Flag of
    True: Inc(FTricleRate.rGold, 1.25);
    False: Dec(FTricleRate.rGold, 1.25);
  end;
  FSetCapitalism := Flag;
end;

procedure TRateAutoGather.SetDistributivism(const Flag: Boolean);
begin
  if Flag = not FSetDistributivism then
  case Flag of
    True: Inc(FTricleRate.rWood, 1.25);
    False: Dec(FTricleRate.rWood, 1.25);
  end;
  FSetDistributivism := Flag;
end;

procedure TRateAutoGather.SetForeignLogging(const Flag: Boolean);
begin
  if Flag = not FSetForeignLogging then
  case Flag of
    True: Inc(FTricleRate.rWood, 2.35);
    False: Dec(FTricleRate.rWood, 2.35);
  end;
  FSetForeignLogging := Flag;
end;

procedure TRateAutoGather.SetEarthBounty(const Flag: Boolean);
begin
  if Flag = not FSetEarthBounty then
  case Flag of
    True:
    begin
      Inc(FTricleRate.rWood, 0.65);
      Inc(FTricleRate.rGold, 0.65);
    end;
    False:
    begin
      Dec(FTricleRate.rWood, 0.65);
      Dec(FTricleRate.rGold, 0.65);
    end;
  end;
  FSetEarthBounty := Flag;
end;

procedure TRateAutoGather.SetDutchAllies(const Flag: Boolean);
begin
  if Flag = not FSetDutchAllies then
  case Flag of
    True: Inc(FTricleRate.rGold, 0.8);
    False: Dec(FTricleRate.rGold, 0.8);
  end;
  FSetDutchAllies := Flag;
end;

procedure TRateAutoGather.SetPorcelainTower(const Age: Integer; const Flag: Boolean);
begin
  case Flag of
  True:
    case Age of
      0:
      begin
        FPorcelainTower.rFood := 3;
        FPorcelainTower.rWood := 2.5;
        FPorcelainTower.rGold := 2.5;
      end;
      1:
      begin
        FPorcelainTower.rFood := 4.5;
        FPorcelainTower.rWood := 4;
        FPorcelainTower.rGold := 4;
      end;
      2:
      begin
        FPorcelainTower.rFood := 6;
        FPorcelainTower.rWood := 5.5;
        FPorcelainTower.rGold := 5.5;
      end;
      3:
      begin
        FPorcelainTower.rFood := 6.5;
        FPorcelainTower.rWood := 6;
        FPorcelainTower.rGold := 6;
      end;
    end;
  False:
    case Age of
      0:
      begin
        FPorcelainTower.rFood := 0.6;
        FPorcelainTower.rWood := 0.6;
        FPorcelainTower.rGold := 0.6;
      end;
      1:
      begin
        FPorcelainTower.rFood := 1.25;
        FPorcelainTower.rWood := 1;
        FPorcelainTower.rGold := 41;
      end;
      2:
      begin
        FPorcelainTower.rFood := 1.5;
        FPorcelainTower.rWood := 1.1;
        FPorcelainTower.rGold := 1.1;
      end;
      3:
      begin
        FPorcelainTower.rFood := 2;
        FPorcelainTower.rWood := 1.5;
        FPorcelainTower.rGold := 1.5;
      end;
    end;
  end;
  FSetPorcelainTower := Flag;
end;

procedure TRateAutoGather.Inc(var X: Extended; const Y: Extended);
begin
  X := X + Y;
end;

procedure TRateAutoGather.Dec(var X: Extended; const Y: Extended);
begin
  X := X - Y;
end;

function TRateAutoGather.CalcFactory: Extended;
begin
  Result := FFactory * FFactoryChanges;
end;

function TRateAutoGather.CalcBank: Extended;
begin
  Result := FBank * FBankChanges;
end;

procedure TRateAutoGather.SetTulipSpeculation(const Flag: Boolean);
begin
  if Flag = not FSetTulipSpeculation then
  case Flag of
    True: Inc(FBankChanges, 0.15);
    False: Dec(FBankChanges, 0.15);
  end;
  FSetTulipSpeculation := Flag;
end;

procedure TRateAutoGather.SetCanneryWaterSteamPower(const Flag: Boolean);
begin
  if Flag = not FSetCanneryWaterSteamPower then
  case Flag of
    True: Inc(FFactoryChanges, 0.30);
    False: Dec(FFactoryChanges, 0.30);
  end;
  FSetCanneryWaterSteamPower := Flag;
end;

constructor TRateGather.Create(const Index: Integer);
begin
  inherited Create;
  FIndex := Index;
  case Index of
    0:
  // Settler, Villager
    begin
      FRate.rHuntable := 0.84;
      FRate.rHerdable := 2;
      FRate.rMill := 0.67;
      FRate.rBerryBush := 0.67;
      FRate.rFarm := 0.5;
      FRate.rRicePaddyFood := 0.5;
      FRate.rTree := 0.5;
      FRate.rMine := 0.6;
      FRate.rRicePaddyGold := 0.34;
      FRate.rPlantation := 0.5;
    end;
    1:
  // CDB
    begin
      FRate.rHuntable := 1.04;
      FRate.rHerdable := 2.5;
      FRate.rMill := 0.84;
      FRate.rBerryBush := 0.83;
      FRate.rFarm := 0.63;
      FRate.rRicePaddyFood := 0.63;
      FRate.rTree := 0.62;
      FRate.rMine := 0.74;
      FRate.rRicePaddyGold := 0.43;
      FRate.rPlantation := 0.63;
    end;
    2:
  // Settler Wagon
    begin
      FRate.rHuntable := 1.7;
      FRate.rHerdable := 4;
      FRate.rMill := 1.34;
      FRate.rBerryBush := 1.34;
      FRate.rFarm := 1;
      FRate.rRicePaddyFood := 1;
      FRate.rTree := 1;
      FRate.rMine := 1.2;
      FRate.rRicePaddyGold := 0.68;
      FRate.rPlantation := 1;
    end;
  // Pilgrim
    3:
    begin
      FRate.rHuntable := 0.88;
      FRate.rHerdable := 2.2;
      FRate.rMill := 0.7;
      FRate.rBerryBush := 0.7;
      FRate.rFarm := 0.55;
      FRate.rRicePaddyFood := 0.55;
      FRate.rTree := 0.55;
      FRate.rMine := 0.65;
      FRate.rRicePaddyGold := 0.37;
      FRate.rPlantation := 0.55;
    end;
  end;
    FTheWiseWomanSiox := 0;
    FTheWiseWomanAztecs := 0;
  FStandard := FRate;
  FChanges.rHuntable := 1;
  FChanges.rHerdable := 1;
  FChanges.rMill := 1;
  FChanges.rBerryBush := 1;
  FChanges.rFarm := 1;
  FChanges.rRicePaddyFood := 1;
  FChanges.rTree := 1;
  FChanges.rMine := 1;
  FChanges.rRicePaddyGold := 1;
  FChanges.rPlantation := 1;

  FSetTheWiseWomanSiox := False;
  FSetTheWiseWomanAztecs := False;

    FSetHuntingDogs := False; // American
    FSetSteelTraps := False;

    FSetFrenchAllies := False;
    FSetKarniMata := False;

    FSetGangSaw := False;
    FSetLogFlume := False;
    FSetCircularSaw := False;

    FSetLumberCeremony := False;
    FSetForestPeopleCeremony := False;
    FSetForestSpiritCeremony := False;

    FSetPlacerMines := False; // American
    FSetAmalgamation := False;
    // Mill
    FSetSeedDrill := False;
    FSetArtificialFertilizer := False;
    // Farm
    FSetGreatFeast := False;
    FSetHarvestCeremony := False;
    FSetGreenCornCeremony := False;
    FSetLargeScaleGathering := False;
    // Plantation Euro
    FSetBookkeeping := False;
    FSetHomeSteading := False;
    FSetRefineries := False;
    // American Plantation
    FSetEarthCeremony := False;
    FSetEarthGiftCeremony := False;
    FSetExcessiveTribute := False;
    // Capitol
    FSetLargeScaleAgriculture := False;
    FSetDeforestation := False; // American market
    FSetExcessiveTaxation := False;
    // Asia Market
    // Ñhina and India
    FSetHuntingEagles := False;
    FSetProfessiaonalHunters := False;
    // Japan
    FSetHanamiParties := False;
    FSetYozakuraLanterns := False;
    // China and Japan
    FSetWaterWheel := False;
    FSetRegenerativeForestry := False;
    FSetTimberTrade := False;           //  India
    FSetTropicalTimberTrade := False;   //

    FSetBlanketFilters := False;
    FSetFlumeAndDitching := False;

    FSetCivilServants := False;
    FSetImperialBeureaucracy := False;
    // Paddy Food
    FSetPaddyThreshing := False;
    FSetIrrigationChannels := False;
    FSetDikeControlledCanals := False;
    FSetMechanizedRiceCultivation := False;
    // Paddy Gold
    FSetRiceSurplus := False;
    FSetRiceTrade := False;
    FSetRiceMarkets := False;
    FSetRiceExports := False;
    FSetCollectiveEconomy := False;
    FSetTempleOfXolotlSupport := False;
    // Natives
    FSetVegetarianism := False;
    FSetIncanMetalworking := False;
    FSetKlamathWorkEthos := False;
    FSetMayaCalendar := False;
    FSetNavajoCraftsmanship := False;
    FSetWoodClearing := False;
    FSetFasting := False;
    FSetPunjabiNewYear := False;
    FSetZapotecFoodOfTheGods := False;
    // Homecity Cards
    // Church
    FSetCodeNapoleon := False;
    FSetEconmediaManor := False;
    // Mill, Farm, Paddy
    FSetFoodSilosTeam := False;
    FSetFoodSilos := False;
    FSetSustainableAgriculture := False;
    FSetGrainMarket := False;
    // Food
    FSetRefrigeration := False;
    // All
    FSetChonindoTeam := False;
    FSetEconomicTheory := False;
    FSetGuildArtisans := False;
    // Plantation, Paddy
    FSetRumDistilleryTeam := False;
    FSetRumDistillery := False;
    FSetCigarRoller := False;
    FSetTextileMill := False;
    // Plantation, Paddy, Mine
    FSetRoyalMint := False;
    // Wood
    FSetSawmillsTeam := False;
    FSetSawmills := False; // x2 Jap
    FSetSawmills2 := False; // x2 Jap
    FSetExoticHardwoodsTeam := False;
    FSetExoticHardwoods := False;
    FSetWoodcrafting := False;
    // Herd
    FSetFullingMills := False;
    // Hunt, Berry
    FSetFurrierHuntTeam := False;
    FSetFurrierHunt := False;
    FSetSpiceTradeTeam := False;
    FSetSpiceTrade := False;
    FSetGreatHunter := False;
    // Mine
    FSetSilversmithTeam := False;
    FSetSilversmith := False;  // x2 Jap
    FSetSilversmith2 := False;  // x2 Jap
    FSetIronmongerTeam := False;
    FSetEstablishIronmonger := False;
    FSetAztecMining := False;
    // Plantation, Mill, Paddies, Farm
    FSetChinampa := False;
    FSetGreatChinampa := False;
    FSetReclaimedLand := False;
    FSetFloodedParcel := False;
    FSetTerracedHillsides := False;
    // Berry
    FSetCherryBlossomFestival := False;
end;

procedure TRateGather.Inc(var X: Extended; const Y: Extended);
begin
  X := X + Y;
end;

procedure TRateGather.Dec(var X: Extended; const Y: Extended);
begin
  X := X - Y;
end;

procedure TShipGather.Inc(var X: Extended; const Y: Extended);
begin
  X := X + Y;
end;

procedure TShipGather.Dec(var X: Extended; const Y: Extended);
begin
  X := X - Y;
end;

procedure TRateGather.SetTheWiseWomanSiox(const Age: Integer; const Flag: Boolean);
begin
  case Age of
  0:
  case Flag of
    True: FTheWiseWomanSiox := 0.1;
    False: FTheWiseWomanSiox := 0;
  end;
  1:
  case Flag of
    True: FTheWiseWomanSiox := 0.2;
    False: FTheWiseWomanSiox := 0;
  end;
  2:
  case Flag of
    True: FTheWiseWomanSiox := 0.3;
    False: FTheWiseWomanSiox := 0;
  end;
  3:
  case Flag of
    True: FTheWiseWomanSiox := 0.4;
    False: FTheWiseWomanSiox := 0;
  end;
  end;
end;

procedure TRateGather.SetTheWiseWomanAztecs(const Age: Integer; const Flag: Boolean);
begin
  case Age of
  0..2:
  case Flag of
    True: FTheWiseWomanAztecs := 0.1;
    False: FTheWiseWomanAztecs := 0;
  end;
  3:
  case Flag of
    True: FTheWiseWomanAztecs := 0.2;
    False: FTheWiseWomanAztecs := 0;
  end;
  end;
end;

procedure TRateGather.SetHuntingDogs(const Flag: Boolean);
begin
  if Flag = not FSetHuntingDogs then
  case Flag of
    True: Inc(FChanges.rHuntable, 0.1);
    False: Dec(FChanges.rHuntable, 0.1);
  end;
  FSetHuntingDogs := Flag;
end;

procedure TRateGather.SetSteelTraps(const Flag: Boolean);
begin
  if Flag = not FSetSteelTraps then
  case Flag of
    True: Inc(FChanges.rHuntable, 0.2);
    False: Dec(FChanges.rHuntable, 0.2);
  end;
  FSetSteelTraps := Flag;
end;

procedure TRateGather.SetGangSaw(const Flag: Boolean);
begin
  if Flag = not FSetGangSaw then
  case Flag of
    True: Inc(FChanges.rTree, 0.1);
    False: Dec(FChanges.rTree, 0.1);
  end;
  FSetGangSaw := Flag;
end;

procedure TRateGather.SetLogFlume(const Flag: Boolean);
begin
  if Flag = not FSetLogFlume then
  case Flag of
    True: Inc(FChanges.rTree, 0.2);
    False: Dec(FChanges.rTree, 0.2);
  end;
  FSetLogFlume := Flag;
end;

procedure TRateGather.SetCircularSaw(const Flag: Boolean);
begin
  if Flag = not FSetCircularSaw then
  case Flag of
    True: Inc(FChanges.rTree, 0.3);
    False: Dec(FChanges.rTree, 0.3);
  end;
  FSetCircularSaw := Flag;
end;

procedure TRateGather.SetLumberCeremony(const Flag: Boolean);
begin
  if Flag = not FSetLumberCeremony then
  case Flag of
    True: Inc(FChanges.rTree, 0.2);
    False: Dec(FChanges.rTree, 0.2);
  end;
  FSetLumberCeremony := Flag;
end;

procedure TRateGather.SetForestPeopleCeremony(const Flag: Boolean);
begin
  if Flag = not FSetForestPeopleCeremony then
  case Flag of
    True: Inc(FChanges.rTree, 0.2);
    False: Dec(FChanges.rTree, 0.2);
  end;
  FSetForestPeopleCeremony := Flag;
end;

procedure TRateGather.SetForestSpiritCeremony(const Flag: Boolean);
begin
  if Flag = not FSetForestSpiritCeremony then
  case Flag of
    True: Inc(FChanges.rTree, 0.2);
    False: Dec(FChanges.rTree, 0.2);
  end;
  FSetForestSpiritCeremony := Flag;
end;

procedure TRateGather.SetPlacerMines(const Flag: Boolean);
begin
  if Flag = not FSetPlacerMines then
  case Flag of
    True: Inc(FChanges.rMine, 0.1);
    False: Dec(FChanges.rMine, 0.1);
  end;
  FSetPlacerMines := Flag;
end;

procedure TRateGather.SetAmalgamation(const Flag: Boolean);
begin
  if Flag = not FSetAmalgamation then
  case Flag of
    True: Inc(FChanges.rMine, 0.2);
    False: Dec(FChanges.rMine, 0.2);
  end;
  FSetAmalgamation := Flag;
end;

procedure TRateGather.SetSeedDrill(const Flag: Boolean);
begin
  if Flag = not FSetSeedDrill then
  case Flag of
    True:
      begin
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
        Inc(FChanges.rRicePaddyFood, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
        Dec(FChanges.rRicePaddyFood, 0.15);
      end;
  end;
  FSetSeedDrill := Flag;
end;

procedure TRateGather.SetArtificialFertilizer(const Flag: Boolean);
begin
  if Flag = not FSetArtificialFertilizer then
  case Flag of
    True:
      begin
        Inc(FChanges.rMill, 0.3);
        Inc(FChanges.rFarm, 0.3);
        Inc(FChanges.rRicePaddyFood, 0.3);
      end;
    False:
      begin
        Dec(FChanges.rMill, 0.3);
        Dec(FChanges.rFarm, 0.3);
        Dec(FChanges.rRicePaddyFood, 0.3);
      end;
  end;
  FSetArtificialFertilizer := Flag;
end;

procedure TRateGather.SetGreatFeast(const Flag: Boolean);
begin
  if Flag = not FSetGreatFeast then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rBerryBush, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rBerryBush, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
      end;
  end;
  FSetGreatFeast := Flag;
end;

procedure TRateGather.SetHarvestCeremony(const Flag: Boolean);
begin
  if Flag = not FSetHarvestCeremony then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.15);
        Inc(FChanges.rBerryBush, 0.15);
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
        Inc(FChanges.rRicePaddyFood, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.15);
        Dec(FChanges.rBerryBush, 0.15);
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
        Dec(FChanges.rRicePaddyFood, 0.15);
      end;
  end;
  FSetHarvestCeremony := Flag;
end;

procedure TRateGather.SetGreenCornCeremony(const Flag: Boolean);
begin
  if Flag = not FSetGreenCornCeremony then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.2);
        Inc(FChanges.rBerryBush, 0.2);
        Inc(FChanges.rMill, 0.2);
        Inc(FChanges.rFarm, 0.2);
        Inc(FChanges.rRicePaddyFood, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.2);
        Dec(FChanges.rBerryBush, 0.2);
        Dec(FChanges.rMill, 0.2);
        Dec(FChanges.rFarm, 0.2);
        Dec(FChanges.rRicePaddyFood, 0.2);
      end;
  end;
  FSetGreenCornCeremony := Flag;
end;

procedure TRateGather.SetLargeScaleGathering(const Flag: Boolean);
begin
  if Flag = not FSetLargeScaleGathering then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.5);
        Inc(FChanges.rMill, 0.5);
        Inc(FChanges.rFarm, 0.5);
        Inc(FChanges.rRicePaddyFood, 0.5);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.5);
        Dec(FChanges.rMill, 0.5);
        Dec(FChanges.rFarm, 0.5);
        Dec(FChanges.rRicePaddyFood, 0.5);
      end;
  end;
  FSetLargeScaleGathering := Flag;
end;

procedure TRateGather.SetBookkeeping(const Flag: Boolean);
begin
  if Flag = not FSetBookkeeping then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyGold, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyGold, 0.1);
      end;
  end;
  FSetBookkeeping := Flag;
end;

procedure TRateGather.SetHomeSteading(const Flag: Boolean);
begin
  if Flag = not FSetHomeSteading then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
      end;
  end;
  FSetHomeSteading := Flag;
end;

procedure TRateGather.SetRefineries(const Flag: Boolean);
begin
  if Flag = not FSetRefineries then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.3);
        Inc(FChanges.rRicePaddyGold, 0.3);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.3);
        Dec(FChanges.rRicePaddyGold, 0.3);
      end;
  end;
  FSetRefineries := Flag;
end;

procedure TRateGather.SetEarthCeremony(const Flag: Boolean);
begin
  if Flag = not FSetEarthCeremony then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyGold, 0.1);
        Inc(FChanges.rMine, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyGold, 0.1);
        Dec(FChanges.rMine, 0.1);
      end;
  end;
  FSetEarthCeremony := Flag;
end;

procedure TRateGather.SetEarthGiftCeremony(const Flag: Boolean);
begin
  if Flag = not FSetEarthGiftCeremony then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
        Inc(FChanges.rMine, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
        Dec(FChanges.rMine, 0.2);
      end;
  end;
  FSetEarthGiftCeremony := Flag;
end;

procedure TRateGather.SetExcessiveTribute(const Flag: Boolean);
begin
  if Flag = not FSetExcessiveTribute then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.5);
        Inc(FChanges.rRicePaddyGold, 0.5);
        Inc(FChanges.rMine, 0.5);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.5);
        Dec(FChanges.rRicePaddyGold, 0.5);
        Dec(FChanges.rMine, 0.5);
      end;
  end;
  FSetExcessiveTribute := Flag;
end;

procedure TRateGather.SetLargeScaleAgriculture(const Flag: Boolean);
begin
  if Flag = not FSetLargeScaleAgriculture then
  case Flag of
    True:
      begin
        Inc(FChanges.rMill, 0.5);
        Inc(FChanges.rFarm, 0.5);
        Inc(FChanges.rRicePaddyFood, 0.5);
      end;
    False:
      begin
        Dec(FChanges.rMill, 0.5);
        Dec(FChanges.rFarm, 0.5);
        Dec(FChanges.rRicePaddyFood, 0.5);
      end;
  end;
  FSetLargeScaleAgriculture := Flag;
end;

procedure TRateGather.SetDeforestation(const Flag: Boolean);
begin
  if Flag = not FSetDeforestation then
  case Flag of
    True: Inc(FChanges.rTree, 0.5);
    False: Dec(FChanges.rTree, 0.5);
  end;
  FSetDeforestation := Flag;
end;

procedure TRateGather.SetExcessiveTaxation(const Flag: Boolean);
begin
  if Flag = not FSetExcessiveTaxation then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.5);
        Inc(FChanges.rMine, 0.5);
        Inc(FChanges.rRicePaddyGold, 0.5);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.5);
        Dec(FChanges.rMine, 0.5);
        Dec(FChanges.rRicePaddyGold, 0.5);
      end;
  end;
  FSetExcessiveTaxation := Flag;
end;

procedure TRateGather.SetHuntingEagles(const Flag: Boolean);
begin
  if Flag = not FSetHuntingEagles then
  case Flag of
    True: Inc(FChanges.rHuntable, 0.05);
    False: Dec(FChanges.rHuntable, 0.05);
  end;
  FSetHuntingEagles := Flag;
end;

procedure TRateGather.SetProfessiaonalHunters(const Flag: Boolean);
begin
  if Flag = not FSetProfessiaonalHunters then
  case Flag of
    True: Inc(FChanges.rHuntable, 0.1);
    False: Dec(FChanges.rHuntable, 0.1);
  end;
  FSetProfessiaonalHunters := Flag;
end;

procedure TRateGather.SetHanamiParties(const Flag: Boolean);
begin
  if Flag = not FSetHanamiParties then
  case Flag of
    True: Inc(FChanges.rBerryBush, 0.05);
    False: Dec(FChanges.rBerryBush, 0.05);
  end;
  FSetHanamiParties := Flag;
end;

procedure TRateGather.SetYozakuraLanterns(const Flag: Boolean);
begin
  if Flag = not FSetYozakuraLanterns then
  case Flag of
    True: Inc(FChanges.rBerryBush, 0.1);
    False: Dec(FChanges.rBerryBush, 0.1);
  end;
  FSetYozakuraLanterns := Flag;
end;

procedure TRateGather.SetWaterWheel(const Flag: Boolean);
begin
  if Flag = not FSetWaterWheel then
  case Flag of
    True: Inc(FChanges.rTree, 0.05);
    False: Dec(FChanges.rTree, 0.05);
  end;
  FSetWaterWheel := Flag;
end;

procedure TRateGather.SetRegenerativeForestry(const Flag: Boolean);
begin
  if Flag = not FSetRegenerativeForestry then
  case Flag of
    True: Inc(FChanges.rTree, 0.1);
    False: Dec(FChanges.rTree, 0.1);
  end;
  FSetRegenerativeForestry := Flag;
end;

procedure TRateGather.SetTimberTrade(const Flag: Boolean);
begin
  if Flag = not FSetTimberTrade then
  case Flag of
    True: Inc(FChanges.rTree, 0.3);
    False: Dec(FChanges.rTree, 0.3);
  end;
  FSetTimberTrade := Flag;
end;

procedure TRateGather.SetTropicalTimberTrade(const Flag: Boolean);
begin
  if Flag = not FSetTropicalTimberTrade then
  case Flag of
    True: Inc(FChanges.rTree, 0.5);
    False: Dec(FChanges.rTree, 0.5);
  end;
  FSetTropicalTimberTrade := Flag;
end;

procedure TRateGather.SetBlanketFilters(const Flag: Boolean);
begin
  if Flag = not FSetBlanketFilters then
  case Flag of
    True: Inc(FChanges.rMine, 0.05);
    False: Dec(FChanges.rMine, 0.05);
  end;
  FSetBlanketFilters := Flag;
end;

procedure TRateGather.SetFlumeAndDitching(const Flag: Boolean);
begin
  if Flag = not FSetFlumeAndDitching then
  case Flag of
    True: Inc(FChanges.rMine, 0.1);
    False: Dec(FChanges.rMine, 0.1);
  end;
  FSetFlumeAndDitching := Flag;
end;

procedure TRateGather.SetCivilServants(const Flag: Boolean);
begin
  if Flag = not FSetCivilServants then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.05);
        Inc(FChanges.rMine, 0.05);
        Inc(FChanges.rTree, 0.05);
        Inc(FChanges.rBerryBush, 0.05);
        Inc(FChanges.rHerdable, 0.05);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.05);
        Dec(FChanges.rMine, 0.05);
        Dec(FChanges.rTree, 0.05);
        Dec(FChanges.rBerryBush, 0.05);
        Dec(FChanges.rHerdable, 0.05);
      end;
  end;
  FSetCivilServants := Flag;
end;

procedure TRateGather.SetImperialBeureaucracy(const Flag: Boolean);
begin
  if Flag = not FSetImperialBeureaucracy then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rMine, 0.1);
        Inc(FChanges.rTree, 0.1);
        Inc(FChanges.rBerryBush, 0.1);
        Inc(FChanges.rHerdable, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rMine, 0.1);
        Dec(FChanges.rTree, 0.1);
        Dec(FChanges.rBerryBush, 0.1);
        Dec(FChanges.rHerdable, 0.1);
      end;
  end;
  FSetImperialBeureaucracy := Flag;
end;

procedure TRateGather.SetPaddyThreshing(const Flag: Boolean);
begin
  if Flag = not FSetPaddyThreshing then
  case Flag of
    True:
      begin
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
        Inc(FChanges.rRicePaddyFood, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
        Dec(FChanges.rRicePaddyFood, 0.15);
      end;
  end;
  FSetPaddyThreshing := Flag;
end;

procedure TRateGather.SetIrrigationChannels(const Flag: Boolean);
begin
  if Flag = not FSetIrrigationChannels then
  case Flag of
    True:
      begin
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
        Inc(FChanges.rRicePaddyFood, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
        Dec(FChanges.rRicePaddyFood, 0.15);
      end;
  end;
  FSetIrrigationChannels := Flag;
end;

procedure TRateGather.SetDikeControlledCanals(const Flag: Boolean);
begin
  if Flag = not FSetDikeControlledCanals then
  case Flag of
    True:
      begin
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
        Inc(FChanges.rRicePaddyFood, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
        Dec(FChanges.rRicePaddyFood, 0.15);
      end;
  end;
  FSetDikeControlledCanals := Flag;
end;

procedure TRateGather.SetMechanizedRiceCultivation(const Flag: Boolean);
begin
  if Flag = not FSetMechanizedRiceCultivation then
  case Flag of
    True:
      begin
        Inc(FChanges.rMill, 0.5);
        Inc(FChanges.rFarm, 0.5);
        Inc(FChanges.rRicePaddyFood, 0.5);
      end;
    False:
      begin
        Dec(FChanges.rMill, 0.5);
        Dec(FChanges.rFarm, 0.5);
        Dec(FChanges.rRicePaddyFood, 0.5);
      end;
  end;
  FSetMechanizedRiceCultivation := Flag;
end;

procedure TRateGather.SetRiceSurplus(const Flag: Boolean);
begin
  if Flag = not FSetRiceSurplus then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyGold, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyGold, 0.1);
      end;
  end;
  FSetRiceSurplus := Flag;
end;

procedure TRateGather.SetRiceTrade(const Flag: Boolean);
begin
  if Flag = not FSetRiceTrade then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
      end;
  end;
  FSetRiceTrade := Flag;
end;

procedure TRateGather.SetRiceMarkets(const Flag: Boolean);
begin
  if Flag = not FSetRiceMarkets then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
      end;
  end;
  FSetRiceMarkets := Flag;
end;

procedure TRateGather.SetRiceExports(const Flag: Boolean);
begin
  if Flag = not FSetRiceExports then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
      end;
  end;
  FSetRiceExports := Flag;
end;

procedure TRateGather.SetCollectiveEconomy(const Flag: Boolean);
begin
  if Flag = not FSetCollectiveEconomy then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.5);
        Inc(FChanges.rRicePaddyGold, 0.5);
        Inc(FChanges.rMine, 0.5);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.5);
        Dec(FChanges.rRicePaddyGold, 0.5);
        Dec(FChanges.rMine, 0.5);
      end;
  end;
  FSetCollectiveEconomy := Flag;
end;

procedure TRateGather.SetVegetarianism(const Flag: Boolean);
begin
  if Flag = not FSetVegetarianism then
  case Flag of
    True: Inc(FChanges.rBerryBush, 0.4);
    False: Dec(FChanges.rBerryBush, 0.4);
  end;
  FSetVegetarianism := Flag;
end;

procedure TRateGather.SetIncanMetalworking(const Flag: Boolean);
begin
  if Flag = not FSetIncanMetalworking then
  case Flag of
    True: Inc(FChanges.rMine, 0.2);
    False: Dec(FChanges.rMine, 0.2);
  end;
  FSetIncanMetalworking := Flag;
end;

procedure TRateGather.SetKlamathWorkEthos(const Flag: Boolean);
begin
  if Flag = not FSetKlamathWorkEthos then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.05);
        Inc(FChanges.rMill, 0.05);
        Inc(FChanges.rBerryBush, 0.05);
        Inc(FChanges.rFarm, 0.05);
        Inc(FChanges.rTree, 0.05);
        Inc(FChanges.rPlantation, 0.05);
        Inc(FChanges.rMine, 0.05);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.05);
        Dec(FChanges.rMill, 0.05);
        Dec(FChanges.rBerryBush, 0.05);
        Dec(FChanges.rFarm, 0.05);
        Dec(FChanges.rTree, 0.05);
        Dec(FChanges.rPlantation, 0.05);
        Dec(FChanges.rMine, 0.05);
      end;
  end;
  FSetKlamathWorkEthos := Flag;
end;

procedure TRateGather.SetMayaCalendar(const Flag: Boolean);
begin
  if Flag = not FSetMayaCalendar then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
      end;
  end;
  FSetMayaCalendar := Flag;
end;

procedure TRateGather.SetNavajoCraftsmanship(const Flag: Boolean);
begin
  if Flag = not FSetNavajoCraftsmanship then
  case Flag of
    True:
      begin
        Inc(FChanges.rMine, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
        Inc(FChanges.rPlantation, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rMine, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
        Dec(FChanges.rPlantation, 0.2);
      end;
  end;
  FSetNavajoCraftsmanship := Flag;
end;

procedure TRateGather.SetWoodClearing(const Flag: Boolean);
begin
  if Flag = not FSetWoodClearing then
  case Flag of
    True: Inc(FChanges.rTree, 0.2);
    False: Dec(FChanges.rTree, 0.2);
  end;
  FSetWoodClearing := Flag;
end;

procedure TRateGather.SetFasting(const Flag: Boolean);
begin
  if Flag = not FSetFasting then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rHerdable, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rBerryBush, 0.1);
        Inc(FChanges.rFarm, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rTree, 0.1);
        Inc(FChanges.rMine, 0.1);
        Inc(FChanges.rRicePaddyGold, 0.1);
        Inc(FChanges.rPlantation, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rHerdable, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rBerryBush, 0.1);
        Dec(FChanges.rFarm, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rTree, 0.1);
        Dec(FChanges.rMine, 0.1);
        Dec(FChanges.rRicePaddyGold, 0.1);
        Dec(FChanges.rPlantation, 0.1);
      end;
  end;
  FSetFasting := Flag;
end;

procedure TRateGather.SetPunjabiNewYear(const Flag: Boolean);
begin
  if Flag = not FSetPunjabiNewYear then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyGold, 0.1);
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyGold, 0.1);
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
      end;
  end;
  FSetPunjabiNewYear := Flag;
end;

procedure TRateGather.SetZapotecFoodOfTheGods(const Flag: Boolean);
begin
  if Flag = not FSetZapotecFoodOfTheGods then
  case Flag of
    True:
      begin
        Inc(FChanges.rBerryBush, 0.1);
        Inc(FChanges.rRicePaddyGold, 0.1);
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rBerryBush, 0.1);
        Dec(FChanges.rRicePaddyGold, 0.1);
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
      end;
  end;
  FSetZapotecFoodOfTheGods := Flag;
end;

procedure TRateGather.SetCodeNapoleon(const Flag: Boolean);
begin
  if Flag = not FSetCodeNapoleon then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rBerryBush, 0.1);
        Inc(FChanges.rFarm, 0.1);
        Inc(FChanges.rTree, 0.1);
        Inc(FChanges.rMine, 0.1);
        Inc(FChanges.rPlantation, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rBerryBush, 0.1);
        Dec(FChanges.rFarm, 0.1);
        Dec(FChanges.rTree, 0.1);
        Dec(FChanges.rMine, 0.1);
        Dec(FChanges.rPlantation, 0.1);
      end;
  end;
  FSetCodeNapoleon := Flag;
end;

procedure TRateGather.SetEconmediaManor(const Flag: Boolean);
begin
  if Flag = not FSetEconmediaManor then
  case Flag of
    True:
      begin
        Dec(FChanges.rHuntable, 0.05);
        Inc(FChanges.rMill, 0.2);
        Dec(FChanges.rBerryBush, 0.05);
        Inc(FChanges.rFarm, 0.2);
        Dec(FChanges.rTree, 0.05);
        Dec(FChanges.rMine, 0.05);
        Dec(FChanges.rPlantation, 0.05);
      end;
    False:
      begin
        Inc(FChanges.rHuntable, 0.05);
        Dec(FChanges.rMill, 0.2);
        Inc(FChanges.rBerryBush, 0.05);
        Dec(FChanges.rFarm, 0.2);
        Inc(FChanges.rTree, 0.05);
        Inc(FChanges.rMine, 0.05);
        Inc(FChanges.rPlantation, 0.05);
      end;
  end;
  FSetEconmediaManor := Flag;
end;

procedure TRateGather.SetFoodSilosTeam(const Flag: Boolean);
begin
  if Flag = not FSetFoodSilosTeam then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
      end;
  end;
  FSetFoodSilosTeam := Flag;
end;

procedure TRateGather.SetFoodSilos(const Flag: Boolean);
begin
  if Flag = not FSetFoodSilos then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyFood, 0.15);
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyFood, 0.15);
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
      end;
  end;
  FSetFoodSilos := Flag;
end;

procedure TRateGather.SetSustainableAgriculture(const Flag: Boolean);
begin
  if Flag = not FSetSustainableAgriculture then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyFood, 0.15);
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyFood, 0.15);
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
      end;
  end;
  FSetSustainableAgriculture := Flag;
end;

procedure TRateGather.SetGrainMarket(const Flag: Boolean);
begin
  if Flag = not FSetGrainMarket then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyFood, 0.2);
        Inc(FChanges.rMill, 0.2);
        Inc(FChanges.rFarm, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyFood, 0.2);
        Dec(FChanges.rMill, 0.2);
        Dec(FChanges.rFarm, 0.2);
      end;
  end;
  FSetGrainMarket := Flag;
end;

procedure TRateGather.SetTempleOfXolotlSupport(const Flag: Boolean);
begin
  if Flag = not FSetTempleOfXolotlSupport then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
      end;
  end;
  FSetTempleOfXolotlSupport := Flag;
end;

procedure TRateGather.SetRefrigeration(const Flag: Boolean);
begin
  if Flag = not FSetRefrigeration then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.2);
        Inc(FChanges.rHerdable, 0.2);
        Inc(FChanges.rBerryBush, 0.2);
        Inc(FChanges.rRicePaddyFood, 0.2);
        Inc(FChanges.rMill, 0.2);
        Inc(FChanges.rFarm, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.2);
        Dec(FChanges.rHerdable, 0.2);
        Dec(FChanges.rBerryBush, 0.2);
        Dec(FChanges.rRicePaddyFood, 0.2);
        Dec(FChanges.rMill, 0.2);
        Dec(FChanges.rFarm, 0.2);
      end;
  end;
  FSetRefrigeration := Flag;
end;

procedure TRateGather.SetChonindoTeam(const Flag: Boolean);
begin
  if Flag = not FSetChonindoTeam then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.08);
        Inc(FChanges.rHerdable, 0.08);
        Inc(FChanges.rMill, 0.08);
        Inc(FChanges.rBerryBush, 0.08);
        Inc(FChanges.rFarm, 0.08);
        Inc(FChanges.rRicePaddyFood, 0.08);
        Inc(FChanges.rTree, 0.08);
        Inc(FChanges.rMine, 0.08);
        Inc(FChanges.rRicePaddyGold, 0.08);
        Inc(FChanges.rPlantation, 0.08);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.08);
        Dec(FChanges.rHerdable, 0.08);
        Dec(FChanges.rMill, 0.08);
        Dec(FChanges.rBerryBush, 0.08);
        Dec(FChanges.rFarm, 0.08);
        Dec(FChanges.rRicePaddyFood, 0.08);
        Dec(FChanges.rTree, 0.08);
        Dec(FChanges.rMine, 0.08);
        Dec(FChanges.rRicePaddyGold, 0.08);
        Dec(FChanges.rPlantation, 0.08);
      end;
  end;
  FSetChonindoTeam := Flag;
end;

procedure TRateGather.SetEconomicTheory(const Flag: Boolean);
begin
  if Flag = not FSetEconomicTheory then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rHerdable, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rBerryBush, 0.1);
        Inc(FChanges.rFarm, 0.1);
        Inc(FChanges.rTree, 0.1);
        Inc(FChanges.rMine, 0.1);
        Inc(FChanges.rPlantation, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rHerdable, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rBerryBush, 0.1);
        Dec(FChanges.rFarm, 0.1);
        Dec(FChanges.rTree, 0.1);
        Dec(FChanges.rMine, 0.1);
        Dec(FChanges.rPlantation, 0.1);
      end;
  end;
  FSetEconomicTheory := Flag;
end;

procedure TRateGather.SetFrenchAllies(const Flag: Boolean);
begin
  if Flag = not FSetFrenchAllies then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.05);
        Inc(FChanges.rHerdable, 0.05);
        Inc(FChanges.rMill, 0.05);
        Inc(FChanges.rBerryBush, 0.05);
        Inc(FChanges.rFarm, 0.05);
        Inc(FChanges.rTree, 0.05);
        Inc(FChanges.rMine, 0.05);
        Inc(FChanges.rPlantation, 0.05);
        Inc(FChanges.rRicePaddyFood, 0.05);
        Inc(FChanges.rRicePaddyGold, 0.05);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.05);
        Dec(FChanges.rHerdable, 0.05);
        Dec(FChanges.rMill, 0.05);
        Dec(FChanges.rBerryBush, 0.05);
        Dec(FChanges.rFarm, 0.05);
        Dec(FChanges.rTree, 0.05);
        Dec(FChanges.rMine, 0.05);
        Dec(FChanges.rPlantation, 0.05);
        Dec(FChanges.rRicePaddyFood, 0.05);
        Dec(FChanges.rRicePaddyGold, 0.05);
      end;
  end;
  FSetFrenchAllies := Flag;
end;

procedure TRateGather.SetKarniMata(const Flag: Boolean);
begin
  if Flag = not FSetKarniMata then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rHerdable, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rBerryBush, 0.1);
        Inc(FChanges.rFarm, 0.1);
        Inc(FChanges.rTree, 0.1);
        Inc(FChanges.rMine, 0.1);
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rRicePaddyGold, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rHerdable, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rBerryBush, 0.1);
        Dec(FChanges.rFarm, 0.1);
        Dec(FChanges.rTree, 0.1);
        Dec(FChanges.rMine, 0.1);
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rRicePaddyGold, 0.1);
      end;
  end;
  FSetKarniMata := Flag;
end;

procedure TRateGather.SetGuildArtisans(const Flag: Boolean);
begin
  if Flag = not FSetGuildArtisans then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.35);
        Inc(FChanges.rHerdable, 0.35);
        Inc(FChanges.rMill, 0.35);
        Inc(FChanges.rBerryBush, 0.35);
        Inc(FChanges.rTree, 0.35);
        Inc(FChanges.rMine, 0.35);
        Inc(FChanges.rPlantation, 0.35);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.35);
        Dec(FChanges.rHerdable, 0.35);
        Dec(FChanges.rMill, 0.35);
        Dec(FChanges.rBerryBush, 0.35);
        Dec(FChanges.rTree, 0.35);
        Dec(FChanges.rMine, 0.35);
        Dec(FChanges.rPlantation, 0.35);
      end;
  end;
  FSetGuildArtisans := Flag;
end;

procedure TRateGather.SetRumDistilleryTeam(const Flag: Boolean);
begin
  if Flag = not FSetRumDistilleryTeam then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.15);
        Inc(FChanges.rRicePaddyGold, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.15);
        Dec(FChanges.rRicePaddyGold, 0.15);
      end;
  end;
  FSetRumDistilleryTeam := Flag;
end;

procedure TRateGather.SetRumDistillery(const Flag: Boolean);
begin
  if Flag = not FSetRumDistillery then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
      end;
  end;
  FSetRumDistillery := Flag;
end;

procedure TRateGather.SetCigarRoller(const Flag: Boolean);
begin
  if Flag = not FSetCigarRoller then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.2);
        Inc(FChanges.rRicePaddyGold, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.2);
        Dec(FChanges.rRicePaddyGold, 0.2);
      end;
  end;
  FSetCigarRoller := Flag;
end;

procedure TRateGather.SetTextileMill(const Flag: Boolean);
begin
  if Flag = not FSetTextileMill then
  case Flag of
    True:
      begin
        Inc(FChanges.rPlantation, 0.25);
        Inc(FChanges.rRicePaddyGold, 0.25);
      end;
    False:
      begin
        Dec(FChanges.rPlantation, 0.25);
        Dec(FChanges.rRicePaddyGold, 0.25);
      end;
  end;
  FSetTextileMill := Flag;
end;

procedure TRateGather.SetRoyalMint(const Flag: Boolean);
begin
  if Flag = not FSetRoyalMint then
  case Flag of
    True:
      begin
        Inc(FChanges.rMine, 0.25);
        Inc(FChanges.rRicePaddyGold, 0.25);
        Inc(FChanges.rPlantation, 0.25);
      end;
    False:
      begin
        Dec(FChanges.rMine, 0.25);
        Dec(FChanges.rRicePaddyGold, 0.25);
        Dec(FChanges.rPlantation, 0.25);
      end;
  end;
  FSetRoyalMint := Flag;
end;

procedure TRateGather.SetSawmillsTeam(const Flag: Boolean);
begin
  if Flag = not FSetSawmillsTeam then
  case Flag of
    True: Inc(FChanges.rTree, 0.1);
    False: Dec(FChanges.rTree, 0.1);
  end;
  FSetSawmillsTeam := Flag;
end;

procedure TRateGather.SetSawmills(const Flag: Boolean);
begin
  if Flag = not FSetSawmills then
  case Flag of
    True: Inc(FChanges.rTree, 0.15);
    False: Dec(FChanges.rTree, 0.15);
  end;
  FSetSawmills := Flag;
end;

procedure TRateGather.SetSawmills2(const Flag: Boolean);
begin
  if Flag = not FSetSawmills2 then
  case Flag of
    True: Inc(FChanges.rTree, 0.15);
    False: Dec(FChanges.rTree, 0.15);
  end;
  FSetSawmills2 := Flag;
end;

procedure TRateGather.SetExoticHardwoodsTeam(const Flag: Boolean);
begin
  if Flag = not FSetExoticHardwoodsTeam then
  case Flag of
    True: Inc(FChanges.rTree, 0.15);
    False: Dec(FChanges.rTree, 0.15);
  end;
  FSetExoticHardwoodsTeam := Flag;
end;

procedure TRateGather.SetExoticHardwoods(const Flag: Boolean);
begin
  if Flag = not FSetExoticHardwoods then
  case Flag of
    True: Inc(FChanges.rTree, 0.2);
    False: Dec(FChanges.rTree, 0.2);
  end;
  FSetExoticHardwoods := Flag;
end;

procedure TRateGather.SetWoodcrafting(const Flag: Boolean);
begin
  if Flag = not FSetWoodcrafting then
  case Flag of
    True: Inc(FChanges.rTree, 0.2);
    False: Dec(FChanges.rTree, 0.2);
  end;
  FSetWoodcrafting := Flag;
end;

procedure TRateGather.SetFullingMills(const Flag: Boolean);
begin
  if Flag = not FSetFullingMills then
  case Flag of
    True: Inc(FChanges.rHerdable, 3);
    False: Dec(FChanges.rHerdable, 3);
  end;
  FSetFullingMills := Flag;
end;

procedure TRateGather.SetFurrierHuntTeam(const Flag: Boolean);
begin
  if Flag = not FSetFurrierHuntTeam then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rBerryBush, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rBerryBush, 0.15);
      end;
  end;
  FSetFurrierHuntTeam := Flag;
end;

procedure TRateGather.SetFurrierHunt(const Flag: Boolean);
begin
  if Flag = not FSetFurrierHunt then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.15);
        Inc(FChanges.rBerryBush, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.15);
        Dec(FChanges.rBerryBush, 0.2);
      end;
  end;
  FSetFurrierHunt := Flag;
end;

procedure TRateGather.SetSpiceTradeTeam(const Flag: Boolean);
begin
  if Flag = not FSetSpiceTradeTeam then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.1);
        Inc(FChanges.rBerryBush, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.1);
        Dec(FChanges.rBerryBush, 0.15);
      end;
  end;
  FSetSpiceTradeTeam := Flag;
end;

procedure TRateGather.SetSpiceTrade(const Flag: Boolean);
begin
  if Flag = not FSetSpiceTrade then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.2);
        Inc(FChanges.rBerryBush, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.2);
        Dec(FChanges.rBerryBush, 0.2);
      end;
  end;
  FSetSpiceTrade := Flag;
end;

procedure TRateGather.SetGreatHunter(const Flag: Boolean);
begin
  if Flag = not FSetGreatHunter then
  case Flag of
    True:
      begin
        Inc(FChanges.rHuntable, 0.2);
        Inc(FChanges.rBerryBush, 0.2);
      end;
    False:
      begin
        Dec(FChanges.rHuntable, 0.2);
        Dec(FChanges.rBerryBush, 0.2);
      end;
  end;
  FSetGreatHunter := Flag;
end;

procedure TRateGather.SetSilversmithTeam(const Flag: Boolean);
begin
  if Flag = not FSetSilversmithTeam then
  case Flag of
    True: Inc(FChanges.rMine, 0.1);
    False: Dec(FChanges.rMine, 0.1);
  end;
  FSetSilversmithTeam := Flag;
end;

procedure TRateGather.SetSilversmith(const Flag: Boolean);
begin
  if Flag = not FSetSilversmith then
  case Flag of
    True: Inc(FChanges.rMine, 0.2);
    False: Dec(FChanges.rMine, 0.2);
  end;
  FSetSilversmith := Flag;
end;

procedure TRateGather.SetSilversmith2(const Flag: Boolean);
begin
  if Flag = not FSetSilversmith2 then
  case Flag of
    True: Inc(FChanges.rMine, 0.2);
    False: Dec(FChanges.rMine, 0.2);
  end;
  FSetSilversmith2 := Flag;
end;

procedure TRateGather.SetIronmongerTeam(const Flag: Boolean);
begin
  if Flag = not FSetIronmongerTeam then
  case Flag of
    True: Inc(FChanges.rMine, 0.1);
    False: Dec(FChanges.rMine, 0.1);
  end;
  FSetIronmongerTeam := Flag;
end;

procedure TRateGather.SetEstablishIronmonger(const Flag: Boolean);
begin
  if Flag = not FSetEstablishIronmonger then
  case Flag of
    True: Inc(FChanges.rMine, 0.2);
    False: Dec(FChanges.rMine, 0.2);
  end;
  FSetEstablishIronmonger := Flag;
end;

procedure TRateGather.SetAztecMining(const Flag: Boolean);
begin
  if Flag = not FSetAztecMining then
  case Flag of
    True: Inc(FChanges.rMine, 0.4);
    False: Dec(FChanges.rMine, 0.4);
  end;
  FSetAztecMining := Flag;
end;

procedure TRateGather.SetChinampa(const Flag: Boolean);
begin
  if Flag = not FSetChinampa then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyGold, 0.1);
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyGold, 0.1);
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
      end;
  end;
  FSetChinampa := Flag;
end;

procedure TRateGather.SetGreatChinampa(const Flag: Boolean);
begin
  if Flag = not FSetGreatChinampa then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyGold, 0.15);
        Inc(FChanges.rPlantation, 0.15);
        Inc(FChanges.rRicePaddyFood, 0.15);
        Inc(FChanges.rMill, 0.15);
        Inc(FChanges.rFarm, 0.15);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyGold, 0.15);
        Dec(FChanges.rPlantation, 0.15);
        Dec(FChanges.rRicePaddyFood, 0.15);
        Dec(FChanges.rMill, 0.15);
        Dec(FChanges.rFarm, 0.15);
      end;
  end;
  FSetGreatChinampa := Flag;
end;

procedure TRateGather.SetReclaimedLand(const Flag: Boolean);
begin
  if Flag = not FSetReclaimedLand then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyGold, 0.05);
        Inc(FChanges.rPlantation, 0.05);
        Inc(FChanges.rRicePaddyFood, 0.05);
        Inc(FChanges.rMill, 0.05);
        Inc(FChanges.rFarm, 0.05);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyGold, 0.05);
        Dec(FChanges.rPlantation, 0.05);
        Dec(FChanges.rRicePaddyFood, 0.05);
        Dec(FChanges.rMill, 0.05);
        Dec(FChanges.rFarm, 0.05);
      end;
  end;
  FSetReclaimedLand := Flag;
end;

procedure TRateGather.SetFloodedParcel(const Flag: Boolean);
begin
  if Flag = not FSetFloodedParcel then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyGold, 0.08);
        Inc(FChanges.rPlantation, 0.08);
        Inc(FChanges.rRicePaddyFood, 0.08);
        Inc(FChanges.rMill, 0.08);
        Inc(FChanges.rFarm, 0.08);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyGold, 0.08);
        Dec(FChanges.rPlantation, 0.08);
        Dec(FChanges.rRicePaddyFood, 0.08);
        Dec(FChanges.rMill, 0.08);
        Dec(FChanges.rFarm, 0.08);
      end;
  end;
  FSetFloodedParcel := Flag;
end;

procedure TRateGather.SetTerracedHillsides(const Flag: Boolean);
begin
  if Flag = not FSetTerracedHillsides then
  case Flag of
    True:
      begin
        Inc(FChanges.rRicePaddyGold, 0.1);
        Inc(FChanges.rPlantation, 0.1);
        Inc(FChanges.rRicePaddyFood, 0.1);
        Inc(FChanges.rMill, 0.1);
        Inc(FChanges.rFarm, 0.1);
      end;
    False:
      begin
        Dec(FChanges.rRicePaddyGold, 0.1);
        Dec(FChanges.rPlantation, 0.1);
        Dec(FChanges.rRicePaddyFood, 0.1);
        Dec(FChanges.rMill, 0.1);
        Dec(FChanges.rFarm, 0.1);
      end;
  end;
  FSetTerracedHillsides := Flag;
end;

procedure TRateGather.SetCherryBlossomFestival(const Flag: Boolean);
begin
  if Flag = not FSetCherryBlossomFestival then
  case Flag of
    True: Inc(FChanges.rBerryBush, 0.15);
    False: Dec(FChanges.rBerryBush, 0.15);
  end;
  FSetCherryBlossomFestival := Flag;
end;

function TRateGather.CalcHuntable: Extended;
begin
  Result := FRate.rHuntable * (FChanges.rHuntable + FTheWiseWomanSiox);
end;

function TRateGather.CalcHerdable: Extended;
begin
  Result := FRate.rHerdable * FChanges.rHerdable;
end;

function TRateGather.CalcMill: Extended;
begin
  Result := FRate.rMill * FChanges.rMill;
end;

function TRateGather.CalcBerryBush: Extended;
begin
  Result := FRate.rBerryBush * FChanges.rBerryBush;
end;

function TRateGather.CalcFarm: Extended;
begin
  Result := FRate.rFarm * (FChanges.rFarm + FTheWiseWomanAztecs);
end;

function TRateGather.CalcRicePaddyFood: Extended;
begin
  Result := FRate.rRicePaddyFood * FChanges.rRicePaddyFood;
end;

function TRateGather.CalcTree: Extended;
begin
  Result := FRate.rTree * FChanges.rTree;
end;

function TRateGather.CalcMine: Extended;
begin
  Result := FRate.rMine * FChanges.rMine;
end;

function TRateGather.CalcRicePaddyGold: Extended;
begin
  Result := FRate.rRicePaddyGold * FChanges.rRicePaddyGold;
end;

function TRateGather.CalcPlantation: Extended;
begin
  Result := FRate.rPlantation * (FChanges.rPlantation + FTheWiseWomanAztecs);
end;

end.
