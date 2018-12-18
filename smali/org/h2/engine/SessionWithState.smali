.class abstract Lorg/h2/engine/SessionWithState;
.super Ljava/lang/Object;
.source "SessionWithState.java"

# interfaces
.implements Lorg/h2/engine/SessionInterface;


# instance fields
.field protected sessionState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected sessionStateChanged:Z

.field private sessionStateUpdating:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public readSessionState()V
    .locals 4

    .line 45
    iget-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateUpdating:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateChanged:Z

    .line 49
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/SessionWithState;->sessionState:Ljava/util/ArrayList;

    const-string v1, "SELECT * FROM INFORMATION_SCHEMA.SESSION_STATE"

    const v2, 0x7fffffff

    .line 50
    invoke-virtual {p0, v1, v2}, Lorg/h2/engine/SessionWithState;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v1

    .line 53
    invoke-interface {v1, v0, v0}, Lorg/h2/command/CommandInterface;->executeQuery(IZ)Lorg/h2/result/ResultInterface;

    move-result-object v0

    .line 54
    :goto_0
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->next()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 55
    invoke-interface {v0}, Lorg/h2/result/ResultInterface;->currentRow()[Lorg/h2/value/Value;

    move-result-object v1

    .line 56
    iget-object v2, p0, Lorg/h2/engine/SessionWithState;->sessionState:Ljava/util/ArrayList;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lorg/h2/value/Value;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method protected recreateSessionState()V
    .locals 4

    .line 27
    iget-object v0, p0, Lorg/h2/engine/SessionWithState;->sessionState:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/SessionWithState;->sessionState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateUpdating:Z

    const/4 v0, 0x0

    .line 30
    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/SessionWithState;->sessionState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const v3, 0x7fffffff

    .line 31
    invoke-virtual {p0, v2, v3}, Lorg/h2/engine/SessionWithState;->prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Lorg/h2/command/CommandInterface;->executeUpdate()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 35
    :cond_0
    iput-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateUpdating:Z

    .line 36
    iput-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateChanged:Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 35
    iput-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateUpdating:Z

    .line 36
    iput-boolean v0, p0, Lorg/h2/engine/SessionWithState;->sessionStateChanged:Z

    throw v1

    :cond_1
    :goto_1
    return-void
.end method
