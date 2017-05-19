<result-number>
  <style>
    :scope.percentaje p:after {
      content: '%';
    }

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
    <p>{ opts.value }</p>
  </div>

  <script>
    if(opts.green < opts.red) {
      this.low_value = 'green'
      this.high_value = 'red'
    } else {
      this.low_value = 'red'
      this.high_value = 'green'
    }

    if(opts.value < opts.green && opts.value < opts.red) {
      this.color = this.low_value
    } else if ( opts.value > opts.red && opts.value > opts.green ) {
      this.color = this.high_value
    } else {
      this.color = 'red'
    }
  </script>
</result-number>
