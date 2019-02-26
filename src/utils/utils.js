const contractAddress = 'TLX4zKPEvKEXUtpdTLFQD3uSiy1QYraG4H'

const utils = {
    tronWeb: false,
    contract: false,

    async setTronWeb(tronWeb) {
        this.tronWeb = tronWeb;
        this.contract = await tronWeb.contract().at(contractAddress)
    },
  
};

export default utils;