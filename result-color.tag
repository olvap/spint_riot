<result-color>
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
    {letter}
  </div>

  <script>
    switch(opts.value){
      case '0':
        this.color = 'red'
        this.letter = 'R'
        break;
      case '100':
        this.color = 'green'
        this.letter = 'G'
        break;
      default:
        this.color = 'yellow'
        this.letter = 'Y'
    }
  </script>
</result-color>
