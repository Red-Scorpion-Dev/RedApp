.class public Lorg/h2/engine/UserAggregate;
.super Lorg/h2/engine/DbObjectBase;
.source "UserAggregate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/engine/UserAggregate$AggregateWrapper;
    }
.end annotation


# instance fields
.field private className:Ljava/lang/String;

.field private javaClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/h2/engine/Database;ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lorg/h2/engine/DbObjectBase;-><init>()V

    const/4 v0, 0x3

    .line 30
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/engine/UserAggregate;->initDbObjectBase(Lorg/h2/engine/Database;ILjava/lang/String;I)V

    .line 31
    iput-object p4, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    if-nez p5, :cond_0

    .line 33
    invoke-virtual {p0}, Lorg/h2/engine/UserAggregate;->getInstance()Lorg/h2/api/Aggregate;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkRename()V
    .locals 1

    const-string v0, "AGGREGATE"

    .line 87
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE FORCE AGGREGATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/UserAggregate;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FOR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 58
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DROP AGGREGATE IF EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/UserAggregate;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstance()Lorg/h2/api/Aggregate;
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 45
    instance-of v1, v0, Lorg/h2/api/Aggregate;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lorg/h2/api/Aggregate;

    goto :goto_0

    .line 48
    :cond_1
    new-instance v1, Lorg/h2/engine/UserAggregate$AggregateWrapper;

    check-cast v0, Lorg/h2/api/AggregateFunction;

    invoke-direct {v1, v0}, Lorg/h2/engine/UserAggregate$AggregateWrapper;-><init>(Lorg/h2/api/AggregateFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    .line 52
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public getJavaClassName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method

.method public declared-synchronized removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/UserAggregate;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/engine/UserAggregate;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    const/4 p1, 0x0

    .line 80
    iput-object p1, p0, Lorg/h2/engine/UserAggregate;->className:Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lorg/h2/engine/UserAggregate;->javaClass:Ljava/lang/Class;

    .line 82
    invoke-virtual {p0}, Lorg/h2/engine/UserAggregate;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 78
    monitor-exit p0

    throw p1
.end method
