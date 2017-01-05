$computer = 'JdC'

if(Test-Connection $computer -Count 1 -Quiet) {
    $result = Invoke-Command -ComputerName $computer {1} -ErrorAction SilentlyContinue
    if($result -eq 1) {
        echo 'Command will run';
    } else {
        echo 'Can`t run command on remote PC';
        }
} else {
    echo 'Can`t contact remote PC'; 
}
  
        
           