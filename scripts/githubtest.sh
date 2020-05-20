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









curl 'https://github.com/Sixt-Int?q=datash&type=&language=' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'DNT: 1' -H 'Accept-Encoding: gzip, deflate, br' -H 'Accept-Language: en-US,en;q=0.9' -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.163 Safari/537.36' -H 'accept: text/html' -H 'Referer: https://github.com/Sixt-Int?q=datash&type=&language=' -H 'x-requested-with: XMLHttpRequest' -H 'Cookie: _octo=GH1.1.1549773911.1572472948; _device_id=914077d0cd0621943b4ae180473dddab; _ga=GA1.2.1135040598.1585320634; experiment:homepage_signup_flow=eyJ2ZXJzaW9uIjoiMSIsInJvbGxPdXRQbGFjZW1lbnQiOjcuOTE1OTgyODE1NDE3NDU4LCJzdWJncm91cCI6ImF1ZGllbmNlIiwiY3JlYXRlZEF0IjoiMjAyMC0wMy0yN1QxNDo1MDozNC4yNTVaIiwidXBkYXRlZEF0IjoiMjAyMC0wMy0yN1QxNDo1MDozNC4yNTVaIn0=; user_session=oleNX3r57FBgfi9_8LcmgcbJ07381PXnfhm1xKqoEURptXCI; __Host-user_session_same_site=oleNX3r57FBgfi9_8LcmgcbJ07381PXnfhm1xKqoEURptXCI; logged_in=yes; dotcom_user=mafflerbach; tz=Europe%2FBerlin; has_recent_activity=1; _gh_sess=PJ%2FPEq2qd3ap7W5dmvb12AGLpS5ByZfW3eWoeUWtBcRtcVEOwh0iRQPF%2BJ%2BMgitCgjAygb%2B52t0Sa1aw5L83pz1l3IVc3a9MFXNIVpZH15YZc6n301Go10%2FlKBFuwPhtM9bIohvwUQwq3b8AOKKkgssQVWpHOu0XSmUs%2BOD7yQlYEhZj%2B0Nb%2FagKBdEKO1c%2Fs1oJ7CeB%2B60bOsbLVfwpM7pMm%2B8anO9U5C0rgYpHGhn940yUl4ushEMZx58FYSN1ZrU6loDkjaIpZIKKeayIz8zM4xpfgi3DsA9p%2BcBiwuucqe4uoHJXE17JsFF14%2BNRRZ5XuS8DwZjx%2FGqYLt58OlqwBsXAoNVnx9eiePiOnpWPv4BJurlCluyzH1L2iRvT3L0yyajbDacVQJ%2ByMRvYnXRFUroKG1TKQip5Qsf1FwODO1%2F0dj1%2B3LOeGhL%2Fqmz1U4Q3ULgM4dSEwOVO9gUNCQcJTyeAg4e1tZwJSaH98i8iq60kJIO8uvP3D8MKjYLjpnBKSEpn3OL2wmpX3Q1AsiLlhuj%2FWHFoNXYI1mulPP%2FMjfPSnUYa4Db66%2F31K45dtQjlZYNYMZ30hkf4Xe2BEmw%2BBGRKkCbukQNL6OS5tp7ekcyt4N%2FxV2Gcja29fj7BurfLVzfRPdqgg8j3GGBvI6%2Fg0hpu0myRvW%2BSUV5VvDa9lDf7KJnsNhgKFlJdaVjLFOhUGlEOJ5Z9ze2b8VoZWJB4yZCaWHT%2FWZX0lRKRFESZ4Ggb9587TFoRRo6WJO2rnd9Kvij1Wrj%2BF6Wbh2%2Fp0naesHtUV87O04KbLxiEx6Xw2RhSXW4OOqDqyAwMZWLaqHwSwOPeFi31pnXvJGQSd0%2FTFKrnM632mZyHmqkX08S8LaXqTj0%2Bgc2TxuWAbx0Hr68vM2WtlT2JCQzGzoaLYSiEqKsACy4vVz2l6Ca73ZuiHPJx%2BRxq7SB0n48lOpj4GtgPBKkae%2BIa3Zy88bvQqXkYk6vJKUV3ySD4rGKmVlTvvELerABzBgejBCdbzNv3EPteiL7rrzmUO9XQ%2BAx%2Fyj3ePmFVaNRxE64LaCe3xL0W5G%2F35sc13xgYtlwjKdDWE1nmO95opMmoWjTv1Uvftj6OgpWrCbBTBHCt7IQzLmJ0Lof36fjwLD4Fv2mhRdEP3l2bCkrS%2FjzST1XWIMxojD5%2B7FwjhDj%2FdOPBzRqWoy2YW9olgSJ339lM3Zu7xh4NQAhY9qivcf6EPZYEFRleLJfVfRxvh475%2F9YAcwCSz1e7WDeJJ7ZLiRgmncPv%2BDdMBwLYS15eoS3SjlxwLYFlDP90tgNaTxe9tmhk0YKe9AWOpUtDe7SvOqY9zAiY5NYTPQKkrKmaz%2Fk7%2Fxc%2F%2FPyIwxcPsUI6ejc6QniR1pydnh8Iq5TXz4DxUtbML8xbsvhbdYop%2B4fsYjb1TGebo2Fw70G4j607Of1RSepvayoEhgJ%2BfnL5vk%2FonjTTOjm3z%2Bu8LkZcBOf0Vuo%2B9msCpzf%2F1aQ3KuT68QKmVp4XMZUO5a5DIfwO3WXNV2PDMQHks78SsXQZZpx3W8y4DzBc3iLvVCnZjnjjDC7aLYA9m3dO2eVqBYspOCrsklU73OiCO%2BqARIRpB1wtzaQWU2eMCwOohUBDGL77sXUE0MGa2Ij2yJQGAuno3D8ahug2%2FbqqJsXdn7mChm8tGbYOUq4Y6szIO7UGiZ%2FSHlubEcdhrSfizB4cC6Waj9y9IH5TJ9uOGNL1PiEG3aFUaY00WrZengEqgmmT1InMuVn7tSsop56e%2Fh4rTVvfzGee6nI5sX5bllF1rJyigqAq1lIgSSa7hGkFlZHm6uumQksI7y6x91K4M0m70zgTrpzNt6X6Mai0el8lp0O34YZoCV1EV32BBPvcc0Q9GqIUDy4D7k%2BGS36mFaCxtgER5XHZ7pOhnnCdFq8XGuSPZvjEeU5QUVmSrbHul1kwoEX%2B87F4I3Ky4f0Hd5k%2BSUk50Ft%2Br4Jrz4%2FVPRofkEDnLLmBca96C0CKVIYxaZPoCa7wJCyyozcohw%3D%3D--hhbg9gFUW%2Bsx4OrA--6nOLPhmq9mYSLL0FVcwVwg%3D%3D' -H 'Connection: keep-alive' --compressed
