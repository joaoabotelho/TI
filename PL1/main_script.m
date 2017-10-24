clc,clear, close all;
[guitar_samples,alfabeto_guitar]=reader('guitarSolo.wav','audio');
figure(1)
[probs_guitar,ocor_guitar]=histogram(guitar_samples,alfabeto_guitar, 'guitarSolo.wav' );
H_guitar=calc_entropy(probs_guitar);
[homer_samples,alfabeto_homer]=reader('homer.bmp','img');
figure(2)
[probs_homer,ocor_homer]=histogram(homer_samples,alfabeto_homer, 'homer.bmp');
H_homer=calc_entropy(probs_homer);
[kid_samples,alfabeto_kid]=reader('kid.bmp','img');
figure(3)
[probs_kid,ocor_kid]=histogram(kid_samples,alfabeto_kid, 'kid.bmp');
H_kid=calc_entropy(probs_kid);
[homerBin_samples,alfabeto_homerBin]=reader('homerBin.bmp','img');
figure(4)
[probs_homerBin,ocor_homerBin]=histogram(homerBin_samples,alfabeto_homerBin, 'homerBin.bmp');
H_homerBin=calc_entropy(probs_homerBin);
[text_samples,alfabeto_text]=reader('english.txt','text');
figure(5)
[probs_text,ocor_text]=histogram(text_samples,alfabeto_text, 'english.txt');
H_text=calc_entropy(probs_text);

%ex.4

len_guitar=hufflen(ocor_guitar);
len_homer=hufflen(ocor_homer);
len_kid=hufflen(ocor_kid);
len_homerBin=hufflen(ocor_homerBin);
len_text=hufflen(ocor_text);

len_med_guitar_=sum(len_guitar.*probs_guitar);
len_med_homer_=sum(len_homer.*probs_homer);
len_med_kid_=sum(len_kid.*probs_kid);
len_med_homerBin_=sum(len_homerBin.*probs_homerBin);
len_med_text_=sum(len_text.*probs_text);

%ex5.
alfa_homer=agrupa_simbolos(alfabeto_homer);
