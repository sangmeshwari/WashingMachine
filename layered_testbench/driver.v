class driver;
   virtual intf vif;
   mailbox gen2driv;
  function new(virtual intf vif,mailbox gen2driv);
     this.vif=vif;
     this.gen2driv=gen2driv;
   endfunction
   task main();
     repeat(200)
       begin
         transaction trans;
         gen2driv.get(trans);
        //vif.rst<=trans.rst;
        //vif.clk<=trans.clk;
         vif.power<=trans.power;
         vif.fill_water<=trans.fill_water;
         vif.add_det<=trans.add_det;
         trans.out<=vif.out;
         trans.display("[driver]");
       end
   endtask
 endclass
