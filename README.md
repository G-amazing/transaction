# 使用LCN解决分布式事务

本 Demo 使用的是LCN框架来解决分布式事务

### 一、简单介绍一下项目的结构:  
1、registry是注册中心  
2、order-service、stu-service、user-service是三个服务  
3、tx-manager是事务的管理中心
### 二、调用链
在user-service服务中调用了stu-service服务,stu-service服务中调用了order-service服务,在order-service服务中会有异常发生,当发生异常时,所有的事务都会回滚  
### 三、关于SQL文件的说明
hibernate_sequence、t_logger、t_tx_exception 这三张表会在 tx-manager服务启动的时候自动创建
