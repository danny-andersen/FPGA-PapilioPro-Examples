Version 4
SymbolType BLOCK
TEXT 32 32 LEFT 4 uart
RECTANGLE Normal 32 32 672 960
LINE Wide 0 80 32 80
PIN 0 80 LEFT 36
PINATTR PinName data_in_from_pins[0:0]
PINATTR Polarity IN
LINE Wide 0 336 32 336
PIN 0 336 LEFT 36
PINATTR PinName data_out_to_pins[0:0]
PINATTR Polarity OUT
LINE Normal 0 464 32 464
PIN 0 464 LEFT 36
PINATTR PinName clk_in
PINATTR Polarity IN
LINE Normal 0 656 32 656
PIN 0 656 LEFT 36
PINATTR PinName clk_reset
PINATTR Polarity IN
LINE Normal 0 688 32 688
PIN 0 688 LEFT 36
PINATTR PinName io_reset
PINATTR Polarity IN
LINE Wide 704 80 672 80
PIN 704 80 RIGHT 36
PINATTR PinName data_in_to_device[7:0]
PINATTR Polarity OUT
LINE Wide 704 336 672 336
PIN 704 336 RIGHT 36
PINATTR PinName data_out_from_device[7:0]
PINATTR Polarity IN
LINE Normal 704 496 672 496
PIN 704 496 RIGHT 36
PINATTR PinName clk_div_out
PINATTR Polarity OUT

