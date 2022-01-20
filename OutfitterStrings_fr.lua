if GetLocale() == "frFR" then
	Outfitter.cTitle = "Outfitter"
	Outfitter.cTitleVersion = Outfitter.cTitle.." "..Outfitter.cVersion

	Outfitter.cSingleItemFormat = "%s"
	Outfitter.cTwoItemFormat = "%s et %s"
	Outfitter.cMultiItemFormat = "%s{{, %s}} et %s"
	
	Outfitter.cNameLabel = "Nom:"
	Outfitter.cCreateUsingTitle = "Optimiser pour:"
	Outfitter.cUseCurrentOutfit = "Utiliser la tenue actuelle"
	Outfitter.cUseEmptyOutfit = "Créer une tenue vide"

	Outfitter.cOutfitterTabTitle = "Outfitter"
	Outfitter.cOptionsTabTitle = "Options"
	Outfitter.cAboutTabTitle = "A propos"

	Outfitter.cNewOutfit = "Nouvelle tenue"
	Outfitter.cRenameOutfit = "Renommer la tenue"

	Outfitter.cCompleteOutfits = "Tenues complètes"
	Outfitter.cPartialOutfits = "Mix-n-match"
	Outfitter.cAccessoryOutfits = "Accessoires"
	Outfitter.cSpecialOutfits = "Occasions spéciales"
	Outfitter.cOddsNEndsOutfits = "Odds 'n ends"

	Outfitter.cGlobalCategory = "Special Outfits"
	Outfitter.cNormalOutfit = "Normale"
	Outfitter.cNakedOutfit = "Nu(e)"

	Outfitter.cFishingOutfit = "Pêche"
	Outfitter.cHerbalismOutfit = "Herborisme"
	Outfitter.cMiningOutfit = "Minage"
	Outfitter.cLockpickingOutfit = "Lockpicking"
	Outfitter.cSkinningOutfit = "Dépecage"
	Outfitter.cFireResistOutfit = "Résistance au feu"
	Outfitter.cNatureResistOutfit = "Résistance à la nature"
	Outfitter.cShadowResistOutfit = "Résistance à l'ombre"
	Outfitter.cArcaneResistOutfit = "Résistance aux arcanes"
	Outfitter.cFrostResistOutfit = "Résistance au givre"

	Outfitter.cArgentDawnOutfit = "L'Aube d'argent"
	Outfitter.cRidingOutfit = "Monture"
	Outfitter.cDiningOutfit = "Diner"
	Outfitter.cBattlegroundOutfit = "Champs de Bataille"
	Outfitter.cABOutfit = "Champs de Bataille: Bassin d'Arathi"
	Outfitter.cAVOutfit = "Champs de Bataille: Vallée d'Alterac"
	Outfitter.cWSGOutfit = "Champs de Bataille: Goulet des Chanteguerres"
	Outfitter.cArenaOutfit = "Champs de Bataille: Arène"
	Outfitter.cWintergraspOutfit = "Champs de Bataille: Wintergrasp"
	Outfitter.cSewersOutfit = "Champs de Bataille: Sewers"
	Outfitter.cGilneasOutfit = "Champs de Bataille: Battle for Gilneas"
	Outfitter.cTwinPeaksOutfit = "Champs de Bataille: Twin Peaks"
	Outfitter.cCityOutfit = "En Ville"
	Outfitter.cSwimmingOutfit = "Natation"
	Outfitter.cArgentTournamentOutfit = "Argent Tournament"
	Outfitter.cMultiphaseSurveyOutfit = "The Multiphase Survey"
	Outfitter.cSpellcastOutfit = "Spellcast"

	Outfitter.cMountSpeedFormat = "Augmente la vitesse de (%d+)%%%."; -- For detecting when mounted
	Outfitter.cFlyingMountSpeedFormat = "Increases flying speed by (%d+)%%%."; -- For detecting when mounted

	Outfitter.cBagsFullError = "Impossible d'enlever %s, tous les sacs sont pleins"
	Outfitter.cDepositBagsFullError = "Impossible de déposer %s. Tous les sacs de la banque sont pleins."
	Outfitter.cWithdrawBagsFullError = "Impossible de récupérer %s. Tous vos sacs sont pleins."
	Outfitter.cItemNotFoundError = "%s est introuvable"
	Outfitter.cItemAlreadyUsedError = "Impossible d' équiper %s à la place '%s' car il est déjà utilisé à un autre endroit."
	Outfitter.cAddingItem = "%s ajouté à la tenue : %s"
	Outfitter.cNameAlreadyUsedError = "Erreur: Nom existant"
	Outfitter.cNoItemsWithStatError = "Attention: Aucuns de vos objets n'a cet attribut"

	Outfitter.cEnableAll = "Tout activer"
	Outfitter.cEnableNone = "Tout désactiver"

	Outfitter.cConfirmDeleteMsg = "Etes vous sûr de vouloir supprimer la tenue : %s?"
	Outfitter.cConfirmRebuildMsg = "Etes vous sûr de vouloir reconstruire la tenue : %s?"
	Outfitter.cRebuild = "Reconstruire"

	Outfitter.cSilverwingHold = "Silverwing Hold"
	Outfitter.cWarsongLumberMill = "Warsong Lumber Mill"

	Outfitter.cFishingPole = "Canne à pêche"
	Outfitter.cStrongFishingPole = "Solide canne à pêche"
	Outfitter.cBigIronFishingPole = "Grande canne à pêche en fer"
	Outfitter.cBlumpFishingPole = "Canne à pêche de la famille Blump"
	Outfitter.cNatPaglesFishingPole = "FC-5000 de Nat Pagle, pêcheur de l'extrême"
	Outfitter.cArcaniteFishingPole = "Canne à pêche en arcanite"

	Outfitter.cArgentDawnCommission = "Brevet de l'Aube d'argent"
	Outfitter.cSealOfTheDawn = "Sceau de l'Aube"
	Outfitter.cRuneOfTheDawn = "Rune de l'Aube"

	Outfitter.cCarrotOnAStick = "Carotte et bâton"
	
	Outfitter.cItemStatFormats =
	{
		{Format = "Augmentation mineure de la vitesse de monture", Value = 3, Types = {"Riding"}},
		{Format = "Eperons en mithril", Value = 3, Types = {"Riding"}},
		
		"%+(%d+) aux dégâts des sorts (.+)",
		"Augmente les points de dégâts infligé par les (.+) de (%d+) au maximum",
		"Augmente les dégâts et les soins produits par les (.+) de (%d+) au maximum",
		
		"Augmente de (%d+) %(.+%) (.+)%.",
		"Augmente (.+) de %+?(%d+)",
		
		"Rend (%d+) (.+)",
		
		"%+(%d+) à (.+)",
		"(.+) %+(%d+)",
		"%+(%d+) (.+)",
	}

	Outfitter.cItemStatTypes =
	{
		endurance = "Stamina",
		intelligence = "Intellect",
		["agilité"] = "Agility",
		force = "Strength",
		esprit = "Spirit",
		armure = "Armor",
		mana = "Mana",
		vie = "Health",
		
		["la puissance d'attaque"] = {"Attack", "RangedAttack"},
		["toutes les caractéristiques"] = {"Stamina", "Intellect", "Agility", "Strength", "Spirit"},
		
		["sorts et effets magiques"] = {"SpellDmg", "FireDmg", "ShadowDmg", "FrostDmg", "ArcaneDmg", "NatureDmg"},
		["sorts et effets de feu"] = "FireDmg",
		["sorts et effets d'ombre"] = "ShadowDmg",
		["sorts et effets de givre"] = "FrostDmg",
		["sorts et effets d'arcane"] = "ArcaneDmg",
		["sorts et effets de nature"] = "NatureDmg",
		
		["la résistance feu"] = "FireResist",
		["la résistance nature"] = "NatureResist",
		["la résistance givre"] = "FrostResist",
		["la résistance ombre"] = "ShadowResist",
		["la résistance arcane"] = "ArcaneResist",
		["toutes les résistances"] = {"FireResist", "NatureResist", "FrostResist", "ShadowResist", "ArcaneResist"},

		["le score de défense"] = "DefenseRating",
		["le score de résilience"] = "ResilienceRating",
		["la puissance d'attaque"] = {"Attack", "RangedAttack"},
		["ranged attack power"] = "RangedAttack",
		["le score de coup critique"] = {"MeleeCritRating", "SpellCritRating"},
		["le score de toucher"] = {"MeleeHitRating", "SpellHitRating"},
		["le score d'esquive"] = "DodgeRating",
		["le score de parade"] = "ParryRating",
		["block"] = "Block",
		["block value"] = "Block",
		["le score de blocage"] = "Block",
		["weapon damage"] = "MeleeDmg",
		["damage"] = "MeleeDmg",
		["le score de hâte"] = {"MeleeHasteRating", "SpellHasteRating"},
		["votre score d'expertise"] = "ExpertiseRating",
		
		["spell penetration"] = "SpellPen",
		["la puissance des sorts"] = {"SpellDmg", "ShadowDmg", "FireDmg", "FrostDmg", "ArcaneDmg", "NatureDmg", "Healing"},
		
		["la pèche"] = "Fishing",
		["pèche"] = "Fishing",
		herborisme = "Herbalism",
		minage = "Mining",
		["dépecage"] = "Skinning",
		
		["points de mana toutes les 5 sec"] = {"ManaRegen", "CombatManaRegen"},
		["mana regen"] = {"ManaRegen", "CombatManaRegen"},
		["health per 5 sec"] = {"HealthRegen", "CombatHealthRegen"},
		["health regen"] = {"HealthRegen", "CombatHealthRegen"},
	}
	
	Outfitter.cAgilityStatName = "Agilité"
	Outfitter.cArmorStatName = "Armure"
	Outfitter.cDefenseStatName = "Défense"
	Outfitter.cIntellectStatName = "Intelligence"
	Outfitter.cSpiritStatName = "Esprit"
	Outfitter.cStaminaStatName = "Endurance"
	Outfitter.cStrengthStatName = "Force"
	Outfitter.cTotalStatsName = "Total Stats"
	Outfitter.cItemLevelName = "Item Level"

	Outfitter.cManaRegenStatName = "Régénération de mana"
	Outfitter.cHealthRegenStatName = "Régénération de vie"

	Outfitter.cSpellCritStatName = "Coups critiques des sorts"
	Outfitter.cSpellHitStatName = "Spell Chance to Hit"
	Outfitter.cSpellDmgStatName = "Dégâts des sorts"
	Outfitter.cFrostDmgStatName = "Dégâts des sorts de givre"
	Outfitter.cFireDmgStatName = "Dégâts des sorts de feu"
	Outfitter.cArcaneDmgStatName = "Dégâts des sorts d'arcane"
	Outfitter.cShadowDmgStatName = "Dégâts des sorts d'ombre"
	Outfitter.cNatureDmgStatName = "Dégâts des sorts de nature"

	Outfitter.cMeleeCritStatName = "Coups critiques"
	Outfitter.cMeleeHitStatName = "Chance de toucher"
	Outfitter.cMeleeDmgStatName = "Dégâts"
	Outfitter.cAttackStatName = "Puissance d'attaque"
	Outfitter.cRangedAttackStatName = "Ranged Attack Power"
	Outfitter.cDodgeStatName = "Esquive"

	Outfitter.cArcaneResistStatName = "Résistance aux arcanes"
	Outfitter.cFireResistStatName = "Résistance au feu"
	Outfitter.cFrostResistStatName = "Résistance au givre"
	Outfitter.cNatureResistStatName = "Résistance à la nature"
	Outfitter.cShadowResistStatName = "Résistance à l'ombre"

	Outfitter.cOptionsTitle = "Options de Outfitter"
	Outfitter.cShowMinimapButton = "Bouton Minimap"
	Outfitter.cShowMinimapButtonOnDescription = "Désactivez si vous ne voulez pas le bouton d'Outfitter sur votre minimap"
	Outfitter.cShowMinimapButtonOffDescription = "Activez pour afficher le bouton d'Outfitter sur la minimap"
	Outfitter.cAutoSwitch = "Désactiver les modifications automatiques"
	Outfitter.cAutoSwitchOnDescription = "Activez cette option pour désactiver le changement automatique de tenue"
	Outfitter.cAutoSwitchOffDescription = "Activez cette option pour activer le changement automatique de tenue"
	Outfitter.cTooltipInfo = "Affiche l'info-bulle"
	Outfitter.cTooltipInfoOnDescription = "Désactivez cette option si vous ne souhaitez pas afficher les informations 'Utilisé par :' dans l'info-bulle (cela améliore la fréquence d'images lorsque vous passez la souris sur l'équipement)"
	Outfitter.cTooltipInfoOffDescription = "Activez cette option si vous souhaitez afficher les informations 'Utilisé par :' dans l'info-bulle"
	Outfitter.cOutfitDisplay = "Outfit Affichage"
	
	Outfitter.cAboutTitle = "A propos d'Outfitter"
	Outfitter.cAuthor = "Designed et écrit par  John Stephen avec les contributions de %s"
	Outfitter.cTestersTitle = "Outfitter testers"
	Outfitter.cTestersNames = "%s"
	Outfitter.cSpecialThanksTitle = "Special remerciements à "
	Outfitter.cSpecialThanksNames = "%s"
	Outfitter.cTranslationCredit = "Traduction: %s"
	
	Outfitter.cOpenOutfitter = "Ouvrir Outfitter"

	Outfitter.cArgentDawnOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans les Maleterres"
	Outfitter.cRidingOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez sur votre monture"
	Outfitter.cDiningOutfitDescription = "Cette tenue sera automatiquement équipée quand vous mangerez ou boirez"
	Outfitter.cBattlegroundOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans un Champ de Bataille"
	Outfitter.cArathiBasinOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans le Bassin d'Arathi"
	Outfitter.cAlteracValleyOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans la Vallée d'Alterac"
	Outfitter.cWarsongGulchOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans le Goulet des Chanteguerres"
	Outfitter.cCityOutfitDescription = "Cette tenue sera automatiquement équipée quand vous serez dans une captiale amie"

	Outfitter.cKeyBinding = "Raccourcis"

	BINDING_HEADER_OUTFITTER_TITLE = Outfitter.cTitle

	BINDING_NAME_OUTFITTER_OUTFIT1  = "Tenue 1"
	BINDING_NAME_OUTFITTER_OUTFIT2  = "Tenue 2"
	BINDING_NAME_OUTFITTER_OUTFIT3  = "Tenue 3"
	BINDING_NAME_OUTFITTER_OUTFIT4  = "Tenue 4"
	BINDING_NAME_OUTFITTER_OUTFIT5  = "Tenue 5"
	BINDING_NAME_OUTFITTER_OUTFIT6  = "Tenue 6"
	BINDING_NAME_OUTFITTER_OUTFIT7  = "Tenue 7"
	BINDING_NAME_OUTFITTER_OUTFIT8  = "Tenue 8"
	BINDING_NAME_OUTFITTER_OUTFIT9  = "Tenue 9"
	BINDING_NAME_OUTFITTER_OUTFIT10 = "Tenue 10"
	
	Outfitter.cShow = "Show"
	Outfitter.cHide = "Hide"
	Outfitter.cDontChange = "Don't change"

	Outfitter.cPlayerTitle = "Title"

	Outfitter.cMore = "More"

	Outfitter.cAutomation = "Automation"
	
	Outfitter.cDisableOutfit = "Désactiver la tenue"
	Outfitter.cDisableOutfitInBG = "Désactiver la tenue dans les Champs de Bataille"
	Outfitter.cDisabledOutfitName = "%s (Désactivé)"

	Outfitter.cOutfitBar = "Outfit Barre"
	Outfitter.cShowInOutfitBar = "Afficher dans la barre outfit"
	Outfitter.cChangeIcon = "Choisissez l'icône..."

	Outfitter.cMinimapButtonTitle = "Outfitter"
	Outfitter.cMinimapButtonDescription = "Cliquez pour séléctionner une autre tenue ou déplacez pour changer la position du bouton."

	Outfitter.cBattleStance = "Posture de combat"
	Outfitter.cDefensiveStance = "Posture défensive"
	Outfitter.cBerserkerStance = "Posture berserker"

	Outfitter.cWarriorBattleStance = "Guerrier: Posture de combat"
	Outfitter.cWarriorDefensiveStance = "Guerrier: Posture défensive"
	Outfitter.cWarriorBerserkerStance = "Guerrier: Posture berserker"

	Outfitter.cDruidBearForm = "Druide: Forme d'ours"
	Outfitter.cDruidCatForm = "Druide: Forme de félin"
	Outfitter.cDruidAquaticForm = "Druide: Forme aquatique"
	Outfitter.cDruidTravelForm = "Druide: Forme de voyage"
	Outfitter.cDruidMoonkinForm = "Druide: Forme de sélénien"
	Outfitter.cDruidFlightForm = "Druide: Forme de vol"
	Outfitter.cDruidSwiftFlightForm = "Druide: Forme de vol rapide"
	Outfitter.cDruidTreeOfLifeForm = "Druide: Form de l'Arbre de vie"
	Outfitter.cDruidProwl = "Druid: Rôder"
	Outfitter.cProwl = "Rôder"

	Outfitter.cPriestShadowform = "Prêtre: Forme d'ombre"

	Outfitter.cRogueStealth = "Voleur: Camouflage"

	Outfitter.cShamanGhostWolf = "Chaman: Loup fantôme"
    
	Outfitter.cHunterMonkey = "Chasseur: Singe"
	Outfitter.cHunterHawk =  "Chasseur: Faucon"
	Outfitter.cHunterCheetah =  "Chasseur: Guépard"
	Outfitter.cHunterPack =  "Chasseur: Meute"
	Outfitter.cHunterBeast =  "Chasseur: Bête"
	Outfitter.cHunterWild =  "Chasseur: Nature"
	Outfitter.cHunterViper = "Chasseur: Vipère"
	Outfitter.cAspectOfTheViper = "Aspect de la vipère"

	Outfitter.cMageEvocate = "Mage: Evocation"

	Outfitter.cDeathknightBlood = "Deathknight: Blood Presence"
	Outfitter.cDeathknightFrost = "Deathknight: Frost Presence"
	Outfitter.cDeathknightUnholy = "Deathknight: Unholy Presence"

	Outfitter.cMonkTiger = "Monk: Tiger stance"
	Outfitter.cMonkSerpent = "Monk: Serpent stance"
	Outfitter.cMonkOx = "Monk: Ox stance"

	Outfitter.cCompleteCategoryDescription = "Les tenues complètes ont un objet spécifié pour chaque emplacement et remplaceront toutes les autres tenues quand elles sont activées"
	Outfitter.cPartialCategoryDescription = "Les tenues \"Mix-n-match\" ont quelques emplacements spécifiés. Quand on les équipe, elles vont par-dessus la tenue complète séléctionnée et remplace toutes les tenues \"Mix-n-match\" et Accessoires"
	Outfitter.cAccessoryCategoryDescription = "Les tenues d'accessoires ont quelques emplacements spécifiés.  Contrairement aux \"Mix-n-Match\", Contrairement aux \"Mix-n-Match\", vous pouvez séléctionner autant d'accessoires que vous voulez et ils seront combinés par-dessus votre tenue complète et \"Mix-n-Match\"."
	Outfitter.cSpecialCategoryDescription = "Les tenues spéciales sont automatiquement équipées dans certaines conditions. Elles remplacent les tenues équipées avant."
	Outfitter.cOddsNEndsCategoryDescription = "Les Odds 'n ends sont des objets que vous n'utilisez dans aucune tenue. Ceci peut être utile pour vérifier que vous utilisez tous les objets que vous avez dans l'inventaire."

	Outfitter.cRebuildOutfitFormat = "Reconstruire pour %s"
	
	Outfitter.cSlotEnableTitle = "Activer l'emplacement"
	Outfitter.cSlotEnableDescription = "Cochez la case si vous voulez que l'objet de cet emplacement soit automatiquement équipé lors du changement de tenue. Si la case n'est pas cochée, l'objet ne sera pas modifié lors du changement de tenue."
	
	Outfitter.cFinger0SlotName = "Premier doigt"
	Outfitter.cFinger1SlotName = "Second doigt"
	
	Outfitter.cTrinket0SlotName = "Premier bijou"
	Outfitter.cTrinket1SlotName = "Second bijou"
	
	Outfitter.cOutfitCategoryTitle = "Catégorie"
	Outfitter.cBankCategoryTitle = "Banque"
	Outfitter.cDepositToBank = "Déposer les objets à la banque."
	Outfitter.cDepositUniqueToBank = "Déposer les objets uniques à la banque"
	Outfitter.cDepositOthersToBank = "Deposit other outfits to bank"
	Outfitter.cWithdrawFromBank = "Récupérer les objets de la banque."
	Outfitter.cWithdrawOthersFromBank = "Withdraw other outfits from bank"
	
	Outfitter.cMissingItemsLabel = "Objets manquants: "
	Outfitter.cBankedItemsLabel = "Objets à la banque: "

	Outfitter.cResistCategory = "Résistances"
	Outfitter.cTradeCategory = "Professions"
	
	Outfitter.cScript = "Scripte"
	Outfitter.cDisableScript = "Désactiver Scripte"
	Outfitter.cEditScript = "Editer Scripte"
	Outfitter.cEventsLabel = "Evènements:"
	Outfitter.cScriptLabel = "Scripte:"

	Outfitter.cNone = "None"
	Outfitter.cUseTooltipLineFormat = "^Utiliser : .*"
	Outfitter.cUseDurationTooltipLineFormat = "^Utiliser : .*pendant (%d+) sec"
	Outfitter.cUseDurationTooltipLineFormat2 = "^Utiliser : .*Dure (%d+) sec"
	
	Outfitter.cAutoChangesDisabled = "Les modifications automatiques sont maintenant désactivées"
	Outfitter.cAutoChangesEnabled = "Les modifications automatiques sont maintenant activées"
	
	-- OutfitterFu strings
	
	Outfitter.cFuHint = "Cliquez avec le bouton gauche pour basculer la fenêtre Outfitter."
	Outfitter.cFuHideMissing = "Masquer les items manquants"
	Outfitter.cFuHideMissingDesc = "Cachez les tenues avec des objets manquants."
	Outfitter.cFuRemovePrefixes = "enlever les prefixes"
	Outfitter.cFuRemovePrefixesDesc = "Supprimez les préfixes des noms de tenues pour raccourcir le texte affiché dans FuBar."
	Outfitter.cFuMaxTextLength = "longeur Max du texte"
	Outfitter.cFuMaxTextLengthDesc = "La longueur maximale du texte affiché dans FuBar."
	Outfitter.cFuHideMinimapButton = "Cache le bouton de la minimap"
	Outfitter.cFuHideMinimapButtonDesc = "Cache le bouton icone de la minimap"
	Outfitter.cFuInitializing = "initialisation"

	Outfitter.cStoreOnServer = "Stocker la tenue sur le serveur"
	Outfitter.cStoreOnServerOnDescription = "Désactivez-la pour supprimer cette tenue du serveur et la stocker localement à la place. Il ne sera plus disponible à partir d'autres ordinateurs."
	Outfitter.cStoreOnServerOffDescription = "Activez pour stocker cette tenue sur le serveur afin qu'elle soit disponible depuis n'importe quel ordinateur. Vous ne pouvez stocker que 10 tenues sur le serveur."
	Outfitter.cTooManyServerOutfits = "Vous ne pouvez pas stocker plus de %d tenues sur le serveur."
	
	Outfitter.cNoItemsWithStat = "Impossible de générer une tenue car aucun élément avec cette catactéristique n'a été trouvé"
end
