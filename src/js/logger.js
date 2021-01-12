/*
 *  Copyright (c) 2021 Peter Christensen. All Rights Reserved.
 *  CC BY-NC-ND 4.0.
 */
function logPrefix() {
  return `[daoistic ${new Date().toLocaleTimeString()}]`;
}

let logger = {
  debug: (...args) => {
    if (document.debugLogEnabled) {
      console.debug(logPrefix(), ...args);
    }
  },
  info: (...args) => {
    if (document.infoLogEnabled) {
      console.log(logPrefix(), ...args);
    }
  },
  error: (...args) => {
    console.error(logPrefix(), ...args);
  }
}
export default logger;
