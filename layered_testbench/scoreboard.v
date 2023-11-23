class scoreboard;
mailbox mon2scb;
function new (mailbox mon2scb);
this.mon2scb=mon2scb;
endfunction
task main;
transaction trans;
  repeat(200)
begin
mon2scb.get(trans);
  if((trans.state==3)&&(trans.out==0)&&(trans.fill_water==1)&&(trans.add_det==1))
   begin
    $display("Correct Result");
      end
  else if((trans.state==3)&&(trans.out==0)&&(trans.fill_water==1)&&(trans.add_det==1))
   begin
    $display("Correct Result");
      end
  else if((trans.state==0)&&(trans.out==0)&&(trans.fill_water==0)&&(trans.add_det==0))
   begin
    $display("Correct Result");
      end
else
  begin
  $display("wrong display");
  trans.display("[Scoreboard]");
  end
end
endtask
endclass
