import { Component } from "@angular/core";

@Component({
  selector: "app-root",
  templateUrl: "./app.component.html",
  styleUrls: ["./app.component.css"]
})
export class AppComponent {
  date = new Date();
  month = this.date.getMonth();
  year = this.date.getFullYear();
  day = this.date.getDate();
  daysInMonth = new Date(this.year, this.month + 1, 0).getDate(); // counts how many days are there in a month
  daysArr = Array.from({ length: this.daysInMonth }, (_, index) => index + 1); // creates [1..28]

  selectedDate = this.day; // highlights today's date.
  nameOfDate = this.date.toLocaleDateString("en", { weekday: "long" }); // returns monday, tues, wed

  correctFormatting() {
    var monthStart = new Date(this.year, this.month, 1);
    console.log("monthStart", monthStart);
    var startingDay = monthStart.toLocaleDateString("en", { weekday: "long" });
    var numbersToShift = this.days.findIndex((x) => x === startingDay);
    for (var i = 0; i < numbersToShift; i++) {
      this.daysArr.unshift(null);
    }
    console.log("load");
  }

  days = [
    "Sunday",
    "Monday",
    "Tuesday",
    "Wednesday",
    "Thursday",
    "Friday",
    "Saturday"
  ];

  months = [
    "January",
    "February",
    "March",
    "April",
    "May",
    "June",
    "July",
    "August",
    "September",
    "October",
    "November",
    "December"
  ];

  changeDate(newDate) {
    this.selectedDate = newDate; // allows you to click another date to highlight it
  }

  changeMonth(forward) {
    let newMonth;
    if (forward === "forwards") {
      newMonth = new Date(this.year, this.month + 2, 0);
    } else {
      newMonth = new Date(this.year, this.month, 0);
    }
    this.month = newMonth.getMonth();
    this.year = newMonth.getFullYear();
    this.day = newMonth.getDate();
    this.daysInMonth = new Date(this.year, this.month + 1, 0).getDate();
    this.daysArr = Array.from(
      { length: this.daysInMonth },
      (_, index) => index + 1
    );

    this.correctFormatting();
  }

  constructor() {
    this.correctFormatting();
  }
}
