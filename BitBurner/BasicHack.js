/** @param {NS} ns */
export async function main(ns) {
  let Server=ns.args[0]
  let MaxMoney=ns.getServerMaxMoney(Server)
  let MinSecurity=ns.getServerMinSecurityLevel(Server)
  while (true){
    if (ns.getServerSecurityLevel(Server) > MinSecurity) {
            // If the server's security level is above our threshold, weaken it
            await ns.weaken(Server);
        } else if (ns.getServerMoneyAvailable(Server) < MaxMoney) {
            // If the server's money is less than our threshold, grow it
            await ns.grow(Server);
        } else {
            // Otherwise, hack it
            await ns.hack(Server);
        }
  }
}
