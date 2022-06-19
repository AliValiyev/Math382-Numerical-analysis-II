%İlgi Demirer 2426385, Ruşen Kartal 2468841, Hüseyin Eren Demirtaş 2358653, Ali Valiyev 2415461
%Date: 15-06-2022

function w = nc_weight ( N );
%  function w = nc_weight ( N )
%  returns in w the weights for the N-point Newton-Cotes quadrature 
%  rule,
%  w is returned as a row vector
%  N must be between 2 and 20.
%



  if ( N < 2 ) 
    error('nc_weight; N must be at least 2!')
%
%  Trapezoidal rule:
%
  elseif ( N == 2 )
    w = [1 1]/2; 
%
%  Simpson's rule:
%
  elseif ( N == 3 )
    w = [1 4 1]/6; 
%
%  Simpson's 3/8 rule:
%
  elseif ( N == 4 )
    w = [1 3 3 1]/8; 
%
%  Boole's rule:
%
  elseif ( N == 5 )
    w = [7 32 12 32 7]/90; 
  elseif ( N == 6 )
    w = [19 75 50 50 75 19]/288; 
  elseif ( N == 7 )
    w = [41 216 27 272 27 216 41]/840; 
  elseif ( N == 8 )
    w = [751 3577 1323 2989 2989 1323 3577 751]/17280; 
  elseif ( N == 9 )
    w = [989 5888 -928 10496 -4540 10496 -928 5888 989]/28350; 
  elseif ( N == 10 )
    w = [2857 15741 1080 19344 5778 5778 19344 1080 15741 2857]/89600; 
  elseif ( N == 11 )
    w = [16067 106300 -48525 272400 -260550 427368 -260550 272400 -48525 106300 16067]/598752; 
  elseif ( N == 12 )
    w = [ 2171465 13486539 -3237113 25226685 -9595542 15493566 ...
          15493566 -9595542 25226685 -3237113 13486539 2171465 ] / 87091200;
  elseif ( N == 13 )
    w = [ 1364651 9903168 -7587864 35725120 -51491295 87516288 -87797136 ...
          87516288 -51491295 35725120 -7587864 9903168 1364651 ] / 63063000;
  elseif ( N == 14 )
    w = [ 6137698213 42194238652 -23361540993 116778274403 -113219777650 ...
          154424590209 -32067978834 ...
          -32067978834 154424590209 ...
          -113219777650 116778274403 -23361540993 42194238652 6137698213 ] / 301771008000;
  elseif ( N == 15 )
    w  = [ 90241897 710986864 -770720657 3501442784 -6625093363 ...
           12630121616 -16802270373 19534438464 ...
           -16802270373 12630121616 ...
           -6625093363 3501442784 -770720657 710986864 90241897 ] / 5003856000;
  elseif ( N == 16 )
    w = [ 105930069 796661595 -698808195 3143332755 -4688522055 ...
          7385654007 -6000998415 3056422815 ...
          3056422815 -6000998415 7385654007 ...
          -4688522055 3143332755 -698808195 796661595 105930069 ] / 6199345152;
  elseif ( N == 17 ) 
    w = [ 15043611773 127626606592 -179731134720 832211855360 ...
          -1929498607520 4177588893696 -6806534407936 9368875018240 ...
          -10234238972220 ...
          9368875018240 -6806534407936 4177588893696 -1929498607520 ...
          832211855360 -179731134720 127626606592 15043611773 ] / 976924698750;
  elseif ( N == 18 ) 
    w = [ 55294720874657 450185515446285 -542023437008852 2428636525764260 ...
          -4768916800123440 8855416648684984 -10905371859796660 10069615750132836 ...
          -3759785974054070 -3759785974054070 ...
          10069615750132836 -10905371859796660 8855416648684984 -4768916800123440 ...
          2428636525764260 -542023437008852 450185515446285 55294720874657 ] / 3766102179840000;
  elseif ( N == 19 )
    w = [ 203732352169 1848730221900 -3212744374395 15529830312096 ...
          -42368630685840 103680563465808 -198648429867720 319035784479840 ...
          -419127951114198 461327344340680 -419127951114198 ...
          319035784479840 -198648429867720 103680563465808 -42368630685840 ...
          15529830312096 -3212744374395 1848730221900 203732352169] / 15209113920000;
  elseif ( N == 20 )
    w = [ 69028763155644023 603652082270808125 -926840515700222955 4301581538450500095 ...
          -10343692234243192788 22336420328479961316 -35331888421114781580 43920768370565135580 ...
          -37088370261379851390 15148337305921759574 15148337305921759574 -37088370261379851390 ...
          43920768370565135580 -35331888421114781580 22336420328479961316 -10343692234243192788 ...
          4301581538450500095 -926840515700222955 603652082270808125 69028763155644023 ] ...
        / 5377993912811520000;
  else
    error('nc_weight: N must be no more than 20!');
  end
