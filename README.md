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
### ADD action 
add exist account that has created password    

![Add action](./images/addaction.png?raw=true "Add action")     

__Enter resource__ - resource name or slug. Using as file name    
__Enter resource URL__ - link to resource or login page    
__Enter login__ - login    
__Enter password__ - existed password    
__Enter salt__ - using for hashing  

### CREATE action 
create new account, generate new password for account    

![Create action](./images/createaction.png?raw=true "Create action")     

__Enter resource__ - resource name or slug. Using as file name    
__Enter resource URL__ - link to resource or login page    
__Enter login__ - login    
__Enter password length__ - password length that will be created   
__Enter salt__ - using for hashing  


### Local
#### ADD
```bash
    ./add.sh 
```
#### CREATE
```bash
    ./create.sh 
```

### Global
#### ADD
```bash
    ps-add 
```
#### CREATE
```bash
    ps-create
```

### Show exists account
Go to output folder
```bash 
    cd $PS_FLOW_FOLDER
```
Execute needed file
```bash
    ./google.sh
```
Enter salt that you used for creation
![Show action](./images/showaction.png?raw=true "Show action") 