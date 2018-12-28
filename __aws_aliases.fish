abbr avl 'aws-vault login'

function ave -d 'aws-vault exec using AWS_VAULT_PROFILE'
    set profile
    set cmd
    if set -q AWS_VAULT_PROFILE
        set profile $AWS_VAULT_PROFILE
        set cmd $argv
    else
        set profile $argv[1]
        set cmd $argv[2..-1]
    end

    aws-vault exec $profile -- $cmd
end

function avs -d 'aws-vault metadata server using AWS_VAULT_PROFILE'
    set profile
    if set -q AWS_VAULT_PROFILE
        set profile $AWS_VAULT_PROFILE
    else
        set profile $argv[1]
    end

    echo "Starting aws-vault metadata server for profile: $profile"
    aws-vault exec $profile --server
end
