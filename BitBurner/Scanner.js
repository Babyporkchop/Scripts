/** @param {NS} ns */
export async function main(ns) {
  function append(Array, ArrayAdd){
    for (let i = 0; i < ArrayAdd.length; i++) {
      Array.push(ArrayAdd[i])
    }
    return(Array)
  }
  function Scanning(Server,depth){
    
    if (depth == 0){
      return Server
    }else{
      let Temp = []
      for (let i = 0; i < Server.length; i++) {
        let ServerNewLayer = ns.scan(Server[i])
        ServerNewLayer.shift()
        Temp = append(Temp,Scanning(ServerNewLayer,depth-1))
      }
      Server = append(Server,Temp)
      return Server
    }
  }
  ns.print(Scanning(ns.scan(),ns.args[0]-1))
}
