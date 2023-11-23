class scoreboard;
mailbox mon2scb;
function new (mailbox mon2scb);
this.mon2scb=mon2scb;
endfunction
task main;
transaction trans;
repeat(1)
begin
mon2scb.get(trans);
if((trans.power==1)&&(trans.state==a)&&(trans.out==0)||(trans.fill_water==1)&&(trans.power==1)&&(trans.state==b)&& (trans.out==0)||(trans.power==1)&& (trans.add_det==1) &&(trans.state==c)&& (trans.out==0) &&(trans.power==1)&&(trans.fill_water==1)&&(trans.out==1)&&(trans.state= idle))
$display(“Correct Result”);
else
$display(“wrong display”);
  trans.display(“[Scoreboard]”);
end
endtask
endclass
