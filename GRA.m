function y5=GRA1(y)

%在归一化之前要注意因素变化产生的是正影响还是负影响
%y每一行为一项指标，每一列为一年的所有指标
[m,n]=size(y);
y1=mean(y');%对每一项指标求均值
y1=y1';%转置为一列
for i=1:m
    for j=1:n
        y2(i,j)=y(i,j)/y1(i);
    end
end   %均值化变换
for i=2:m
    for j=1:n
        y3(i-1,j)=abs(y2(i,j)-y2((i-1) ,j));
    end
end   %差序列,其中元素均大于0小于1
a=1;b=0;
for i=1:m-1
       for j=1:n
            if(y3(i,j)<=a) 
                a=y3(i,j);%a为最小值
                elseif(y3(i,j)>=b) 
                    b=y3(i,j);%b为最大值
            end
        end
end
for i=1:m-1
    for j=1:n
            y4(i,j)=(a+0.5*b)/(y3(i,j)+0.5*b);
    end
end
y5=sum(y4')/(n-1);
% 说明输入一个矩阵，给出其第一行和下面每一行的关联性
end
                
                
                
                
                
                