git -c http.extraHeader="Authorization: Basic b25ndHJpZXVoYXUtZGg6Z2hwXzNKU3h0V1A1SFdmeE51elpIM0tNaHVWamVGREJLSDFKYkJpNw" push -u --force https://github.com/ongtrieuhau-dh/o-svr-repo-aes-yml.git

VER='X-GitHub-Api-Version: 2022-11-28'
ACCEPT='Accept: application/vnd.github+json'
TYPE='Content-Type: application/json'
repo='dh-hos-02/kiwi-one-cow'
auth='Authorization: Bearer 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'
url='https://api.github.com/repos/$repo/merge-upstream'
echo "gh-sync-fork:::$repo"
curl -s -X POST --location "$url" --header "$auth" --header "$VER" --header "$ACCEPT" --header "$TYPE" --data '{"branch": "main"'} | json_pp