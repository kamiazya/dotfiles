function __docker_machine_list
    echo "default"
    docker-machine ls -q
end

function switch_docker_env
    set active (docker-machine active)

    __docker_machine_list | peco --layout=bottom-up | read machine

    if [ $machine = "default" ]
        set arg "-u"
    else
        set arg $machine
    end

    if [ $machine = "" ]
        commandline ''
    else
        
        if [ $machine != "default" ]

            docker-machine status $machine | read machine_status

            if [ $machine_status != "Running" ]
                docker-machine start $machine
            end
        end


        eval (docker-machine env $arg | sed -e 's/unset/set -e/g' -e 's/$/; /' )
        if [ $machine != "default" ]
            set ip (docker-machine ip $machine)
            echo "Dcoker ($machine) IP is $ip"
        end

    end

end
