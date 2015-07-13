## Linux 配置文件 ##

1. *setup*存储的是个人常用到一些配置文件，比如vim的～/.vimrc文件，以及tmux的.tmux.conf文件。可以任意clone，如果使用过程当中出现任何问题，欢迎讨论。

2. 使用**Vundle** 管理*vim*插件。
	* 首先clone *Vundle*插件

	`git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim `

	* 插件安装

	`:BundleInstall`

3. 对个别文件的使用说明
  * 该配置添加了*a.vim*插件，打开c程序文件\*.c的时候总会出现错误提示：

	> **Mapping already in use: "\<LocalLeader\>is", mode "n"**

	> **Mapping already in use: "\<LocalLeader\>is", mode "i"**

	解决方案： 注释掉*a.vim*中的

	> **imap \<Leader\>is \<ESC\>:IHS\<CR\>:A\<CR\>**

	> **nmap \<Leader\>is :IHS\<CR\>:A\<CR\>**

  * 该配置添加了*indexer.tar.gz*，该文件需要读取*~/.indexer_files*,并且默认生成的*tags*文件存放在*~/.indexer_files_tags/*目录下，因此，需要生成*~/.indexer_files*,创建目录*~/.indexer_files_tag*.另外，工程文件默认存放在*~/.vimprojects*目录下，因此可以创建该目录，然后设置工程项目的软链接到该目录下边，或者参考说明自定义目录。

	
	
