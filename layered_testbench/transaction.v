class transaction;
  rand bit rst;
  bit clk;
  rand bit power;
  rand bit fill_water;
  rand bit add_det;
  rand bit[3:0]   count;
  rand bit[1:0] state;
  bit out;
  
  function void display(string name);
    $display("%s",name);
    $display("count=%d,state=%d,fill_water=%d,add_det=%d",count,state,fill_water,add_det);
    $display("out=%d",out);
    
    
    endfunction
      endclass
