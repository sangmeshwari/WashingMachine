class Monitor ;
virtual intf vif; 
mailbox mon2scb;
function new(virtual intf vif,mailbox mon2scb);
this.vif=vif;
this.mon2scb=mon2scb;
endfunction
  task main();
repeat(1);
begin
transaction trans;
trans=new();
trans.rest=vif.rest;
trans.power=vif.power;
trans.fill_water=vif.fill_water;
trans.add_det=vif.add_det;
trans.out=vif.out;
mon2scb.put(trans);
  trans.display(“[Monitor]”);
end
endtask
endclass
