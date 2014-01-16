#Find server date and count processing lines 

BEGIN { 
i = 0 
print "Don't Panic!" 
 } 
{ 
       if ($1 ~ /Server/) { 
                #print $0 
                server[i] = $0 
                i = i + 1 
        } 
        if ($1 ~ /Processing/) { 
                #print $1 
                users[i] = users[i] + 1 
                #print "Users " users[i] 
                #print "i= " i 
        } 
max = i 
} 

END { 

for (i = 0; i < max; i++) 
        print server[i] " " users[i] 
}
