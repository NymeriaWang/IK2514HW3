
HSPACAPEX=[18690 68295 136540 223435 328971];
N=[0 445 2075 5334 10667 18519];
SUM=6;
HSPA=[0 0 0 0 0]
for i=1:5
    HSPA(i)=N(i+1)*SUM+HSPACAPEX(1)*0.1
end

LTECAPEX=[84656	84208	84207	84207	84206];
N=[0 1924	3847	5770	7693	9616];
SUM=6;
LTE=[0 0 0 0 0]
for i=1:5
    LTE(i)=N(i+1)*SUM+LTECAPEX(1)*0.1;
end

PICOCAPEX=[23889	21857	22672	22674	22671];
N=[0 7963	15385	23077	30770	38462];
SUM=2.2;
PICO=[0 0 0 0 0]
for i=1:5
    PICO(i)=N(i+1)*SUM+PICOCAPEX(1)*0.1;
end

y=[HSPA(1) LTE(1) PICO(1); HSPA(2) LTE(2) PICO(2); HSPA(3) LTE(3) PICO(3); HSPA(4) LTE(4) PICO(4); HSPA(5) LTE(5) PICO(5);];
b=bar(y);
grid on;

name={'Year 1','2','3','4','5'};
set(gca,'XTickLabel',name)

legend('HSPA Micro','LTE Micro','LTE PICO');
xlabel('Year');
ylabel('KEuro');


%-----------------------sum--------------------------
sum1=0;
sum2=0;
sum3=0;
for z=1:5
    sum1=sum1+HSPA(z);
    sum2=sum2+LTE(z);
    sum3=sum3+PICO(z);
end

%------------total cost----------------------------------
sumh=[0 0 0 0 0];
suml=[0 0 0 0 0];
sump=[0 0 0 0 0];
sumht=0;
sumlt=0;
sumpt=0;
for z=1:5
    sumh(z)=HSPACAPEX(z)+HSPA(z);
    suml(z)=LTECAPEX(z)+LTE(z);
    sump(z)=PICOCAPEX(z)+PICO(z);
end
for z=1:5
    sumht=sumht+sumh(z);
    sumlt=sumlt+suml(z);
    sumpt=sumpt+sump(z);;
end
figure(2)
y=[sumh(1) suml(1) sump(1); sumh(2) suml(2) sump(2); sumh(3) suml(3) sump(3); sumh(4) suml(4) sump(4); sumh(5) suml(5) sump(5);sumht sumlt sumpt];
b=bar(y);
grid on;

name={'Year 1','2','3','4','5','sum'};
set(gca,'XTickLabel',name)

legend('HSPA Micro','LTE Micro','LTE PICO');
xlabel('Year');
ylabel('KEuro');
