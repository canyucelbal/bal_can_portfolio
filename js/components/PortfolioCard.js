export default {
    name: "ThePortfolioCard",
    props: ["portfolio"],

    data: function() {
        return {
            myName: this.portfolio.name,
            myDescription: this.portfolio.description,
        }
    },

    template: 
        `<li @click="logClicked">
        
          <img :src="'images/' + portfolio.image" :alt='portfolio.name + " image"' class="portfolioImage">
           
        </li>`,
    created: function() {
        console.log(`Created ${this.portfolio.name}'s card`);
    },

    methods: {
        logClicked() {
            console.log(`Clicked on ${this.portfolio.name}'s component! This will definitely not do anything.`);
        }
    }
}