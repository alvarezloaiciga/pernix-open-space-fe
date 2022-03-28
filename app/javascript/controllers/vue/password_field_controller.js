import * as Vue from "vue"

const elementId = "#password-field-vue"
const element = document.querySelector(elementId)

if (element !== null) {
  const app = Vue.createApp({
    template: `
      <label class="form-label">Password Vue</label>
      <div class="input-group">
        <input :type="inputType" name="user[password]" class="form-control" />
        <button type="button" class="btn btn-outline-secondary btn-icon" @click="handlePasswordVisibilityChange">
          <i :class="icon"/>
        </button>
      </div>
    `,

    data() {
      return {
        inputType: "password",
        icon: "fa fa-eye",
      }
    },

    methods: {
      handlePasswordVisibilityChange() {
        this.inputType = this.inputType == "password" ? "text" : "password"
        this.icon = this.inputType == "text" ? "fa fa-eye-slash" : "fa fa-eye"
      }
    }
  })

  app.mount(elementId)
}
