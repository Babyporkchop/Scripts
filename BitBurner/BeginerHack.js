/** @param {NS} ns */
export async function main(ns) {
  //ns.disableLog("ALL")
  //Declare Functions and some variables
  let Server = ns.scan();
  let Server2 = []
  let Server3 = []
  let counter = 0
  let counter2 = 0
  //adds one Array to another without it becoming an array inside an array
  function append(Array, ArrayAdd){
    for (let i = 0; i < ArrayAdd.length; i++) {
      Array.push(ArrayAdd[i])
    }
    return(Array)
  }
  //removes all items in a array that are in the index
  function Remove(Array, Index){
    let Temp=[]
    for (let i = 0; i < Index.length; i++) {
      Temp[i] = Array[Index[i]]
    }
    for (let i = 0; i < Index.length; i++) {
      Array.splice(Array.indexOf(Temp[i]),1)
    }
    return(Array)
  }
  //Recursivly Scans Network upto certain depth
  function Scanning(Server,depth){
    depth = depth-1
    if (depth == 0){
      return Server
    }else{
      let Temp = []
      for (let i = 0; i < Server.length; i++) {
        let ServerNewLayer = ns.scan(Server[i])
        ServerNewLayer.shift()
        Temp = append(Temp,Scanning(ServerNewLayer,depth))
      }
      Server = append(Server,Temp)
      return Server
    }
  }
  Server=Scanning(ns.scan(),10)
  for (let i = 0; i < Server.length; i++) {
  Server[i]= [Server[i],ns.getServerRequiredHackingLevel(Server[i]),ns.getServerMaxMoney(Server[i]),ns.getServerNumPortsRequired(Server[i])];
  }
  //Removes all of the ones that have too high port requirements
  //Removes all of the ones with too high of a hacking level  
  //Checking Hacking level requirments for servers and removing according ones
  let RemoveIndex = []
  for (let i = 0; i < Server.length; i++) {
    if (Server[i][1] > ns.getHackingLevel()){
      RemoveIndex.push(i)
    }
  }
  Server = Remove(Server, RemoveIndex)
  //Checking Port requirments for servers and removing according ones
  let PortAmount = 0
  let PortPrograms = ["BruteSSH.exe","FTPCrack.exe"]
  //Find how many ports we can open
  for (let i = 0; i < PortPrograms.length; i++) {
    if (ns.fileExists(PortPrograms[i], "home")){
      PortAmount++
    }
  }
  RemoveIndex = []
  for (let i = 0; i < Server.length; i++) {
    if (Server[i][3] > PortAmount){
      RemoveIndex.push(i)
    }
  }
  Server = Remove(Server, RemoveIndex)
  RemoveIndex = []
  //Creates an array of just the Max Money of the server
  //Finds the highest value and locates index of associated server
  let Money = [];
  for (let i = 0; i < Server.length; i++) {
    Money.push(parseInt(Server[i][2]))
  }
  let TargetIndex = Money.indexOf(Math.max.apply(Math, Money))
  let TargetName = Server[TargetIndex][0]
  if(ns.hasRootAccess(TargetName) == false){
      if(ns.getServerNumPortsRequired(TargetName) > 0){
        ns.brutessh(TargetName)
        ns.ftpcrack(TargetName)
      }
      ns.nuke(TargetName)
  }
  let Threads=1
  for (let i = 0; i < Server.length; i++) {
    if(ns.hasRootAccess(Server[i][0]) == false){
      if(Server[i][3] > 0){
        ns.brutessh(Server[i][0])
        ns.ftpcrack(Server[i][0])
      }
      ns.nuke(Server[i][0])
    }
    ns.scp("BasicHack.js",Server[i][0])
    Threads=Math.floor(ns.getServerMaxRam(Server[i][0])/ns.getScriptRam("BasicHack.js"))
    ns.exec("BasicHack.js",Server[i][0],Threads,TargetName)
  }
  ns.print(Server)
}
