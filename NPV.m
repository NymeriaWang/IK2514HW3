CapexH=[18690	68295	136540	223435	328971 775936];
OpexH=[4539	14319	33873	65871	112983 231585];
CostH=CapexH+OpexH;
NPVH=0;
for i=1:5
    NPVH=NPVH+CostH(i)/((1+0.1)^i)
end
NPVH=NPVH-CostH(5);

CapexLM=[84656	84208	84207	84207	84206 421486];
OpexLM=[20009	31547	43085	54623	66161 215428];
CostLM=CapexH+OpexH;
NPVLM=0;
for j=1:5
    NPVLM=NPVLM+CostLM(j)/((1+0.1)^j)
end
NPVLM=NPVLM-CostLM(5);

CapexLP=[23889	21857	22672	22674	22671 113781];
OpexLP=[19907	36235	53158	70082	87005 266390];
CostLP=CapexH+OpexH;
NPVLP=0;
for h=1:5
    NPVLP=NPVLP+CostLP(h)/((1+0.1)^h)
end
NPVLP=NPVLP-CostLP(5);
