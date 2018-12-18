.class Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;
.super Ljava/lang/Object;
.source "TorPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/plugin/tor/TorPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectionStatus"
.end annotation


# instance fields
.field private bootstrapped:Z

.field private circuitBuilt:Z

.field private networkEnabled:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 777
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->networkEnabled:Z

    .line 778
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->bootstrapped:Z

    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->circuitBuilt:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/briarproject/bramble/plugin/tor/TorPlugin$1;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->setBootstrapped()V

    return-void
.end method

.method static synthetic access$200(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;Z)V
    .locals 0

    .line 774
    invoke-direct {p0, p1}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->enableNetwork(Z)V

    return-void
.end method

.method static synthetic access$300(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;)Z
    .locals 0

    .line 774
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->isConnected()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;)Z
    .locals 0

    .line 774
    invoke-direct {p0}, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->getAndSetCircuitBuilt()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized enableNetwork(Z)V
    .locals 0

    monitor-enter p0

    .line 791
    :try_start_0
    iput-boolean p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->networkEnabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 792
    iput-boolean p1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->circuitBuilt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 790
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getAndSetCircuitBuilt()Z
    .locals 2

    monitor-enter p0

    .line 785
    :try_start_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->circuitBuilt:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 786
    iput-boolean v1, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->circuitBuilt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 784
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized isConnected()Z
    .locals 1

    monitor-enter p0

    .line 796
    :try_start_0
    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->networkEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->bootstrapped:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->circuitBuilt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setBootstrapped()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 781
    :try_start_0
    iput-boolean v0, p0, Lorg/briarproject/bramble/plugin/tor/TorPlugin$ConnectionStatus;->bootstrapped:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 782
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 780
    monitor-exit p0

    throw v0
.end method
