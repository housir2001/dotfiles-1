#/bin/bash
source ~/dotfiles/.credencials

# link="$(gh pr view 1 | tail -n1 | cut -d" " -f7 )/.diff"
# echo $link
# 
# curl --request GET \
#         --url $link \
#         --header 'authorization: Bearer $githubToken ' \
#         -o temp.diff
# 
# vimdiff temp.diff

REPO_OWNER="mafflerbach"
REPO_NAME="dotfiles"
PR_NUMBER=1


 curl -s -H "Authorization: token ${githubToken}" \
 -X POST -d '{"body": "Your Message to Comment"}' \
 "https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/issues/${PR_NUMBER}/comments"
