# promise
1.启动本地Ganache
2.安装google浏览器chrome插件MetaMask，使用custome rpc，填入HTTP://127.0.0.1:7545, 并导入1中的某个私钥，生成以太坊钱包
3.安装truffle并执行truffle init生成一个项目，将contracts目录下的Adoption.sol和Migration.sol复制到truffle项目的contracts目录下，并在truffle项目主目录下执行truffle migrate(如果是windows，请执行truffle.cmd migrate)
4.将刚刚生成的两个json文件（位于truffle项目目录build/contracts下）复制到本项目src/main/resources/static目录下，覆盖掉之前的文件
5.启动项目，访问对promise.html文件，进行测试
