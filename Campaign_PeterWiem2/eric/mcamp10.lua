function getRequiredLuaVersion()
    return 1
end

local requiredFeature = 4
function checkVersion()
    local featureLevel = rttr:GetFeatureLevel()
    if(featureLevel < requiredFeature) then
        rttr:MsgBox("LUA-Version Error", "Your Return to the Roots version is outdated. The required LUA-Feature level is " ..requiredFeature.. ", your version is "..featureLevel..". The script can possibly crash or run unexpectedly!\n\nPlease update the game!", true)
    end
end
-- Message-Window (mission statement and hints): 52 chars wide
eIdx = {1, 2, 3, 4, 5, 6, 7, 99}

local debugTexts = false;

rttr:RegisterTranslations(
{
    de =
    {
        title   = 'Halldor, der Fleischer',
        name    = 'Unbekannter Gegner',
        diary   = 'Tagebuch',

        msg1    = 'Ansgar war nicht untätig während seiner Zeit zusammen mit unseren Familien. Vor allem hat er sich unter den Jünglingen unter 25 Jahren umgeschaut, wer mit seinen Gaben uns im Krieg gegen die Feinde voranbringen könnte.\n\nDabei ist seine Wahl auf Halldor gefallen, einen stämmigen Teenager aus einer Bauernfamilie. Er ist ein wahrer Künstler, wenn es darum geht, ein Schwein in seine Einzelteile zu zerlegen und jeden nur denkbaren Körperteil in eine schmackhafte Delikatesse zu verwandeln. Damit unser Fleischer auf unserem Kriegszug nicht untätig sein muss, wurden uns dreißig frisch geschlachtete Schweine mitgegeben. Damit wird Halldor eine Weile zu tun haben.\n\nDer Lageplatz auf dieser eiskalten Insel wurde von Halvar und Ansgar gemeinsam ausgesucht. Ich persönlich habe ein ungutes Gefühl, was diese Platzwahl anbetrifft, aber vielleicht täusche ich mich da. Vor allem weiß ich nicht, wie gut das Hauptquartier vor Angriffen aus nördlicher und östlicher Richtung geschützt ist. Aber bisher hatte Halvar einen guten Riecher, vor allem wenn es um verwertbare  Bodenschätze in der Umgebung ging.',
        msg2    = 'Leider hat mich mein ungutes Gefühl nicht getäuscht. Im Osten haben wir nicht weit entfernt ein Chinesenlager entdeckt, und sie uns ebenfalls. Da wir keinen Platz für wirkungsvolle Verteidigungs-bauwerke haben, bleibt uns nur der Rückzug nach Süden. Dort müssen wir uns zügig nach einem geeigneten Platz für ein Lagerhaus oder Lagergebäude umsehen und dann schnellstmöglich alle Waren aus unserem Hauptquartier dorthin schaffen.\n\nAlles, was wir nicht in Sicherheit bringen können, kann für uns verloren sein, denn ich bin mir ziemlich sicher, dass wir unser Zeltlager bei einem gegnerischen Angriff entweder gar nicht, oder nur mit großen Verlusten halten können. Also schnell eine Wachstube oder Baracke im Süden gebaut und einen Platz für ein Lagergebäude gesucht, um dann den geordneten Rückzug von hier anzutreten.',
        msg3    = 'Dieser Hafenplatz kommt uns wie gerufen! Wir werden sehen, ob dieser Hafen weit genug entfernt vom chinesischen Lager ist, oder ob wir noch weiter entfernt ein zusätzliches Lagerhaus bauen müssen. Aber zuerst einmal sichern wir diesen Platz durch ein Hafengebäude ab und lagern alles aus dem Zeltlager aus, was nicht niet- und nagelfest ist.',
        msg4    = 'Unser König Knut ist uns per Schiff nachgereist, um uns Fleisch, Werkzeug und Münzen zu überbringen, die unsere Familien auf ihrer grünen Insel des ewigen Schnees für uns gespendet haben. Wir haben uns herzlich dafür bedankt, aber meinem Vater geraten, so schnell wie möglich wieder zu verschwinden, da die Lage hier nicht ganz geheuer ist. Das hat er dann auch prompt getan.',
        msg5    = 'Wir wissen nicht, ob wir das Zeltlager gegen die feindlichen Chinesen halten können, aber das Hafengebäude muss unser bleiben! Wir sind eifrig dabei, dort alle Waren einzulagern. Gleichzeitig vermuten wir hinter dem südlichen Gebirgskamm weitere Feinde, da dort nachts ein beständiger Feuerschein herrscht, der leuchtend über den Bergen schimmert.\n\nWir werden uns also ab jetzt vorwiegend nach Westen ausbreiten und unsere Wirtschaft in Gang bringen, Hier hat es Platz und genügend Bodenschätze um militärisch stark werden zu können. Und auch Schiffe werden wir gut gebrauchen können, um einen eventuell noch freien Hafenplatz finden zu können, um dort eine neue Front aufbauen zu können.\n\nUnsere Bergarbeiter haben um einen ausgewogeneren Speiseplan als bisher gebeten. Bei ihrer schweren Arbeit würden sie Fleisch als hauptsächliche Nahrung bevorzugen. Deshalb werden wir schauen, dass Halldor so schnell wie möglich seine Arbeit aufnehmen kann. Seine Spezialität ist die Herstellung von Schweineschinken, was meine Leibspeise ist. Ich habe mir schon den ersten Schinken von ihm reservieren lassen.',
        msg6    = 'Eine weitere gegnerische Front taucht im Westen vor uns auf, es ist sehr wahrscheinlich ein Ausläufer des größeren Römerstützpunktes, von dem wir wissen, dass es ihn auf dieser Insel geben muss. Das römische Militär scheint wesentlich stärker als alles andere, mit dem wir uns bisher hier haben auseinandersetzen müssen.\n\nGut, dass Elvor, Bjarki und Darvi fleißig ihrer Arbeit nachgehen und uns mit Waffen und Münzen versorgen. Und auch Thorben leistet uns wertvolle Hilfe durch sein Katapult und seine gute Ideen, wo man diese Waffe jeweils am besten einsetzen könnte. Leider haben wir nur wenig starke und gleichzeitig geschickte Leute, die mit dieser Waffe wirklich umgehen können, deshalb sollten wir vielleicht die älteren Katapulte abreißen, um unsere Katapultisten an den besten Plätzen einsetzen zu können.',
        msg7    = 'In unmittelbarer Nähe haben wir im Gebirge eine Höhle gefunden, die recht lang und lausig kalt ist. Sie muss den gegnerischen Truppen als Vorratslager gedient haben, weil wir an ihrem Ende ein umfangreiches Fleischlager entdeckt haben.\n\nWir vermuten im Norden noch ein feindliches Lager, weil wir Feuerschein und Rauch aus dieser Richtung bemerkt haben. Es scheint ein gut verborgener Stützpunkt zu sein, weil wir es bisher hauptsächlich mit Chinesen und Römern zu tun gehabt haben.\n\nDer nächste Amboss ist dem Tatendrang Elvors zum Opfer gefallen. Bjarki hat mir später lachend erzählt, dass sie gemeinsam während einer Arbeitspause ausgiebig Sigvaldis Bier und Halldors Schinken genossen hätten und unser Schmied anschließend etwas aus sich heraus gegangen sei. Und solch einer hemmungslosen Kraftentfaltung ist auf die Dauer niemand und nichts gewachsen.',
        msg99   = 'Nach dem großen Chinesenstützpunkt im Felsenmeer haben wir auch diesen Römerstützpunkt bezwungen. Auch dieser Stützpunkt koordinierte die Aktionen der Römer gegen uns, wie einige noch erhaltene Unterlagen bezeugten, und auch in diesem Stützpunkt fanden wir einen Steckbrief eines Mannes namens Ahasversos, welcher auch von den Römern gesucht wird.\n\nIch kann mir nicht erklären, wer oder was damit gemeint sein könnte, habe aber entdeckt, dass Ansgar in dieser Geschichte mehr weiß, als er sagt. Ich habe bemerkt, wie er zusammengezuckt ist, als er diesen Suchbefehl zu Gesicht bekam.\n\nNebenan im Osten liegt unsere kleinste grüne Insel. Nach allem, was wir bisher erlebt haben, wäre es fahrlässig, diese Insel auszulassen, wenn es anschließend zu unseren zwei großen grünen Inseln im Süden gehen soll. Ihre Befreiung rückt naher und ich freue mich schon sehr auf das Wiedersehen mit meiner Heimat.'
    },
    en =
    {
        title   = 'Halldor, the butcher',
        name    = 'Enemy Unknown',
        diary   = 'Diary',

        msg1    = 'Ansgar was not idle during his time with our families. Above all, he looked among the young men under 25 to see who could help us advance in our war against the enemies with their skills.\n\nHe chose Halldor, a sturdy teenager from a farming family. He is a true artist when it comes to breaking down a pig into its parts and turning every imaginable body part into a delicious delicacy. To ensure that our butcher won’t be idle during our campaign, we were provided with thirty freshly slaughtered pigs. Halldor will have his hands full for a while.\n\nThe camp location on this freezing island was chosen by Halvar and Ansgar together. Personally, I have a bad feeling about this choice of location, but maybe I’m wrong. Most of all, I don’t know how well the headquarters is protected from attacks coming from the north and east. But so far, Halvar has had a good instinct, especially when it comes to finding usable natural resources in the area.',
        msg2    = 'Unfortunately, my bad feeling was not mistaken. To the east, we discovered a Chinese camp not far away, and they spotted us as well. Since we have no space for effective defense structures, our only option is to retreat south. There, we must quickly find a suitable spot for a warehouse or storage building and move all our goods there as quickly as possible.\n\nAnything we cannot move to safety could be lost to us, as I am quite sure that we will not be able to hold our camp against an enemy attack, or we will suffer heavy losses. So, we need to quickly build a guardhouse or barracks in the south and find a location for a storage building, so we can begin an orderly retreat from here.',
        msg3    = 'This harbor site is just what we needed! We will see if this harbor is far enough from the Chinese camp, or if we need to build an additional warehouse further away. But first, we will secure this site with a harbor building and unload everything from the camp that is not nailed down.',
        msg4    = 'Our King Knut has followed us by ship to bring us meat, tools, and coins donated by our families on their green Island of Eternal Snow. We thanked him warmly but advised my father to leave as quickly as possible, as the situation here is not entirely safe. He promptly did so.',
        msg5    = 'We don´t know if we can hold the tent camp against the enemy Chinese, but the harbor building must remain ours! We are eagerly storing all goods there. At the same time, we suspect there are more enemies behind the southern mountain range, as there is a constant firelight at night, glowing over the mountains.\n\nSo, from now on, we will mainly spread westward and get our economy up and running. There´s space here and enough natural resources to become militarily strong. Ships will also be very useful to us to possibly find another free harbor to build a new front.\n\nOur miners have requested a more balanced diet than we´ve had so far. Due to their hard work, they would prefer meat as their main food. Therefore, we will make sure that Halldor can start his work as soon as possible. His specialty is the preparation of ham, which happens to be my favorite dish. I´ve already reserved the first ham from him.',
        msg6    = 'Another enemy front has appeared to the west of us, it is very likely an extension of the larger Roman stronghold, which we know must be on this island. The Roman military seems considerably stronger than anything we´ve had to deal with so far.\n\nLuckily, Elvor, Bjarki, and Darvi are diligently working and supplying us with weapons and coins. And Thorben is also providing valuable help with his catapult and his good ideas on where to best deploy this weapon. Unfortunately, we have only a few strong and skilled people who can really handle this weapon, so perhaps we should dismantle the older catapults to be able to place our catapultists in the best positions.',
        msg7    = 'In the mountains nearby, we found a cave that is quite long and miserably cold. It must have served as a supply depot for the enemy troops because we discovered a large meat storage at the far end. \n\nWe suspect there´s still an enemy camp in the north, as we noticed firelight and smoke coming from that direction. It seems to be a well-hidden stronghold, as we´ve mostly dealt with the Chinese and Romans so far. \n\nThe next anvil fell victim to Elvor´s enthusiasm. Bjarki later told me with a laugh that during a break, they had thoroughly enjoyed Sigvaldi´s beer and Halldor´s ham together, and after that, our blacksmith had let himself go a bit. And no one or nothing can withstand such unrestrained displays of strength for long.',
        msg99   = 'After the large Chinese stronghold in the Felsenmeer, we have also defeated this Roman stronghold. This stronghold, too, coordinated the Romans´ actions against us, as some remaining documents testify, and in this stronghold, we also found a wanted poster for a man named Ahasversos, who is also being sought by the Romans. \n\nI can´t explain who or what this could refer to, but I have discovered that Ansgar knows more about this story than he lets on. I noticed how he flinched when he saw this search order. \n\nTo the east, next door, lies our smallest green island. After everything we´ve experienced so far, it would be reckless to leave this island out if we are heading next to our two large green islands in the south. Its liberation is approaching, and I am very much looking forward to reuniting with my homeland.'
    },
    cs =
    {
        title   = 'Halldor, řezník',
        name    = 'Neznámý soupeř',
        diary   = 'Deník',

        msg1    = 'Ansgar nebyl nečinný během svého času stráveného s našimi rodinami. Zejména se podíval mezi mladíky do 25 let, kdo by mohl přispět svými dovednostmi k našemu postupu ve válce proti nepřátelům.\n\nVybral Halldora, statného teenagera z rolnické rodiny. Je pravým umělcem, pokud jde o rozčlenění prasete na jednotlivé části a přeměnu každé myslitelné části těla na chutnou delikatesu. Aby náš řezník během našeho tažení nebyl nečinný, bylo nám přiděleno třicet čerstvě poražených prasat. Halldor bude mít na nějaký čas dost práce.\n\nMísto tábora na tomto ledovém ostrově vybrali společně Halvar a Ansgar. Osobně mám o této volbě místo špatný pocit, ale možná se mýlím. Především nevím, jak dobře je hlavní štáb chráněn proti útokům ze severu a východu. Ale dosud měl Halvar dobrý instinkt, zejména pokud šlo o hledání využitelných přírodních zdrojů v okolí.',
        msg2    = 'Bohužel mě mé špatné tušení nezklamalo. Na východě jsme nedaleko objevili čínský tábor a oni nás také zpozorovali. Jelikož nemáme místo pro účinné obranné stavby, nezbývá nám než ustoupit na jih. Tam se musíme rychle podívat po vhodném místě pro sklad nebo skladovací budovu a co nejrychleji přesunout všechny naše zásoby tam.\n\nCokoliv, co nebudeme moci přemístit do bezpečí, může pro nás být ztraceno, protože jsem si téměř jistý, že naše tábořiště neudržíme při nepřátelském útoku, nebo jen za velkých ztrát. Takže rychle postavit strážní budovu nebo barák na jihu a najít místo pro skladovací budovu, abychom mohli zahájit uspořádaný ústup odsud.',
        msg3    = 'Tento přístavní prostor je přesně to, co jsme potřebovali! Uvidíme, zda je tento přístav dost daleko od čínského tábora, nebo jestli budeme muset postavit další sklad ještě dál. Ale nejprve zajistíme toto místo přístavní budovou a vyložíme vše, co není pevně připevněno, z tábora.',
        msg4    = 'Náš král Knut nás následoval lodí, aby nám přivezl maso, nástroje a mince, které nám naše rodiny na jejich zeleném Ostrově věčného sněhu darovaly. Srdečně jsme mu poděkovali, ale radili jsme mému otci, aby co nejdříve zmizel, protože situace zde není zcela bezpečná. On to také okamžitě udělal.',
        msg5    = 'Nevíme, jestli budeme schopni udržet tábor proti nepřátelským Číňanům, ale přístavní budova musí zůstat naše! Pilně tam skladujeme všechny zásoby. Zároveň podezříváme, že za jižním pohořím jsou další nepřátelé, protože tam v noci hoří neustálý oheň, který svítí přes hory.\n\nTakže se nyní zaměříme především na západní expanze a nastartování naší ekonomiky. Je tu dost místa a přírodních zdrojů, abychom se mohli stát vojensky silní. Lodi také budeme potřebovat, abychom případně našli jiný volný přístav, kde bychom mohli vybudovat novou frontu.\n\nNaši horníci požádali o vyváženější stravu než doposud. Vzhledem k těžké práci by preferovali maso jako hlavní potravu. Proto zajistíme, aby Halldor mohl co nejdříve začít pracovat. Jeho specialitou je příprava šunky, což je moje oblíbené jídlo. Už jsem si rezervoval první šunku od něj.',
        msg6    = 'Další nepřátelská fronta se objevuje na západě před námi, pravděpodobně jde o výběžek větší římské základny, o které víme, že na tomto ostrově musí být. Římská armáda se zdá být podstatně silnější než cokoli, s čím jsme se zde zatím museli potýkat.\n\nNaštěstí Elvor, Bjarki a Darvi pilně pracují a zásobují nás zbraněmi a mincemi. A také Thorben nám cenně pomáhá svým katapultem a dobrými nápady, kde by tuto zbraň bylo nejlepší nasadit. Bohužel máme jen málo silných a zároveň zručných lidí, kteří s touto zbraní opravdu dokážou zacházet, proto bychom možná měli zbourat starší katapulty, abychom naše katapultisty mohli umístit na nejlepší místa.',
        msg7    = 'V blízkých horách jsme našli jeskyni, která je poměrně dlouhá a strašně studená. Musela sloužit jako zásobovací sklad pro nepřátelské jednotky, protože jsme na jejím konci objevili velké zásoby masa. \n\nPředpokládáme, že na severu je ještě jedno nepřátelské tábor, protože jsme si všimli světla ohně a kouře, který vychází z tohoto směru. Zdá se, že je to dobře skrytá základna, protože jsme se dosud setkávali převážně s Číňany a Římany. \n\nDalší kovadlina padla za oběť Elvorovu nadšení. Bjarki mi později s úsměvem řekl, že během pracovní pauzy si společně vychutnali Sigvaldiho pivo a Halldorovu šunku, a po tom náš kovář trochu povolil. A nikdo nebo nic nemůže dlouho odolat takovému nezadržovanému projevování síly.',
        msg99   = 'Po velkém čínském základně ve Felsenmeer jsme také porazili tuto římskou základnu. Tato základna také koordinovala akce Římanů proti nám, jak potvrzují některé zachované dokumenty, a v této základně jsme našli také pátrací oznámení pro muže jménem Ahasversos, kterého hledají i Římané. \n\nNedokážu vysvětlit, kdo nebo co tím může být myšleno, ale zjistil jsem, že Ansgar ví o této záležitosti víc, než říká. Všiml jsem si, jak se ztuhl, když uviděl tento pátrací rozkaz. \n\nNa východě, hned vedle, leží náš nejmenší zelený ostrov. Po všem, co jsme dosud zažili, by bylo nezodpovědné tento ostrov vynechat, pokud se má následně jít na naše dva velké zelené ostrovy na jihu. Jeho osvobození se blíží a už se velmi těším na shledání s mým domovem.'
    },
})

-- format mission texts
function MissionText(e, silent)
    local msg = _('msg' .. tostring(e))

    if(msg ~= ('msg' .. tostring(e))) then
        if not silent then
            rttr:MissionStatement(0, _('diary'), msg .. '\n\n\n\n\n\n\n', IM_AVATAR6, true)
        end
        rttr:SetMissionGoal(0, msg)
    else
        rttr:Log("Error: no Translation found!" .. _(msg))
    end
end

function isMapPreviewEnabled()
    return false;
end

function onSettingsReady()
    checkVersion()
    rttr:Log("-----------------------\n Mission Script loaded... \n-----------------------\n")

    rttr:ResetAddons()
    rttr:SetAddon(ADDON_FRONTIER_DISTANCE_REACHABLE, true)
    rttr:SetAddon(ADDON_CATAPULT_GRAPHICS, true)
    rttr:SetAddon(ADDON_NUM_SCOUTS_EXPLORATION, 4)
    rttr:SetGameSettings({
        ["fow"] = EXP_CLASSIC,
        ["teamView"] = false,
        ["lockedTeams"] = true,
        ["startWares"] = SWR_NORMAL,
        ["objective"] = GO_TOTALDOMINATION
    })

    rttr:GetPlayer(0):SetNation(NAT_VIKINGS)
    rttr:GetPlayer(1):SetNation(NAT_JAPANESE)
    rttr:GetPlayer(2):SetNation(NAT_JAPANESE)
    rttr:GetPlayer(3):SetNation(NAT_ROMANS)
    rttr:GetPlayer(4):SetNation(NAT_BABYLONIANS)

    for p = 1, rttr:GetNumPlayers() - 1 do
        rttr:GetPlayer(p):SetTeam(TM_TEAM1)
        rttr:GetPlayer(p):SetAI(3)
        rttr:GetPlayer(p):SetName(_('name'))
    end
end

function getAllowedChanges()
    return {
        ["addonsAll"]   = false,
        ["addonsSome"]  = true,
        ["ownNation"]   = false,
        ["ownColor"]    = true,
        ["ownTeam"]     = false,
        ["aiNation"]    = false,
        ["aiColor"]     = true,
        ["aiTeam"]      = false
    }
end

function getAllowedAddons()
    return {
        ADDON_TOOL_ORDERING,
        ADDON_CATAPULT_GRAPHICS,
        ADDON_NO_COINS_DEFAULT,
        ADDON_MANUAL_ROAD_ENLARGEMENT,
        ADDON_METALWORKSBEHAVIORONZERO
    }
end

function onStart(isFirstStart)
    for p = 0, rttr:GetNumPlayers() - 1 do
        addPlayerRes(p, not isFirstStart)
    end
    if isFirstStart then
        addExtraBoards(1, 50)
        addExtraBoards(2, 100)
        addExtraSoldiers(3, 20)
        addExtraSoldiers(4, 10)
    end
    rttr:GetPlayer(0):ModifyHQ(true)

    eState = {}
    for _, i in ipairs(eIdx) do
        eState[i] = 1
    end

    if not isFirstStart then
        for i = 1, eHist["n"] do
            MissionEvent(eHist[i], true)
        end
    else
        eHist = {["n"] = 0}
    end

    if(isFirstStart) then
        rttr:GetWorld():AddAnimal( 4, 32, SPEC_POLARBEAR)
        rttr:GetWorld():AddAnimal(53, 86, SPEC_POLARBEAR)
        rttr:GetWorld():AddAnimal( 3, 33, SPEC_POLARBEAR)

        rttr:GetWorld():AddStaticObject(92, 11, 0, 0, 1)
        rttr:GetWorld():AddStaticObject(44, 10, 0, 0, 1)
        rttr:GetWorld():AddStaticObject(66, 79, 0, 0, 1)
    end
end

function onSave(saveGame)
    saveGame:PushInt(eHist["n"])
    for i = 1, eHist["n"] do
        saveGame:PushInt(eHist[i])
    end
    return true
end

-- load callback
function onLoad(saveGame)
    eHist = {["n"] = saveGame:PopInt()}
    for i = 1, eHist["n"] do
        eHist[i] = saveGame:PopInt()
    end
    return true
end

function addPlayerRes(p, onLoad)
    if (p == 0) then
        rttr:GetPlayer(p):DisableBuilding(BLD_PIGFARM)
        rttr:GetPlayer(p):DisableBuilding(BLD_SLAUGHTERHOUSE)
        rttr:GetPlayer(p):DisableBuilding(BLD_METALWORKS)
        rttr:GetPlayer(p):DisableBuilding(BLD_DONKEYBREEDER)
    end

    if (p ~= 0 and not onLoad) then
        rttr:GetPlayer(p):ClearResources()
        rttr:GetPlayer(p):AddWares({
            [GD_WOOD      ] = 50,
            [GD_BOARDS    ] = 30,
            [GD_STONES    ] = 30,
            [GD_HAM       ] = 5,
            [GD_GRAIN     ] = 5,
            [GD_FLOUR     ] = 5,

            [GD_FISH      ] = 8,
            [GD_MEAT      ] = 8,
            [GD_BREAD     ] = 8,
            [GD_WATER     ] = 8,
            [GD_BEER      ] = 0,
            [GD_COAL      ] = 15,

            [GD_IRONORE   ] = 15,
            [GD_GOLD      ] = 2,
            [GD_IRON      ] = 10,
            [GD_COINS     ] = 2,
            [GD_TONGS     ] = 1,
            [GD_AXE       ] = 5,

            [GD_SAW       ] = 5,
            [GD_PICKAXE   ] = 5,
            [GD_HAMMER    ] = 16,
            [GD_SHOVEL    ] = 5,
            [GD_CRUCIBLE  ] = 4,
            [GD_RODANDLINE] = 5,

            [GD_SCYTHE    ] = 8,
            [GD_CLEAVER   ] = 2,
            [GD_ROLLINGPIN] = 2,
            [GD_BOW       ] = 5,
            [GD_SWORD     ] = 5,
            [GD_SHIELD    ] = 5,

            [GD_BOAT      ] = 8
        })

        -- people
        rttr:GetPlayer(p):AddPeople({
            [JOB_HELPER             ] = 80,
            [JOB_BUILDER            ] = 10,
            [JOB_PLANER             ] = 6,
            [JOB_WOODCUTTER         ] = 6,
            [JOB_FORESTER           ] = 4,
            [JOB_STONEMASON         ] = 8,

            [JOB_FISHER             ] = 4,
            [JOB_HUNTER             ] = 4,
            [JOB_CARPENTER          ] = 4,
            [JOB_FARMER             ] = 4,
            [JOB_PIGBREEDER         ] = 4,
            [JOB_DONKEYBREEDER      ] = 4,

            [JOB_MILLER             ] = 2,
            [JOB_BAKER              ] = 2,
            [JOB_BUTCHER            ] = 2,
            [JOB_BREWER             ] = 2,
            [JOB_MINER              ] = 10,
            [JOB_IRONFOUNDER        ] = 2,

            [JOB_ARMORER            ] = 4,
            [JOB_MINTER             ] = 1,
            [JOB_METALWORKER        ] = 2,
            [JOB_SHIPWRIGHT         ] = 2,
            [JOB_GEOLOGIST          ] = 8,
            [JOB_SCOUT              ] = 2,

            [JOB_PACKDONKEY         ] = 30,
            [JOB_CHARBURNER         ] = 0,

            [JOB_PRIVATE            ] = 55,
            [JOB_PRIVATEFIRSTCLASS  ] = 3,
            [JOB_SERGEANT           ] = 1,
            [JOB_OFFICER            ] = 1,
            [JOB_GENERAL            ] = 1
        })
    elseif (p == 0 and not onLoad) then
        rttr:GetPlayer(p):ClearResources()
        rttr:GetPlayer(p):AddWares({
            [GD_WOOD      ] = 20,
            [GD_BOARDS    ] = 20,
            [GD_STONES    ] = 20,
            [GD_HAM       ] = 30,
            [GD_GRAIN     ] = 4,
            [GD_FLOUR     ] = 4,

            [GD_FISH      ] = 8,
            [GD_MEAT      ] = 8,
            [GD_BREAD     ] = 8,
            [GD_WATER     ] = 0,
            [GD_BEER      ] = 0,
            [GD_COAL      ] = 15,

            [GD_IRONORE   ] = 8,
            [GD_GOLD      ] = 8,
            [GD_IRON      ] = 15,
            [GD_COINS     ] = 2,
            [GD_TONGS     ] = 0,
            [GD_AXE       ] = 2,

            [GD_SAW       ] = 4,
            [GD_PICKAXE   ] = 2,
            [GD_HAMMER    ] = 10,
            [GD_SHOVEL    ] = 2,
            [GD_CRUCIBLE  ] = 4,
            [GD_RODANDLINE] = 4,

            [GD_SCYTHE    ] = 6,
            [GD_CLEAVER   ] = 0,
            [GD_ROLLINGPIN] = 2,
            [GD_BOW       ] = 0,
            [GD_SWORD     ] = 2,
            [GD_SHIELD    ] = 2,

            [GD_BOAT      ] = 0
        })

        -- people
        rttr:GetPlayer(p):AddPeople({
            [JOB_HELPER             ] = 80,
            [JOB_BUILDER            ] = 15,
            [JOB_PLANER             ] = 8,
            [JOB_WOODCUTTER         ] = 8,
            [JOB_FORESTER           ] = 2,
            [JOB_STONEMASON         ] = 8,

            [JOB_FISHER             ] = 4,
            [JOB_HUNTER             ] = 6,
            [JOB_CARPENTER          ] = 3,
            [JOB_FARMER             ] = 2,
            [JOB_PIGBREEDER         ] = 0,
            [JOB_DONKEYBREEDER      ] = 0,

            [JOB_MILLER             ] = 2,
            [JOB_BAKER              ] = 2,
            [JOB_BUTCHER            ] = 0,
            [JOB_BREWER             ] = 2,
            [JOB_MINER              ] = 10,
            [JOB_IRONFOUNDER        ] = 2,

            [JOB_ARMORER            ] = 2,
            [JOB_MINTER             ] = 1,
            [JOB_METALWORKER        ] = 0,
            [JOB_SHIPWRIGHT         ] = 1,
            [JOB_GEOLOGIST          ] = 5,
            [JOB_SCOUT              ] = 2,

            [JOB_PACKDONKEY         ] = 30,
            [JOB_CHARBURNER         ] = 0,

            [JOB_PRIVATE            ] = 25,
            [JOB_PRIVATEFIRSTCLASS  ] = 25,
            [JOB_SERGEANT           ] = 5,
            [JOB_OFFICER            ] = 4,
            [JOB_GENERAL            ] = 3
        })
    end
end

function onGameFrame(gf)
    if (gf == 10 and debugTexts) then
        for _, i in ipairs(eIdx) do
            MissionText(i, false)
        end
    end

    enforceBuildingCount(0, BLD_CATAPULT, 3, false)

    if((gf%20)~=0) then
        return
    end

    if(gf==60) then
        -- EVENT1
        MissionEvent(1, false)
    end

    if (eState[2] > 0 and rttr:GetPlayer(0):GetNumBuildings(BLD_SAWMILL) > 0) then
        -- EVENT2
        MissionEvent(2, false)
    end

    if (eState[4] > 0 and rttr:GetPlayer(0):GetNumBuildings(BLD_HARBORBUILDING) > 0) then
        -- EVENT4
        MissionEvent(4, false)
    end

    if ((GetNumStorage(1) + GetNumStorage(2) + GetNumStorage(3) + GetNumStorage(4)) < 1) then
        -- EVENT8 (maps to 99)
        MissionEvent(99, false)
    end
end

function onOccupied(p, x, y)
    if(p ~= 0) then return end

    if(eState[3] > 0 and x == 48 and y == 55) then
        -- EVENT3
        MissionEvent(3, false)
    end

    if(eState[5] > 0 and x == 42 and y == 69) then
        -- EVENT5
        MissionEvent(5, false)
    end

    if(eState[6] > 0 and x == 15 and y == 65) then
        -- EVENT6
        MissionEvent(6, false)
    end

    if(eState[7] > 0 and x == 3 and y == 50) then
        -- EVENT7
        MissionEvent(7, false)
    end
end

function MissionEvent(e, onLoad)
    -- event e is inactive
    if(eState[e] <= 0) then
        return
    end

    -- call side effects for active events, check "eState[e] == 1" for multiple call events!
    if(e == 1 and not onLoad) then
        -- nothing

    elseif(e == 2) then
        if(not onLoad) then
            rttr:GetPlayer(0):AddWares({
                [GD_BOARDS] = 20,
                [GD_STONES] = 10
            })
        end

    elseif(e == 3 and not onLoad) then
        -- nothing

    elseif(e == 4) then
        if(not onLoad) then
            rttr:GetPlayer(0):AddWares({
                [GD_MEAT]       = 20,
                [GD_COINS]      = 10,
                [GD_AXE]        = 10,
                [GD_PICKAXE]    = 10,
                [GD_SWORD]      = 5,
                [GD_SHIELD]     = 5
            })
        end

    elseif(e == 5) then
        rttr:GetPlayer(0):EnableBuilding(BLD_SLAUGHTERHOUSE, not onLoad)

        if(not onLoad) then
            rttr:GetPlayer(0):AddWares({
                [GD_MEAT] = 5,
                [GD_FISH] = 5
            })

            rttr:GetPlayer(0):AddPeople({
                [JOB_BUTCHER] = 2
            })
        end

    elseif(e == 6) then
        if(not onLoad) then
            rttr:GetPlayer(0):AddWares({
                [GD_ROLLINGPIN] = 2
            })
        end

    elseif(e == 6) then
        if(not onLoad) then
            rttr:GetPlayer(0):AddWares({
                [GD_MEAT] = 40
            })
        end

    elseif(e == 99) then
        -- TODO: EnableNextMissions()
    end

    -- update event state
    eState[e] = eState[e] - 1

    -- no history update or mission texts while loading
    if not onLoad then
        rttr:Log(">> Event: " .. e .. ",\teState[" .. e .. "] = " .. eState[e])
        eHist["n"] = eHist["n"] + 1
        eHist[eHist["n"]] = e
    end

    MissionText(e, onLoad)
end

function GetNumStorage(plr)
    return rttr:GetPlayer(plr):GetNumBuildings(BLD_HEADQUARTERS) + rttr:GetPlayer(plr):GetNumBuildings(BLD_HARBORBUILDING) + rttr:GetPlayer(plr):GetNumBuildings(BLD_STOREHOUSE)
end

function GetNumMilitaryBuilding(plr, withHarbor)
    if(withHarbor) then
        return rttr:GetPlayer(plr):GetNumBuildings(BLD_HARBORBUILDING) + rttr:GetPlayer(plr):GetNumBuildings(BLD_BARRACKS) + rttr:GetPlayer(plr):GetNumBuildings(BLD_GUARDHOUSE) + rttr:GetPlayer(plr):GetNumBuildings(BLD_WATCHTOWER) + rttr:GetPlayer(plr):GetNumBuildings(BLD_FORTRESS)
    else
        return rttr:GetPlayer(plr):GetNumBuildings(BLD_BARRACKS) + rttr:GetPlayer(plr):GetNumBuildings(BLD_GUARDHOUSE) + rttr:GetPlayer(plr):GetNumBuildings(BLD_WATCHTOWER) + rttr:GetPlayer(plr):GetNumBuildings(BLD_FORTRESS)
    end
end

function enforceBuildingCount(player, building, limit, notify)
    local sumBuildings = rttr:GetPlayer(player):GetNumBuildings(building) + rttr:GetPlayer(player):GetNumBuildingSites(building)

    if (sumBuildings >= limit) then
        rttr:GetPlayer(player):DisableBuilding(building)
    else
        rttr:GetPlayer(player):EnableBuilding(building, notify)
    end
end

function addExtraBoards(plrId, amount)
    rttr:GetPlayer(plrId):AddWares({[GD_BOARDS] = amount})
end

function addExtraSoldiers(plrId, amount)
    rttr:GetPlayer(plrId):AddPeople({[JOB_PRIVATE] = amount})
end