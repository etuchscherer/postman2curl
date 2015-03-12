# postman2curl
A gem for converting Postman JSON exports into CURL statements.

## Useage
Clone the repository.

    git clone htts://foo ~/myproject

Bundle the Gem, then install.

    cd ~/myproject && bundle
    rake install

Get an exported collection. From Postman, find your collection and click share. Save the exported file.

    # Assuming you saved your collection as ~/Desktop/my-collection.json
    # From your terminal, perform a conversion

    > postman2curl convert ~/Desktop/my-collection.json
    >
    > # Login to engrade
    > curl -X POST -d 'apitask=user-login&apikey=12345678&api=json&usr=foo&pwd=bar' "https://api.example.com/"

** Inspired by Joseph Vartuli ( https://github.com/joevartuli/POSTManToCurl ) **