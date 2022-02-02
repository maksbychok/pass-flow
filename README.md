# Pass-flow
Bash paskage for creating and saving password

## Require
1. Salt must be one word without spaces    
    
    :white_check_mark: 
    ```
        rwfefj23iok3j2klfjweo
    ```    
    :negative_squared_cross_mark:    
    ```
        rwfe fj23i okc 3j2kl  fjweo
    ```  
## Install
1. Set password output folder path. You can enter exists folder or folder will be created by install.sh script. 
    ```bash
        export PS_FLOW_FOLDER=<path>
    ```
2. Check that ``` install.sh ``` has executable permission. Otherwise run :   
    ```bash
        chmod +x ./install.sh
    ```

3.  Execute ``` install.sh ``` :   
    ```bash
         ./install.sh
    ```
## Usage 
    You can use this package as local scripts or as global scripts
    ADD action - add exist account that has created password
        __ Enter resource __ - resource name or slug. Using as file name
        __ Enter resource URL __ - link to resource or login page
        __ Enter login __ - login
        __ Enter password __ - existed password
        __ Enter salt __ - using for hashing
### Local
    ``` ./add.sh ``` - add exist account that has created password
    ```bash
        ./add.sh 
    ```