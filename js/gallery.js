import { fetchData } from "./components/DataMiner.js";

import PortfolioCard from "./components/PortfolioCard.js";
import lightbox from "./components/lightbox.js";

(() => {

    let vue_vm = new Vue({

        data: {
            mainMessage: "Portfolio App",
            descMessage: "You can mouseover on any portfolio name to see it's details",
            removeAformat: true,
            showBioData: false,
            portfolios: [],
            currentPortfolioData: null
        },

        mounted: function() {
            console.log("Vue is mounted, trying a fetch for the initial data");

            fetchData("./includes/index.php").then(data => this.portfolios = data).catch(err => console.error(err));
        },

        updated: function() {
            console.log("Vue just updated the DOM");
                },

        methods: {

            showDetail(target) {

                console.log("Mouseover to view portfolio name's detail", target, target.name);

                // this.showBioData = this.showBioData ? false : true;

                if (this.showBioData) {
                    this.showBioData = false;
                    this.showBioData = true;
                } else {
                    this.showBioData = true;
                }

                this.currentPortfolioData = target;
            },

            closeLightBox() {
                this.currentPortfolioData = null
            }
            
        },

        components: {
            "portfolio-card": PortfolioCard,
            lightbox
        },

        computed : {
            isPortfolioSelected() {
                return this.selectedPortfolio !== null
            }
        }
    }).$mount("#app");
})();