class generator;
  transaction trans;
  mailbox gen2driv;
  function new(mailbox gen2driv);
    this.gen2driv=gen2driv;
  endfunction
  
  task main();
    repeat(1)
      begin
        trans_new();
        trans.randomize();
        trans.display("display from generator");
        gen2driv.put (trans);
      end
  endtask
endclass
