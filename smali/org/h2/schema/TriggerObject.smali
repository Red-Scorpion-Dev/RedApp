.class public Lorg/h2/schema/TriggerObject;
.super Lorg/h2/schema/SchemaObjectBase;
.source "TriggerObject.java"


# static fields
.field public static final DEFAULT_QUEUE_SIZE:I = 0x400


# instance fields
.field private before:Z

.field private insteadOf:Z

.field private noWait:Z

.field private onRollback:Z

.field private queueSize:I

.field private rowBased:Z

.field private table:Lorg/h2/table/Table;

.field private triggerCallback:Lorg/h2/api/Trigger;

.field private triggerClassName:Ljava/lang/String;

.field private triggerSource:Ljava/lang/String;

.field private typeMask:I


# direct methods
.method public constructor <init>(Lorg/h2/schema/Schema;ILjava/lang/String;Lorg/h2/table/Table;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/h2/schema/SchemaObjectBase;-><init>()V

    const/16 v0, 0x400

    .line 46
    iput v0, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    const/16 v0, 0xc

    .line 54
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/h2/schema/TriggerObject;->initSchemaObjectBase(Lorg/h2/schema/Schema;ILjava/lang/String;I)V

    .line 55
    iput-object p4, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    .line 56
    invoke-virtual {p4}, Lorg/h2/table/Table;->isTemporary()Z

    move-result p1

    invoke-virtual {p0, p1}, Lorg/h2/schema/TriggerObject;->setTemporary(Z)V

    return-void
.end method

.method private static convertToObjectList(Lorg/h2/result/Row;)[Ljava/lang/Object;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lorg/h2/result/Row;->getColumnCount()I

    move-result v0

    .line 182
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 184
    invoke-virtual {p0, v2}, Lorg/h2/result/Row;->getValue(I)Lorg/h2/value/Value;

    move-result-object v3

    invoke-virtual {v3}, Lorg/h2/value/Value;->getObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private declared-synchronized load()V
    .locals 9

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 69
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 72
    :try_start_1
    iget-object v1, p0, Lorg/h2/schema/TriggerObject;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getSystemSession()Lorg/h2/engine/Session;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v3

    .line 75
    iget-object v1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 76
    iget-object v1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 78
    :cond_1
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->loadFromSource()Lorg/h2/api/Trigger;

    move-result-object v1

    .line 80
    :goto_0
    check-cast v1, Lorg/h2/api/Trigger;

    iput-object v1, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    .line 81
    iget-object v2, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v1, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lorg/h2/schema/TriggerObject;->before:Z

    iget v8, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    invoke-interface/range {v2 .. v8}, Lorg/h2/api/Trigger;->init(Ljava/sql/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 85
    :try_start_2
    iput-object v2, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    const v2, 0x15fbb

    const/4 v3, 0x3

    .line 86
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    iget-object v4, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v4, "..source.."

    :goto_1
    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v1, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    .line 67
    monitor-exit p0

    throw v0
.end method

.method private loadFromSource()Lorg/h2/api/Trigger;
    .locals 6

    .line 92
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getCompiler()Lorg/h2/util/SourceCompiler;

    move-result-object v0

    .line 93
    monitor-enter v0

    .line 94
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "org.h2.dynamic.trigger."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/h2/util/SourceCompiler;->setSource(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    .line 97
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/h2/util/SourceCompiler;->getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    if-gtz v3, :cond_0

    const/4 v3, 0x0

    .line 101
    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/api/Trigger;
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 99
    :cond_0
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "No parameters are allowed for a trigger"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Lorg/h2/message/DbException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v1

    const v3, 0xa410

    const/4 v4, 0x1

    .line 105
    :try_start_4
    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    aput-object v5, v4, v2

    invoke-static {v3, v1, v4}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v1

    .line 103
    throw v1

    :catchall_0
    move-exception v1

    .line 107
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private setTriggerAction(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    .line 134
    iput-object p2, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    .line 136
    :try_start_0
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->load()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-eqz p3, :cond_0

    :goto_0
    return-void

    .line 139
    :cond_0
    throw p1
.end method


# virtual methods
.method public checkRename()V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 432
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-interface {v0}, Lorg/h2/api/Trigger;->close()V

    :cond_0
    return-void
.end method

.method public fire(Lorg/h2/engine/Session;IZ)V
    .locals 8

    .line 154
    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->before:Z

    if-ne v0, p3, :cond_5

    iget p3, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/2addr p3, p2

    if-nez p3, :cond_0

    goto :goto_3

    .line 157
    :cond_0
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->load()V

    const/4 p3, 0x0

    .line 158
    invoke-virtual {p1, p3}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_1

    .line 161
    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 163
    :goto_0
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v4

    .line 165
    :try_start_0
    iget-object v5, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    const/4 v6, 0x0

    invoke-interface {v5, v0, v6, v6}, Lorg/h2/api/Trigger;->fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p1, v4}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    if-eq p2, v2, :cond_2

    .line 172
    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    :cond_2
    return-void

    :catchall_0
    move-exception p3

    goto :goto_2

    :catch_0
    move-exception v0

    const v5, 0x15fbc

    const/4 v6, 0x3

    .line 167
    :try_start_1
    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, p3

    iget-object p3, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz p3, :cond_3

    iget-object p3, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string p3, "..source.."

    :goto_1
    aput-object p3, v6, v1

    const/4 p3, 0x2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, p3

    invoke-static {v5, v0, v6}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p3

    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    :goto_2
    invoke-virtual {p1, v4}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    if-eq p2, v2, :cond_4

    .line 172
    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    :cond_4
    throw p3

    :cond_5
    :goto_3
    return-void
.end method

.method public fireRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;Lorg/h2/result/Row;ZZ)Z
    .locals 6

    .line 205
    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->before:Z

    if-eq v0, p4, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eqz p5, :cond_1

    .line 208
    iget-boolean p4, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z

    if-nez p4, :cond_1

    return v1

    .line 211
    :cond_1
    invoke-direct {p0}, Lorg/h2/schema/TriggerObject;->load()V

    .line 215
    iget p4, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    const/4 p5, 0x1

    and-int/2addr p4, p5

    if-eqz p4, :cond_2

    if-nez p2, :cond_2

    if-eqz p3, :cond_2

    const/4 p4, 0x1

    goto :goto_0

    :cond_2
    const/4 p4, 0x0

    .line 220
    :goto_0
    iget v0, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    const/4 p4, 0x1

    .line 225
    :cond_3
    iget v0, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_4

    const/4 p4, 0x1

    :cond_4
    if-nez p4, :cond_5

    return v1

    .line 233
    :cond_5
    invoke-static {p2}, Lorg/h2/schema/TriggerObject;->convertToObjectList(Lorg/h2/result/Row;)[Ljava/lang/Object;

    move-result-object p2

    .line 234
    invoke-static {p3}, Lorg/h2/schema/TriggerObject;->convertToObjectList(Lorg/h2/result/Row;)[Ljava/lang/Object;

    move-result-object p4

    .line 236
    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->before:Z

    if-eqz v0, :cond_6

    if-eqz p4, :cond_6

    .line 237
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    .line 238
    array-length v2, p4

    invoke-static {p4, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 242
    :goto_1
    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->createConnection(Z)Lorg/h2/jdbc/JdbcConnection;

    move-result-object v2

    .line 243
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getAutoCommit()Z

    move-result v3

    .line 244
    invoke-virtual {p1, p5}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    move-result p5

    .line 245
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getLastScopeIdentity()Lorg/h2/value/Value;

    move-result-object v4

    .line 247
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    .line 248
    iget-object v5, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-interface {v5, v2, p2, p4}, Lorg/h2/api/Trigger;->fire(Ljava/sql/Connection;[Ljava/lang/Object;[Ljava/lang/Object;)V

    if-eqz v0, :cond_8

    .line 250
    :goto_2
    array-length p2, p4

    if-ge v1, p2, :cond_8

    .line 251
    aget-object p2, p4, v1

    .line 252
    aget-object v2, v0, v1

    if-eq p2, v2, :cond_7

    const/4 v2, -0x1

    .line 253
    invoke-static {p1, p2, v2}, Lorg/h2/value/DataType;->convertToValue(Lorg/h2/engine/SessionInterface;Ljava/lang/Object;I)Lorg/h2/value/Value;

    move-result-object p2

    .line 254
    invoke-virtual {p3, v1, p2}, Lorg/h2/result/Row;->setValue(ILorg/h2/value/Value;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 265
    :cond_8
    :goto_3
    invoke-virtual {p1, v4}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    .line 266
    invoke-virtual {p1, p5}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    .line 267
    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    goto :goto_4

    :catchall_0
    move-exception p2

    goto :goto_5

    :catch_0
    move-exception p2

    .line 259
    :try_start_1
    iget-boolean p3, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_9

    goto :goto_3

    .line 269
    :goto_4
    iget-boolean p1, p0, Lorg/h2/schema/TriggerObject;->insteadOf:Z

    return p1

    .line 262
    :cond_9
    :try_start_2
    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :goto_5
    invoke-virtual {p1, v4}, Lorg/h2/engine/Session;->setLastScopeIdentity(Lorg/h2/value/Value;)V

    .line 266
    invoke-virtual {p1, p5}, Lorg/h2/engine/Session;->setCommitOrRollbackDisabled(Z)Z

    .line 267
    invoke-virtual {p1, v3}, Lorg/h2/engine/Session;->setAutoCommit(Z)V

    throw p2

    :cond_a
    :goto_6
    return v1
.end method

.method public getCreateSQL()Ljava/lang/String;
    .locals 2

    .line 366
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getSQL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/h2/schema/TriggerObject;->getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreateSQLForCopy(Lorg/h2/table/Table;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE FORCE TRIGGER "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    iget-boolean p2, p0, Lorg/h2/schema/TriggerObject;->insteadOf:Z

    if-eqz p2, :cond_0

    const-string p2, " INSTEAD OF "

    .line 315
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 316
    :cond_0
    iget-boolean p2, p0, Lorg/h2/schema/TriggerObject;->before:Z

    if-eqz p2, :cond_1

    const-string p2, " BEFORE "

    .line 317
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p2, " AFTER "

    .line 319
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :goto_0
    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getTypeNameList()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ON "

    .line 322
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    iget-boolean p1, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    if-eqz p1, :cond_2

    const-string p1, " FOR EACH ROW"

    .line 324
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    :cond_2
    iget-boolean p1, p0, Lorg/h2/schema/TriggerObject;->noWait:Z

    if-eqz p1, :cond_3

    const-string p1, " NOWAIT"

    .line 327
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string p1, " QUEUE "

    .line 329
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    :goto_1
    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    if-eqz p1, :cond_4

    const-string p1, " CALL "

    .line 332
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/command/Parser;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string p1, " AS "

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->quoteStringSQL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDropSQL()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQueueSize()I
    .locals 1

    .line 290
    iget v0, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    return v0
.end method

.method public getTable()Lorg/h2/table/Table;
    .locals 1

    .line 403
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getTriggerClassName()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getTriggerSource()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getTypeNameList()Ljava/lang/String;
    .locals 2

    .line 340
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 341
    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string v1, ", "

    .line 342
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "INSERT"

    .line 343
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 345
    :cond_0
    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, ", "

    .line 346
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "UPDATE"

    .line 347
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 349
    :cond_1
    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const-string v1, ", "

    .line 350
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "DELETE"

    .line 351
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 353
    :cond_2
    iget v1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    const-string v1, ", "

    .line 354
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "SELECT"

    .line 355
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 357
    :cond_3
    iget-boolean v1, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z

    if-eqz v1, :cond_4

    const-string v1, ", "

    .line 358
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    const-string v1, "ROLLBACK"

    .line 359
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    .line 361
    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBefore()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->before:Z

    return v0
.end method

.method public isNoWait()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lorg/h2/schema/TriggerObject;->noWait:Z

    return v0
.end method

.method public isSelectTrigger()Z
    .locals 1

    .line 443
    iget v0, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeChildrenAndResources(Lorg/h2/engine/Session;)V
    .locals 2

    .line 376
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    invoke-virtual {v0, p0}, Lorg/h2/table/Table;->removeTrigger(Lorg/h2/schema/TriggerObject;)V

    .line 377
    iget-object v0, p0, Lorg/h2/schema/TriggerObject;->database:Lorg/h2/engine/Database;

    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 378
    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    if-eqz p1, :cond_0

    .line 380
    :try_start_0
    iget-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    invoke-interface {p1}, Lorg/h2/api/Trigger;->remove()V
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 382
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 385
    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->table:Lorg/h2/table/Table;

    .line 386
    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerClassName:Ljava/lang/String;

    .line 387
    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerSource:Ljava/lang/String;

    .line 388
    iput-object p1, p0, Lorg/h2/schema/TriggerObject;->triggerCallback:Lorg/h2/api/Trigger;

    .line 389
    invoke-virtual {p0}, Lorg/h2/schema/TriggerObject;->invalidate()V

    return-void
.end method

.method public setBefore(Z)V
    .locals 0

    .line 60
    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->before:Z

    return-void
.end method

.method public setInsteadOf(Z)V
    .locals 0

    .line 64
    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->insteadOf:Z

    return-void
.end method

.method public setNoWait(Z)V
    .locals 0

    .line 294
    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->noWait:Z

    return-void
.end method

.method public setOnRollback(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->onRollback:Z

    return-void
.end method

.method public setQueueSize(I)V
    .locals 0

    .line 286
    iput p1, p0, Lorg/h2/schema/TriggerObject;->queueSize:I

    return-void
.end method

.method public setRowBased(Z)V
    .locals 0

    .line 282
    iput-boolean p1, p0, Lorg/h2/schema/TriggerObject;->rowBased:Z

    return-void
.end method

.method public setTriggerClassName(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0, p2}, Lorg/h2/schema/TriggerObject;->setTriggerAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTriggerSource(Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0, p1, p2}, Lorg/h2/schema/TriggerObject;->setTriggerAction(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTypeMask(I)V
    .locals 0

    .line 278
    iput p1, p0, Lorg/h2/schema/TriggerObject;->typeMask:I

    return-void
.end method
