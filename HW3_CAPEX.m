%-----------------------------------------HSPA MICRO----------------------

N=[0 445 2075 5334 10667 18519];
Cost=[42 44 3];
Ce=[2 4 1]

HSPA=[0 0 0 0 0]
HSPA(1)=N(2)*Cost(1)
for x=3:6
    CAPEXt=(N(x)-N(x-1))*Cost(1)
    for i=2:x
    CAPEXt=CAPEXt-Ce(1)*(N(i)-N(i-1))*((0.05)^(x-i+1));
    end
    HSPA(x-1)=CAPEXt
end

%-------------------LTE MICRO--------------------------
N=[0 1924 3847 5770 7693 9616];
Ce=[2 4 1]

LTE=[0 0 0 0 0]
LTE(1)=N(2)*Cost(2)
for x=3:6
    CAPEXt=(N(x)-N(x-1))*Cost(2)
    for i=2:x
    CAPEXt=CAPEXt-Ce(2)*(N(i)-N(i-1))*((0.05)^(x-i+1));
    end
    LTE(x-1)=CAPEXt
end

%------------------------LTE PICO----------------------------------

N=[0 7963 15385 23077 30770 38462];
Cost=[42 44 3];
Ce=[2 4 1]

PICO=[0 0 0 0 0]
PICO(1)=N(2)*Cost(3)
for x=3:6
    CAPEXt=(N(x)-N(x-1))*Cost(3)
    for i=2:x
    CAPEXt=CAPEXt-Ce(3)*(N(i)-N(i-1))*((0.05)^(x-i+1));
    end
    PICO(x-1)=CAPEXt
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
