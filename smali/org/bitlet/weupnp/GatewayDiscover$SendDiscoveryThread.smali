.class Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;
.super Ljava/lang/Thread;
.source "GatewayDiscover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bitlet/weupnp/GatewayDiscover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendDiscoveryThread"
.end annotation


# instance fields
.field ip:Ljava/net/InetAddress;

.field searchMessage:Ljava/lang/String;

.field final synthetic this$0:Lorg/bitlet/weupnp/GatewayDiscover;


# direct methods
.method constructor <init>(Lorg/bitlet/weupnp/GatewayDiscover;Ljava/net/InetAddress;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->this$0:Lorg/bitlet/weupnp/GatewayDiscover;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 106
    iput-object p2, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->ip:Ljava/net/InetAddress;

    .line 107
    iput-object p3, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->searchMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    .line 117
    :try_start_0
    new-instance v1, Ljava/net/DatagramSocket;

    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->ip:Ljava/net/InetAddress;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v1, v2}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 119
    :try_start_1
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->searchMessage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 120
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    invoke-direct {v2, v0, v3}, Ljava/net/DatagramPacket;-><init>([BI)V

    const-string v0, "239.255.255.250"

    .line 121
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/net/DatagramPacket;->setAddress(Ljava/net/InetAddress;)V

    const/16 v0, 0x76c

    .line 122
    invoke-virtual {v2, v0}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 124
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 125
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->this$0:Lorg/bitlet/weupnp/GatewayDiscover;

    invoke-static {v0}, Lorg/bitlet/weupnp/GatewayDiscover;->access$000(Lorg/bitlet/weupnp/GatewayDiscover;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 129
    new-instance v2, Ljava/net/DatagramPacket;

    const/16 v3, 0x600

    new-array v5, v3, [B

    invoke-direct {v2, v5, v3}, Ljava/net/DatagramPacket;-><init>([BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 131
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 132
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    new-array v3, v3, [B

    .line 133
    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/net/DatagramPacket;->getLength()I

    move-result v2

    invoke-static {v5, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v2, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->this$0:Lorg/bitlet/weupnp/GatewayDiscover;

    invoke-static {v2, v3}, Lorg/bitlet/weupnp/GatewayDiscover;->access$100(Lorg/bitlet/weupnp/GatewayDiscover;[B)Lorg/bitlet/weupnp/GatewayDevice;

    move-result-object v2

    .line 138
    iget-object v3, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->ip:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Lorg/bitlet/weupnp/GatewayDevice;->setLocalAddress(Ljava/net/InetAddress;)V

    .line 139
    invoke-virtual {v2}, Lorg/bitlet/weupnp/GatewayDevice;->loadDescription()V

    .line 142
    iget-object v3, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->this$0:Lorg/bitlet/weupnp/GatewayDiscover;

    invoke-static {v3}, Lorg/bitlet/weupnp/GatewayDiscover;->access$200(Lorg/bitlet/weupnp/GatewayDiscover;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bitlet/weupnp/GatewayDevice;->getSt()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 143
    iget-object v0, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->this$0:Lorg/bitlet/weupnp/GatewayDiscover;

    invoke-static {v0}, Lorg/bitlet/weupnp/GatewayDiscover;->access$300(Lorg/bitlet/weupnp/GatewayDiscover;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 144
    :try_start_3
    iget-object v3, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->this$0:Lorg/bitlet/weupnp/GatewayDiscover;

    invoke-static {v3}, Lorg/bitlet/weupnp/GatewayDiscover;->access$300(Lorg/bitlet/weupnp/GatewayDiscover;)Ljava/util/Map;

    move-result-object v3

    iget-object v5, p0, Lorg/bitlet/weupnp/GatewayDiscover$SendDiscoveryThread;->ip:Ljava/net/InetAddress;

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 146
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    nop

    goto :goto_2

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v0

    :catch_2
    move-object v1, v0

    :goto_2
    if-eqz v1, :cond_3

    :cond_2
    :goto_3
    invoke-virtual {v1}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    return-void
.end method
