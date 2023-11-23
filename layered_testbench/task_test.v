task test();
	task
		gen.main();
		driv.main();
		mon.main();
		scb.main();
	join
      end task
	task run();
	test();
      $finish;
endtask
endclass
