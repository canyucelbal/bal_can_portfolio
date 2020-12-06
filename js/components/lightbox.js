export default {
    name: "LightboxComponent",
    props: [
        "value",
        "portfolio"
    ],

    data: function() {
        return {}
    },

    template: 
        `
        <div v-if="portfolio" class="lightbox" :class="{show: !!this.portfolio}">
            <a class="close-btn" @click.prevent="closeLightBox">
                x
            </a>
            <img :src="'images/' + portfolio.imageb" />

            <div class="info">
            {{ portfolio.name }}
            <br />
            {{ portfolio.description }}
            </div>

            <div class="shadow" @click="closeLightBox"></div>
        </div>
        `
        ,
    created: function() {
    },

    methods: {
        closeLightBox() {
            this.$emit('on-close')
        }
    }
}