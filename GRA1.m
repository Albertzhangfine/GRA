function y5=GRA1(y)

%�ڹ�һ��֮ǰҪע�����ر仯����������Ӱ�컹�Ǹ�Ӱ��
%yÿһ��Ϊһ��ָ�꣬ÿһ��Ϊһ�������ָ��
[m,n]=size(y);
y1=mean(y');%��ÿһ��ָ�����ֵ
y1=y1';%ת��Ϊһ��
for i=1:m
    for j=1:n
        y2(i,j)=y(i,j)/y1(i);
    end
end   %��ֵ���任
for i=2:m
    for j=1:n
        y3(i-1,j)=abs(y2(i,j)-y2((i-1) ,j));
    end
end   %������,����Ԫ�ؾ�����0С��1
a=1;b=0;
for i=1:m-1
       for j=1:n
            if(y3(i,j)<=a) 
                a=y3(i,j);%aΪ��Сֵ
                elseif(y3(i,j)>=b) 
                    b=y3(i,j);%bΪ���ֵ
            end
        end
end
for i=1:m-1
    for j=1:n
            y4(i,j)=(a+0.5*b)/(y3(i,j)+0.5*b);
    end
end
y5=sum(y4')/(n-1);
% ˵������һ�����󣬸������һ�к�����ÿһ�еĹ�����
end
                
                
                
                
                
                