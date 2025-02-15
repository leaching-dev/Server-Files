local cfg = {}

cfg.metPoliceRanks = {
    {"CID Constable", 60000, "police.cidconstable.whitelisted"},
    {"Special Constable", 82500, "police.specialconstable.whitelisted"},
    {"NPAS", 67500, "police.npas.whitelisted"},
    {"Custody Sergeant", 30000, "police.custodysergeant.whitelisted"},
    {"PCSO", 30000, "police.pcso.whitelisted"},
    {"PC", 37500, "police.constable.whitelisted"},
    {"Senior Constable", 45000, "police.seniorconstable.whitelisted"},
    {"Sergeant", 52500, "police.sergeant.whitelisted"},
    {"Inspector", 60000, "police.inspector.whitelisted"},
    {"Chief Inspector", 67500, "police.chiefinspector.whitelisted"},
    {"Superintendent", 75000, "police.superintendent.whitelisted"},
    {"Chief Superintendent", 82500, "police.chiefsuperintendent.whitelisted"},
    {"GC Advisor", 90000, "police.advisor.whitelisted"},
    {"Commander", 90000, "police.commander.whitelisted"},
    {"Dep. Asst. Commissioner", 97500, "police.deputyassistantcommissioner.whitelisted"},
    {"Assistant Commissioner", 105000, "police.assistantcommissioner.whitelisted"},
    {"Deputy Commissioner", 112500, "police.deputycommissioner.whitelisted"},
    {"Commissioner", 120000, "police.commissioner.whitelisted"}
}

cfg.nhsRanks = {
    {"HEMS", 60000, "nhs.hems.whitelisted"},
    {"NHS Trainee Paramedic", 37500, "nhs.traineeparamedic.whitelisted"},
    {"NHS Paramedic", 45000, "nhs.paramedic.whitelisted"},
    {"NHS Critical Care", 52500, "nhs.criticalcare.whitelisted"},
    {"NHS Junior Doctor", 60000, "nhs.juniordoctor.whitelisted"},
    {"NHS Doctor", 67500, "nhs.doctor.whitelisted"},
    {"NHS Senior Doctor", 75000, "nhs.seniordoctor.whitelisted"},
    {"NHS Specialist", 82500, "nhs.specialist.whitelisted"},
    {"NHS Consultant", 90000, "nhs.consultant.whitelisted"},
    {"NHS Captain", 97500, "nhs.captain.whitelisted"},
    {"NHS Medical Advisor", 90000, "nhs.advisor.whitelisted"},
    {"NHS Deputy Chief", 105000, "nhs.deputychief.whitelisted"},
    {"NHS Assistant Chief", 112500, "nhs.assistantchief.whitelisted"},
    {"NHS Head Chief", 120000, "nhs.headchief.whitelisted"}
}

cfg.lfbRanks = {
    {"Trainee Firefighter", 37500, "lfb.provisionalfirefighter.whitelisted"},
    {"Firefighter", 45000, "lfb.juniorfirefighter.whitelisted"},
    {"Crew Manager", 48750, "lfb.firefighter.whitelisted"},
    {"Watch Manager", 52500, "lfb.seniorfirefighter.whitelisted"},
    {"Station Manager", 56250, "lfb.advancedfirefighter.whitelisted"},
    {"Group Manager", 60000, "lfb.specialistfirefighter.whitelisted"},
    {"Area Manager", 67500, "lfb.leadingfirefighter.whitelisted"},
    {"Sector Command", 75000, "lfb.sectorcommand.whitelisted"},
    {"Divisional Command", 82500, "lfb.divisionalcommand.whitelisted"},
    {"Divisional Officer", 97500, "lfb.divisionalofficer.whitelisted"},
    {"Honourable Firefighter", 90000, "lfb.honaryfirefighter.whitelisted"},
    {"Fire Command Advisor", 90000, "lfb.firecommandadvisor.whitelisted"},
    {"Assistant Chief Fire Officer ", 105000, "lfb.assistantchieffireofficer.whitelisted"},
    {"Deputy Chief Fire Officer", 112500, "lfb.deputychieffireofficer.whitelisted"},
    {"Chief Fire Officer", 120000, "lfb.chieffirecommand.whitelisted"},
}

cfg.hmpRanks = {
    {"Trainee Prison Officer", 20000, "hmp.traineeprisonofficer.whitelisted"},
    {"Prison Officer", 30000, "hmp.prisonofficer.whitelisted"},
    {"Senior Officer", 32500, "hmp.seniorofficer.whitelisted"},
    {"Specialist Officer", 35000, "hmp.specialistofficer.whitelisted"},
    {"Principal Officer", 37500, "hmp.principalofficer.whitelisted"},
    {"Supervising Officer", 40000, "hmp.supervisingofficer.whitelisted"},
    {"Honourable Guard", 40000, "hmp.honourableguard.whitelisted"},
    {"Custodial Officer", 42500, "hmp.custodialofficer.whitelisted"},
    {"Custodial Supervisor", 45000, "hmp.custodialsupervisor.whitelisted"},
    {"Divisional Commander", 50000, "hmp.divisionalcommander.whitelisted"},
    {"Deputy Governor", 55000, "hmp.deputygovernor.whitelisted"},
    {"Governor", 60000, "hmp.governor.whitelisted"},
}

cfg.casinoRanks = {
    {"Casino Security", 20000},
    {"Casino Manager", 30000},
    {"Casino Owner", 50000},
}

return cfg