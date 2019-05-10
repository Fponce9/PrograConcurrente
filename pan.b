	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* PROC filosofo */
;
		;
		
	case 4: // STATE 3
		;
		now.fork[ Index(((P0 *)_this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 5: // STATE 6
		;
		now.fork[ Index(((((P0 *)_this)->i+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 6: // STATE 9
		;
		now.fork[ Index(((P0 *)_this)->i, 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 7: // STATE 10
		;
		now.fork[ Index(((((P0 *)_this)->i+1)%5), 5) ] = trpt->bup.oval;
		;
		goto R999;

	case 8: // STATE 14
		;
		p_restor(II);
		;
		;
		goto R999;
	}

