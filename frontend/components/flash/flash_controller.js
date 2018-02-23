import { Controller } from "stimulus";
// import _ from "lodash";
// import Noty from 'noty';

export default class extends Controller {
  connect() {
    console.log("HELLO FROM FLASH!", this.element);
    // debugger;
    // const flash = this.element.dataset.flash;

    // if (_.isEmpty(flash)) { return; }

    // _.each(flash, (data) => {
    //   const flashType = data[0];
    //   const flashMessage = data[1];

    //   if (_.isEmpty(flashMessage)) { return; }
      
    //   if (flashType === "error") {
    //     new Noty({ type: 'error', text: flashMessage });
    //   } else {
    //     new Noty({ type: 'success', text: flashMessage });
    //   }
    // });
  }
}
