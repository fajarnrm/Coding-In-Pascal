program popularitas;
const
        a='Very Popular Tweet';
        b='Popular Tweet';
        c='Favorite Tweet';
        d='Ordinary Tweet';
var
        like,retweet,favorite: integer;
begin
        write('Jumlah Like= ');
        readln(like);
        write('Jumlah Retweet= ');
        readln(retweet);
        write('Jumlah Favotire= ');
        readln(favorite);
        if (like>=500) and (retweet>=300) and (favorite>=800) then
           begin
              write(a);
           end
        else if (like>=100)and(like<500) and (retweet>=100)and(retweet<500) and (favorite>=700)and(favorite<800)then
           begin
              write(b);
           end
        else if (like>=100)and(like<500) and (retweet>=100)and(retweet<500) and (favorite>=100)and(favorite<700)then
           begin
              write(c);
           end
        else if (like<100) and (retweet<100) and (favorite<100)then
           begin
              write(d);
           end;
end.
