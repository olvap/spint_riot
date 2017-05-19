<result-fraction>
  <style>
    .green {
      background-color: #9ad17c;
    }

    .red {
      background-color: #e24c52;
    }

    .yellow {
      background-color: #ffe069;
    }

    div {
      align-items: center;
      background-color: #c7c9c0;
      display: flex;
      flex-direction: column;
      height: 70px;
      justify-content: center;
      font-weight: 600;
      font-size: 1.4em;
    }
  </style>

  <div class={color}>
    { opts.numerator } / { opts.denominator }
  </div>

  <script>
    if(opts.green < opts.red) {
      this.low_value = 'green'
      this.high_value = 'red'
    } else {
      this.low_value = 'red'
      this.high_value = 'green'
    }

    this.value = opts.numerator / opts.denominator
    if(this.value < opts.green && this.value < opts.red) {
      this.color = this.low_value
    } else if (this.value > opts.red && this.value > opts.green){
      this.color = this.high_value
    } else {
      this.color = 'yellow'
    }
  </script>
</result-fraction>
