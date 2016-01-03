function [ grid_point, grid_weight ] = get_point_weight( n )
%  n: the dimension
%  grid_point: cubature points
%  grid_weight: cubature weights
%  written by Bin Jia @ 2012. 

grid_point=[];
grid_weight=[];

grid_point(:,1)=zeros(n,1);
grid_weight(1) =2/(n+2);
count=1;

    for i=1:n
        
        grid_point(i,i+1)    =  sqrt(n/2+1);      grid_weight(i+1)   = (4-n)/(2*(n+2)^2);       count=count+1;
        grid_point(i,i+n+1)  = -sqrt(n/2+1);      grid_weight(i+n+1) = (4-n)/(2*(n+2)^2);       count=count+1;
    
    end
    
    for i=1:n
        for j=i+1:n
        
        count=count+1;    grid_point(i,count)=  sqrt(n/4+1/2);   grid_point(j,count)=  sqrt(n/4+1/2);    grid_weight(count) = 1/((n+2)^2);
        count=count+1;    grid_point(i,count)=  sqrt(n/4+1/2);   grid_point(j,count)= -sqrt(n/4+1/2);    grid_weight(count) = 1/((n+2)^2);
        count=count+1;    grid_point(i,count)= -sqrt(n/4+1/2);   grid_point(j,count)=  sqrt(n/4+1/2);    grid_weight(count) = 1/((n+2)^2);
        count=count+1;    grid_point(i,count)= -sqrt(n/4+1/2);   grid_point(j,count)= -sqrt(n/4+1/2);    grid_weight(count) = 1/((n+2)^2);
            
            

        end
    end
    
 grid_point=grid_point*sqrt(2);   
    
end

