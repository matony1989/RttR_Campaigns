---- Campaign lua version ------
function getRequiredLuaVersion()
    return 1
end

rttr:RegisterTranslations(
{
    en =
    {
        name = 'Roman campaign II',
        shortDescription = 'Roman campaign II by Berciq',
        longDescription= 'Roman campaign II by Berciq'
    }
})

campaign = {
    version = 1,
    author = "Berciq",
    name = _"ROMAN CAMPAIGN II BY BERCIQ",
    shortDescription = _"shortDescription",
    longDescription = _"longDescription",
    image = "<RTTR_GAME>/GFX/PICS/INSTALL.LBM",
    maxHumanPlayers = 1,
    difficulty = "medium",
    mapFolder = "<RTTR_RTTR>/CAMPAIGNS/ROMAN CAMPAIGN II",
    luaFolder = "<RTTR_RTTR>/CAMPAIGNS/ROMAN CAMPAIGN II",
    maps = { "MISS210.WLD","MISS211.WLD","MISS212.WLD","MISS213.WLD","MISS214.WLD","MISS215.WLD","MISS216.WLD","MISS217.WLD","MISS218.WLD","MISS219.WLD","MISS220.WLD"}
}
