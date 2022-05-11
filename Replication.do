* Figure 2

use Regionalism_Election
graph bar vf_merge, over(election) ytitle(RVF) ylabel(0 (.05) .3) bar(1, fcolor(navy)) bargap(5) legend(off)


* Figure 3

use Huber
hist VF, width(.03) xtitle(GVF Score) ytitle(" ") fraction xline(.1035613, lcolor(black) lwidth(vthin)) lcolor(blue) xlabel(0 (0.2) .4) ylabel(0 (0.05) .2) fcolor(gs15)


* Figure 4

use Regionalism_RegionElection
graph twoway (scatter RV election, by(rcode, legend(off) cols(4) hole(4) compact note(" ")) ///
       lpattern(solid) lwidth(*1.2) connect(l) msymbol(o) msize(1) lcolor(gs2) mcolor(gs2) ///
       xlab(13(1)20) ylab(0(.1).6) ytitle(RV score) xtitle(Election))

	   
* Figure 5

use EV
hist GV, width(.03) xtitle(EV Score) ytitle(" ") fraction xline(.2156721, lcolor(black) lwidth(vthin)) lcolor(green) xlabel(0 (0.2) .8) ylabel (0 (0.05) .15) fcolor(gs15)

