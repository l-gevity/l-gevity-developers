# Complete Manifest

Complete example response for GET /v1/manifest.

Generated from the private runtime manifest source with timestamp 2026-06-17T00:00:00.000Z.

```json
{
  "apiVersion": "v1",
  "generatedAt": "2026-06-17T00:00:00.000Z",
  "products": [
    {
      "id": "biometric-engine-v1",
      "name": "Biometric engine",
      "scopes": ["product:call"],
      "billableUnit": "successful_product_call",
      "operations": ["createBiometricAssessment"]
    }
  ],
  "biomarkers": [
    {
      "code": "sittingRising",
      "name": "Sitting-Rising Test",
      "units": ["score 0-10"],
      "valueType": "number"
    },
    {
      "code": "yBalanceAnterior",
      "name": "Y-Balance voorwaarts",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "ankleDorsiflexion",
      "name": "Enkeldorsaalflexie",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "singleLegSquat",
      "name": "Éénbeenshurk",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "singleLegHopDistance",
      "name": "Éénbeen Hopdistantie",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "leftComposite",
      "name": "LEFT test",
      "units": ["s"],
      "valueType": "number"
    },
    {
      "code": "coreEndurance",
      "name": "McGill Plankhouding",
      "units": ["s"],
      "valueType": "number"
    },
    {
      "code": "singleLegBalance",
      "name": "Éénbeenstand",
      "units": ["s"],
      "valueType": "number"
    },
    {
      "code": "squatPattern",
      "name": "Diepe Squat Patroon",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "hingePattern",
      "name": "Heupbuiging",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "hipInternalRotation",
      "name": "Heup Inwaartse Rotatie",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "rotationPattern",
      "name": "Bird Dog",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "loadTransfer",
      "name": "Rechte Beenhef (ASLR)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "coreBrace",
      "name": "Core Spanning (360° Expansie)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "diaphragmControl",
      "name": "Diepe ademhaling",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "pelvicFloorControl",
      "name": "Bekkenbodemcontrole",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "carryPattern",
      "name": "Farmer Carry",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "overheadLungeWalk",
      "name": "Éénarm Overhead Uitvalspas",
      "units": ["stappen 0-3"],
      "valueType": "number"
    },
    {
      "code": "thoracicRotation",
      "name": "Thoracale Rotatie",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "thoracicExtension",
      "name": "Thoracale Extensie",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "staticPosturalAlignment",
      "name": "Lichaamshouding",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "lumbarFlexion",
      "name": "Vinger naar Vloer",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "thomasTest",
      "name": "Thomas Test",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "yBalanceAnteriorLeft",
      "name": "Y-Balance voorwaarts (Left)",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "yBalanceAnteriorRight",
      "name": "Y-Balance voorwaarts (Right)",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "ankleDorsiflexionLeft",
      "name": "Enkeldorsaalflexie (Left)",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "ankleDorsiflexionRight",
      "name": "Enkeldorsaalflexie (Right)",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "singleLegSquatLeft",
      "name": "Éénbeenshurk (Left)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "singleLegSquatRight",
      "name": "Éénbeenshurk (Right)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "singleLegHopDistanceLeft",
      "name": "Éénbeen Hopdistantie (Left)",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "singleLegHopDistanceRight",
      "name": "Éénbeen Hopdistantie (Right)",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "singleLegBalanceLeft",
      "name": "Éénbeenstand (Left)",
      "units": ["s"],
      "valueType": "number"
    },
    {
      "code": "singleLegBalanceRight",
      "name": "Éénbeenstand (Right)",
      "units": ["s"],
      "valueType": "number"
    },
    {
      "code": "hipInternalRotationLeft",
      "name": "Heup Inwaartse Rotatie (Left)",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "hipInternalRotationRight",
      "name": "Heup Inwaartse Rotatie (Right)",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "rotationPatternLeft",
      "name": "Bird Dog (Left)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "rotationPatternRight",
      "name": "Bird Dog (Right)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "loadTransferLeft",
      "name": "Rechte Beenhef (ASLR) (Left)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "loadTransferRight",
      "name": "Rechte Beenhef (ASLR) (Right)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "carryPatternLeft",
      "name": "Farmer Carry (Left)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "carryPatternRight",
      "name": "Farmer Carry (Right)",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "overheadLungeWalkLeft",
      "name": "Éénarm Overhead Uitvalspas (Left)",
      "units": ["stappen 0-3"],
      "valueType": "number"
    },
    {
      "code": "overheadLungeWalkRight",
      "name": "Éénarm Overhead Uitvalspas (Right)",
      "units": ["stappen 0-3"],
      "valueType": "number"
    },
    {
      "code": "thoracicRotationLeft",
      "name": "Thoracale Rotatie (Left)",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "thoracicRotationRight",
      "name": "Thoracale Rotatie (Right)",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "thomasTestLeft",
      "name": "Thomas Test (Left)",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "thomasTestRight",
      "name": "Thomas Test (Right)",
      "units": ["graden"],
      "valueType": "number"
    },
    {
      "code": "biologicalAge",
      "name": "Biologische Leeftijd",
      "units": ["jaren"],
      "valueType": "number"
    },
    {
      "code": "phenologicalAge",
      "name": "Fenologische Leeftijd",
      "units": ["jaren"],
      "valueType": "number"
    },
    {
      "code": "vitalReserve",
      "name": "Biologische Veerkracht",
      "units": ["%"],
      "valueType": "number"
    },
    {
      "code": "dataQuality",
      "name": "Data Kwaliteit",
      "units": ["%"],
      "valueType": "number"
    },
    {
      "code": "birthYear",
      "name": "Geboortejaar",
      "units": ["year"],
      "valueType": "number"
    },
    {
      "code": "gender",
      "name": "Geslacht",
      "units": [],
      "valueType": "string"
    },
    {
      "code": "height",
      "name": "Lengte",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "bodyWeight",
      "name": "Gewicht",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "waistCircumference",
      "name": "Middelomtrek",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "hipCircumference",
      "name": "Heupomtrek",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "wristCircumference",
      "name": "Polsomtrek",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "ankleCircumference",
      "name": "Enkelomtrek",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "comorbidity",
      "name": "Comorbiditeit Status",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "isDemoMode",
      "name": "Demo Mode",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "creatinine",
      "name": "Creatinine",
      "units": ["mg/dL"],
      "valueType": "number"
    },
    {
      "code": "albumin",
      "name": "Albumine",
      "units": ["g/dL"],
      "valueType": "number"
    },
    {
      "code": "hba1c",
      "name": "HbA1c",
      "units": ["%"],
      "valueType": "number"
    },
    {
      "code": "apoB",
      "name": "Apo-B",
      "units": ["g/L"],
      "valueType": "number"
    },
    {
      "code": "glucose",
      "name": "Nuchter Glucose",
      "units": ["mg/dL"],
      "valueType": "number"
    },
    {
      "code": "hsCRP",
      "name": "hs-CRP",
      "units": ["mg/L"],
      "valueType": "number"
    },
    {
      "code": "insulin",
      "name": "Nuchter Insuline",
      "units": ["μU/mL"],
      "valueType": "number"
    },
    {
      "code": "insulinResistance",
      "name": "HOMA-IR",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "triglycerides",
      "name": "Triglycerides",
      "units": ["mmol/L"],
      "valueType": "number"
    },
    {
      "code": "ldlCholesterol",
      "name": "LDL-C",
      "units": ["mmol/L"],
      "valueType": "number"
    },
    {
      "code": "hdlCholesterol",
      "name": "HDL-C",
      "units": ["mmol/L"],
      "valueType": "number"
    },
    {
      "code": "totalCholesterol",
      "name": "Cholesterol",
      "units": ["mmol/L"],
      "valueType": "number"
    },
    {
      "code": "crp",
      "name": "CRP",
      "units": ["mg/L"],
      "valueType": "number"
    },
    {
      "code": "atherogenicIndex",
      "name": "Atherogenische Index",
      "units": ["ratio"],
      "valueType": "number"
    },
    {
      "code": "remnantCholesterol",
      "name": "Remnant Cholesterol",
      "units": ["mmol/L"],
      "valueType": "number"
    },
    {
      "code": "totalTestosterone",
      "name": "Totale Testosteron",
      "units": ["nmol/L"],
      "valueType": "number"
    },
    {
      "code": "freeTestosterone",
      "name": "Vrij Testosteron",
      "units": ["pmol/L"],
      "valueType": "number"
    },
    {
      "code": "vitaminD",
      "name": "Vitamin D (25-OH)",
      "units": ["nmol/L"],
      "valueType": "number"
    },
    {
      "code": "estradiol",
      "name": "Estradiol (E2)",
      "units": ["pmol/L"],
      "valueType": "number"
    },
    {
      "code": "homocysteine",
      "name": "Homocysteine",
      "units": ["µmol/L"],
      "valueType": "number"
    },
    {
      "code": "tsh",
      "name": "Thyroide Hormoon",
      "units": ["mIU/L"],
      "valueType": "number"
    },
    {
      "code": "ggt",
      "name": "GGT",
      "units": ["U/L"],
      "valueType": "number"
    },
    {
      "code": "uricAcid",
      "name": "Urinezuur",
      "units": ["mg/dL"],
      "valueType": "number"
    },
    {
      "code": "alkalinePhosphatase",
      "name": "Alkalische Fosfatase",
      "units": ["U/L"],
      "valueType": "number"
    },
    {
      "code": "wbc",
      "name": "Witte Bloedcellen",
      "units": ["10³/μL"],
      "valueType": "number"
    },
    {
      "code": "lymphocytePercent",
      "name": "Lymfocyten %",
      "units": ["%"],
      "valueType": "number"
    },
    {
      "code": "rdw",
      "name": "RDW",
      "units": ["%"],
      "valueType": "number"
    },
    {
      "code": "mcv",
      "name": "MCV",
      "units": ["fL"],
      "valueType": "number"
    },
    {
      "code": "ntProBNP",
      "name": "NT-proBNP",
      "units": ["pg/mL"],
      "valueType": "number"
    },
    {
      "code": "nlr",
      "name": "NLR",
      "units": ["ratio"],
      "valueType": "number"
    },
    {
      "code": "gdf15",
      "name": "GDF-15",
      "units": ["ng/L"],
      "valueType": "number"
    },
    {
      "code": "lpA",
      "name": "Lipoproteïne (a)",
      "units": ["mg/dL"],
      "valueType": "number"
    },
    {
      "code": "ferritin",
      "name": "Ferritine",
      "units": ["ng/mL"],
      "valueType": "number"
    },
    {
      "code": "omega3Index",
      "name": "Omega-3 Index",
      "units": ["%"],
      "valueType": "number"
    },
    {
      "code": "cystatinC",
      "name": "Cystatin C",
      "units": ["mg/L"],
      "valueType": "number"
    },
    {
      "code": "suPAR",
      "name": "suPAR",
      "units": ["ng/mL"],
      "valueType": "number"
    },
    {
      "code": "dunedinPACE",
      "name": "DunedinPACE",
      "units": ["years/year"],
      "valueType": "number"
    },
    {
      "code": "systolicBP",
      "name": "Systolische druk",
      "units": ["mmHg"],
      "valueType": "number"
    },
    {
      "code": "diastolicBP",
      "name": "Diastolische druk",
      "units": ["mmHg"],
      "valueType": "number"
    },
    {
      "code": "restingHR",
      "name": "Rusthartslag",
      "units": ["bpm"],
      "valueType": "number"
    },
    {
      "code": "hrvRMSSD",
      "name": "HRV (RMSSD)",
      "units": ["ms"],
      "valueType": "number"
    },
    {
      "code": "bodyFat",
      "name": "Vetpercentage",
      "units": ["%"],
      "valueType": "number"
    },
    {
      "code": "muscleMass",
      "name": "Spiermassa",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "waistHipRatio",
      "name": "Middel-Heup Ratio",
      "units": ["ratio"],
      "valueType": "number"
    },
    {
      "code": "waistToHeightRatio",
      "name": "Taille-Lengte Ratio",
      "units": ["ratio"],
      "valueType": "number"
    },
    {
      "code": "visceralFat",
      "name": "Visceraal vet",
      "units": ["cm²"],
      "valueType": "number"
    },
    {
      "code": "heartRateRecovery",
      "name": "Hartslag Herstel",
      "units": ["bpm"],
      "valueType": "number"
    },
    {
      "code": "vo2max",
      "name": "VO₂max",
      "units": ["ml/kg/min"],
      "valueType": "number"
    },
    {
      "code": "cooperTest",
      "name": "Cooper Test",
      "units": ["m / 12 min"],
      "valueType": "number"
    },
    {
      "code": "ftpBike",
      "name": "FTP (Bike)",
      "units": ["W"],
      "valueType": "number"
    },
    {
      "code": "row2000m",
      "name": "2000m Roeien",
      "units": ["mm:ss"],
      "valueType": "number"
    },
    {
      "code": "handgrip",
      "name": "Handkracht",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "pushup",
      "name": "Push-up Test",
      "units": ["reps"],
      "valueType": "number"
    },
    {
      "code": "chairStand",
      "name": "Chair-Stand Test",
      "units": ["reps"],
      "valueType": "number"
    },
    {
      "code": "armCurl",
      "name": "Arm Buig Test",
      "units": ["reps"],
      "valueType": "number"
    },
    {
      "code": "stroke7Row",
      "name": "7 Stroke Row Challenge",
      "units": ["W"],
      "valueType": "number"
    },
    {
      "code": "legPress",
      "name": "Leg Press",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "neuromuscularStrengthIndex",
      "name": "Neuromusculaire Krachtindex",
      "units": ["z"],
      "valueType": "number"
    },
    {
      "code": "dotsScore",
      "name": "Kracht Score",
      "units": ["points"],
      "valueType": "number"
    },
    {
      "code": "upAndGo",
      "name": "Timed Up-and-Go Test",
      "units": ["seconds"],
      "valueType": "number"
    },
    {
      "code": "sitAndReach",
      "name": "Sit-and-Reach Test",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "breathHoldBolt",
      "name": "BOLT",
      "units": ["seconds"],
      "valueType": "number"
    },
    {
      "code": "dsst",
      "name": "DSS-Test",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "trailMakingB",
      "name": "Trail Making Test B",
      "units": ["seconds"],
      "valueType": "number"
    },
    {
      "code": "reactionTime",
      "name": "Reactie Tijd",
      "units": ["ms"],
      "valueType": "number"
    },
    {
      "code": "digitSpanBackward",
      "name": "Digit Span Backward",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "verbalFluency",
      "name": "Verbal Fluency Test",
      "units": ["words/min"],
      "valueType": "number"
    },
    {
      "code": "corsiBlockSpan",
      "name": "Corsi Block Span",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "stroopInterference",
      "name": "Stroop Test (100 incongruent trials)",
      "units": ["seconds"],
      "valueType": "number"
    },
    {
      "code": "fingerTapping",
      "name": "Finger Tapping Test",
      "units": ["Hz"],
      "valueType": "number"
    },
    {
      "code": "srhScore",
      "name": "Zelfgemeten gezondheid",
      "units": ["/100"],
      "valueType": "number"
    },
    {
      "code": "dailySteps",
      "name": "Stapteller",
      "units": ["steps/day"],
      "valueType": "number"
    },
    {
      "code": "lifestyleExercise",
      "name": "Sport",
      "units": ["/100"],
      "valueType": "number"
    },
    {
      "code": "lifestyle",
      "name": "Leefstijl",
      "units": ["/100"],
      "valueType": "number"
    },
    {
      "code": "synergyPlaqueRupture",
      "name": "Aderverkalking & ontsteking",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyEndothelialDamage",
      "name": "Vaatschade door suiker & roken",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyPlaqueInstability",
      "name": "Hart onder druk bij ontsteking",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyAIP",
      "name": "Atherogene index",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyMetabolicCompensation",
      "name": "Verborgen insulineresistentie",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyInflammatoryLoad",
      "name": "Dubbele ontstekingsbelasting",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyChronicInflammation",
      "name": "Leefstijl-gedreven ontsteking",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyMetabolicInflexibility",
      "name": "Verstoorde stofwisseling",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyPlaqueVulnerability",
      "name": "Vaatrisico door roken",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyAutonomicBurnout",
      "name": "Stresshart-risico",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyLiverStress",
      "name": "Lever onder druk",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyJunkVolumeMetabolism",
      "name": "Ineffectief trainingspatroon",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyCatabolicOvertraining",
      "name": "Overbelasting zonder herstel",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyIneffectiveStrength",
      "name": "Onbenut krachtpotentieel",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyCardioResidualRisk",
      "name": "Krachttraining zonder conditie",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyAntioxidantOverload",
      "name": "Antioxidant-stack overload",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "synergyBiomechanicalWear",
      "name": "Overbelaste gewrichten",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeAthlete",
      "name": "Sporthart Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypePathology",
      "name": "Pathologische Bradycardie",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeMuscularAthlete",
      "name": "Spiermassa Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeRenalRisk",
      "name": "Nierfunctie Risico",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeLeanAthlete",
      "name": "Slank & Fit Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeFrailty",
      "name": "Kwetsbaarheid (Frailty) Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypePowerAthlete",
      "name": "Krachtsporter Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeMetabolicSyndrome",
      "name": "Metabool Syndroom",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeBenignLDL",
      "name": "Groot LDL Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeAtherogenicLDL",
      "name": "Atherogeen LDL Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeInsulinSensitive",
      "name": "Insulinegevoelig Fenotype",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeHypoglycemiaRisk",
      "name": "Hypoglykemie Risico",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeAthleteBP",
      "name": "Sportief Lage Bloeddruk",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeAutonomicFrailty",
      "name": "Autonome Disregulatie",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeEliteLipids",
      "name": "Optimaal Lipidenprofiel",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeHealthyHighHDL",
      "name": "Functioneel Hoog HDL",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeMetabolicClean",
      "name": "Metabole Efficiëntie",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "phenotypeSmokerAntioxidant",
      "name": "Roker met antioxidant-suppletie",
      "units": ["Index"],
      "valueType": "number"
    },
    {
      "code": "cardiovascular",
      "name": "cardiovascular",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "metabolic",
      "name": "metabolic",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "bloodStatus",
      "name": "bloodStatus",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "structural",
      "name": "structural",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "immune",
      "name": "immune",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "hormonal",
      "name": "hormonal",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "totalScore",
      "name": "totalScore",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "singleLegCalfRaises",
      "name": "Single Leg Calf Raises",
      "units": ["reps"],
      "valueType": "number"
    },
    {
      "code": "backSquat",
      "name": "Kniebuig",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "deadLift",
      "name": "Deadlift",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "benchPress",
      "name": "Bench Press",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "overheadPress",
      "name": "Military Press",
      "units": ["kg"],
      "valueType": "number"
    },
    {
      "code": "standingLongJump",
      "name": "Staande Versprong",
      "units": ["cm"],
      "valueType": "number"
    },
    {
      "code": "oneMinRow",
      "name": "1-Minuut Roeien",
      "units": ["m"],
      "valueType": "number"
    },
    {
      "code": "maxRpmBike",
      "name": "Max RPM Fiets",
      "units": ["rpm"],
      "valueType": "number"
    },
    {
      "code": "oneMinBike",
      "name": "1-Minuut Fiets",
      "units": ["m"],
      "valueType": "number"
    },
    {
      "code": "maxPowerBike",
      "name": "Max Power Fiets",
      "units": ["W"],
      "valueType": "number"
    },
    {
      "code": "maxPowerCrossTrainer",
      "name": "Max Power Cross-Trainer",
      "units": ["W"],
      "valueType": "number"
    },
    {
      "code": "oneMinCrossTrainer",
      "name": "1-Minuut Cross-Trainer",
      "units": ["W"],
      "valueType": "number"
    },
    {
      "code": "twelveMinCrossTrainer",
      "name": "12-Minuten Cross-Trainer",
      "units": ["m"],
      "valueType": "number"
    },
    {
      "code": "overheadSquat",
      "name": "Overhead Squat",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "dumbbellLunge",
      "name": "Dumbbell Lunge",
      "units": ["score 0-3"],
      "valueType": "number"
    },
    {
      "code": "stability",
      "name": "stability",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "flexibility",
      "name": "flexibility",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "strength",
      "name": "strength",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "power",
      "name": "power",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "endurance",
      "name": "endurance",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "speed",
      "name": "speed",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "rmet",
      "name": "rmet",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "delayedRecall",
      "name": "delayedRecall",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "complexAttention",
      "name": "complexAttention",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "executiveFunctions",
      "name": "executiveFunctions",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "learningMemory",
      "name": "learningMemory",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "language",
      "name": "language",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "perceptualMotor",
      "name": "perceptualMotor",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "socialCognition",
      "name": "socialCognition",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "energy",
      "name": "Energie",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "sleep",
      "name": "Slaap",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "clarity",
      "name": "Helderheid",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "appetite",
      "name": "Eetlust",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "bowelType",
      "name": "bowelType",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "bowelFrequency",
      "name": "bowelFrequency",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "movement",
      "name": "Bewegen",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "energetic",
      "name": "Vitaliteit",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "relaxed",
      "name": "Mentaal Welzijn",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "purpose",
      "name": "Zingeving",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "connected",
      "name": "Verbondenheid",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mastery",
      "name": "Meesterschap",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "workLifeBalance",
      "name": "Balans",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "financialSecurity",
      "name": "Zekerheid",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "peaceOfMind",
      "name": "Gemoedsrust",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "tobaccoUse",
      "name": "Tabaksgebruik",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "dietQuality",
      "name": "Voedingspatroon",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "bodyComposition",
      "name": "Lichaamssamenstelling",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "dailyMovement",
      "name": "Dagelijkse activiteit",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "alcoholUse",
      "name": "Alcoholgebruik",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "regularexercise",
      "name": "Regelmatig bewegen",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "strengthtraining",
      "name": "Krachttraining",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "regularnuts",
      "name": "Regelmatig noten eten",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "sleepHours",
      "name": "Slaapduur",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "socialIntegration",
      "name": "Sociale verbinding",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "stressRegulation",
      "name": "Stressregulatie",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "regularsauna",
      "name": "Regelmatig saunabezoek",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "purposemeaning",
      "name": "Zingeving en levensdoel",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "optimism",
      "name": "Optimistische levenshouding",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "regularcoffee",
      "name": "Regelmatig koffie (matig)",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "shiftwork",
      "name": "Onregelmatige diensten / nachtdienst",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "mealRhythm",
      "name": "Eetritme",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "medicalCare",
      "name": "Medische preventieve zorg",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "financialsecurity",
      "name": "Financiële zekerheid",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "sunexposure",
      "name": "Regelmatige blootstelling aan daglicht",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "greenspace",
      "name": "Regelmatige blootstelling aan natuur",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "cognitivestimulation",
      "name": "Leren en persoonlijke groei",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "mentalstillness",
      "name": "Mentale rust / meditatie",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "goodhygiene",
      "name": "Goede persoonlijke hygiëne",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "lowfatdiet",
      "name": "Vetarm dieet (onvoldoende gezonde vetten)",
      "units": ["bool"],
      "valueType": "number"
    },
    {
      "code": "lifestyleDiet",
      "name": "Voeding & dieet",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleMovement",
      "name": "Beweging & sport",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleSleep",
      "name": "Slaap & herstel",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleMindfulness",
      "name": "Mindfulness & stress",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleCognition",
      "name": "Leren & cognitie",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleSocial",
      "name": "Sociale verbinding",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleSubstances",
      "name": "Genotmiddelen",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleCircadian",
      "name": "Circadiaan & buitenlucht",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "lifestyleHealthcare",
      "name": "lifestyleHealthcare",
      "units": ["score"],
      "valueType": "number"
    },
    {
      "code": "hearingAids",
      "name": "hearingAids",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "bloodPressureControl",
      "name": "bloodPressureControl",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "diabetesManagement",
      "name": "diabetesManagement",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "creatineSupplementation",
      "name": "creatineSupplementation",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "depression",
      "name": "depression",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "untreatedHearingLoss",
      "name": "untreatedHearingLoss",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "airPollution",
      "name": "airPollution",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "highLDL",
      "name": "highLDL",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "visionLoss",
      "name": "visionLoss",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "cognitiveDecline",
      "name": "cognitiveDecline",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "weeklyTrainingHours",
      "name": "Weekly Trainings Hours",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "structuredPlan",
      "name": "Structured Training Plan",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "trainingMonitoring",
      "name": "Training Monitoring (RPE/RIR)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "polarizedTraining",
      "name": "Polarized Intensity (80/20 Rule)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "optimalRir",
      "name": "Proximity to Failure (1-3 RIR)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "variableTraining",
      "name": "Varied Daily Load (Avoid Monotony)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "heavyResistanceLoad",
      "name": "Heavy Load Strength (≥80% 1RM)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "weeklyHypertrophyVolume",
      "name": "Hypertrophy Volume (≥10 sets/wk per muscle)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "powerResistanceTraining",
      "name": "Power RT (Fast Concentric / Olympic / Flywheel)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "systematicOverload",
      "name": "Systematic Progression",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "frequencyVariation",
      "name": "Frequency Variation",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "autoregulation",
      "name": "Autoregulation (RPE/RIR)",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "primalMovements",
      "name": "Primal Movement Patterns",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "unilateralWork",
      "name": "Unilateral Exercises",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "fullRom",
      "name": "Full Range of Motion",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mobilityWork",
      "name": "Mobility Training",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "hiitTraining",
      "name": "HIIT Training",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "restRecovery",
      "name": "Active Recovery/Rest Days",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "trainingWithPain",
      "name": "Training Through Pain",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "poorTechnique",
      "name": "Poor Exercise Technique",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "greyZoneTraining",
      "name": "Grey Zone Training",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "trainingToFailure",
      "name": "Chronic Training to Failure",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "inadequateRecovery",
      "name": "Inadequate Recovery",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "cardioRespiratory",
      "name": "cardioRespiratory",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "metabolicControl",
      "name": "metabolicControl",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "lipidology",
      "name": "lipidology",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "inflammation",
      "name": "inflammation",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "musculoSkeletal",
      "name": "musculoSkeletal",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "neuroCognitive",
      "name": "neuroCognitive",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "hormonalBalance",
      "name": "hormonalBalance",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "renalHepatic",
      "name": "renalHepatic",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "thyroidMetabolic",
      "name": "thyroidMetabolic",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mobility",
      "name": "mobility",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "stress",
      "name": "stress",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "totalFitness",
      "name": "totalFitness",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "subjectiveHealth",
      "name": "subjectiveHealth",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "lgevityBloedTest",
      "name": "lgevityBloedTest",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mskPosteriorChain",
      "name": "mskPosteriorChain",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mskAnteriorChain",
      "name": "mskAnteriorChain",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mskDeepCore",
      "name": "mskDeepCore",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mskLateralSling",
      "name": "mskLateralSling",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mskSpiralLine",
      "name": "mskSpiralLine",
      "units": [],
      "valueType": "number"
    },
    {
      "code": "mskFunctionalLine",
      "name": "mskFunctionalLine",
      "units": [],
      "valueType": "number"
    }
  ]
}
```
