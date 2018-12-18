.class public Lorg/h2/engine/Session;
.super Lorg/h2/engine/SessionWithState;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/engine/Session$TimeoutValue;,
        Lorg/h2/engine/Session$Savepoint;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final LOG_WRITTEN:I = -0x1

.field private static final SYSTEM_IDENTIFIER_PREFIX:Ljava/lang/String; = "_"

.field private static nextSerialId:I


# instance fields
.field private allowLiterals:Z

.field private autoCommit:Z

.field private autoCommitAtTransactionEnd:Z

.field private volatile cancelAt:J

.field private closed:Z

.field private commitOrRollbackDisabled:Z

.field private connectionInfo:Lorg/h2/engine/ConnectionInfo;

.field private currentCommand:Lorg/h2/command/Command;

.field private currentCommandStart:J

.field private currentSchemaName:Ljava/lang/String;

.field private currentTransactionName:Ljava/lang/String;

.field private final database:Lorg/h2/engine/Database;

.field private firstUncommittedLog:I

.field private firstUncommittedPos:I

.field private forceJoinOrder:Z

.field private final id:I

.field private joinBatchEnabled:Z

.field private lastIdentity:Lorg/h2/value/Value;

.field private lastScopeIdentity:Lorg/h2/value/Value;

.field private lastThrottle:J

.field private localTempTableConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation
.end field

.field private localTempTableIndexes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation
.end field

.field private localTempTables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private lockTimeout:I

.field private final locks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation
.end field

.field private modificationId:I

.field private modificationMetaID:J

.field private objectId:I

.field private parsingView:I

.field private preparingQueryExpression:I

.field private procedures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Procedure;",
            ">;"
        }
    .end annotation
.end field

.field private queryCache:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "Lorg/h2/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final queryCacheSize:I

.field private queryTimeout:I

.field private random:Ljava/util/Random;

.field private redoLogBinary:Z

.field private removeLobMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private savepoints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Session$Savepoint;",
            ">;"
        }
    .end annotation
.end field

.field private schemaSearchPath:[Ljava/lang/String;

.field private final serialId:I

.field private final sessionStart:J

.field private startStatement:J

.field private subQueryIndexCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lorg/h2/index/ViewIndex;",
            ">;"
        }
    .end annotation
.end field

.field private subQueryInfo:Lorg/h2/table/SubQueryInfo;

.field private systemIdentifier:I

.field private temporaryLobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryResultLobs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/h2/engine/Session$TimeoutValue;",
            ">;"
        }
    .end annotation
.end field

.field private temporaryResults:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lorg/h2/result/LocalResult;",
            ">;"
        }
    .end annotation
.end field

.field private throttle:I

.field private trace:Lorg/h2/message/Trace;

.field private transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

.field private transactionStart:J

.field private final undoLog:Lorg/h2/engine/UndoLog;

.field private undoLogEnabled:Z

.field private final user:Lorg/h2/engine/User;

.field private variables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/value/Value;",
            ">;"
        }
    .end annotation
.end field

.field private volatile viewIndexCache:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/Object;",
            "Lorg/h2/index/ViewIndex;",
            ">;"
        }
    .end annotation
.end field

.field private waitForLock:Lorg/h2/table/Table;

.field private waitForLockThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V
    .locals 4

    .line 143
    invoke-direct {p0}, Lorg/h2/engine/SessionWithState;-><init>()V

    .line 69
    sget v0, Lorg/h2/engine/Session;->nextSerialId:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/h2/engine/Session;->nextSerialId:I

    iput v0, p0, Lorg/h2/engine/Session;->serialId:I

    .line 74
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lorg/h2/engine/Session;->autoCommit:Z

    const-wide/16 v1, 0x0

    .line 79
    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/engine/Session;->lastIdentity:Lorg/h2/value/Value;

    .line 80
    invoke-static {v1, v2}, Lorg/h2/value/ValueLong;->get(J)Lorg/h2/value/ValueLong;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    const/4 v1, -0x1

    .line 81
    iput v1, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    .line 82
    iput v1, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    .line 97
    iput-boolean v0, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    .line 98
    iput-boolean v0, p0, Lorg/h2/engine/Session;->redoLogBinary:Z

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->sessionStart:J

    const-wide/16 v0, -0x1

    .line 116
    iput-wide v0, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    .line 141
    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    .line 144
    iput-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    .line 145
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->maxQueryTimeout:I

    iput v0, p0, Lorg/h2/engine/Session;->queryTimeout:I

    .line 146
    invoke-virtual {p1}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->queryCacheSize:I

    iput v0, p0, Lorg/h2/engine/Session;->queryCacheSize:I

    .line 147
    new-instance v0, Lorg/h2/engine/UndoLog;

    invoke-direct {v0, p0}, Lorg/h2/engine/UndoLog;-><init>(Lorg/h2/engine/Session;)V

    iput-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    .line 148
    iput-object p2, p0, Lorg/h2/engine/Session;->user:Lorg/h2/engine/User;

    .line 149
    iput p3, p0, Lorg/h2/engine/Session;->id:I

    const/4 p2, 0x6

    .line 150
    invoke-static {p2}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/h2/engine/Database;->findSetting(Ljava/lang/String;)Lorg/h2/engine/Setting;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x7d0

    goto :goto_0

    .line 152
    :cond_0
    invoke-virtual {p1}, Lorg/h2/engine/Setting;->getIntValue()I

    move-result p1

    :goto_0
    iput p1, p0, Lorg/h2/engine/Session;->lockTimeout:I

    const-string p1, "PUBLIC"

    .line 154
    iput-object p1, p0, Lorg/h2/engine/Session;->currentSchemaName:Ljava/lang/String;

    return-void
.end method

.method private checkCommitRollback()V
    .locals 1

    .line 683
    iget-boolean v0, p0, Lorg/h2/engine/Session;->commitOrRollbackDisabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fca

    .line 684
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private cleanTempTables(Z)V
    .locals 4

    .line 938
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 939
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 940
    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 941
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 942
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    if-nez p1, :cond_2

    .line 943
    invoke-virtual {v2}, Lorg/h2/table/Table;->getOnCommitDrop()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 953
    :cond_1
    invoke-virtual {v2}, Lorg/h2/table/Table;->getOnCommitTruncate()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 954
    invoke-virtual {v2, p0}, Lorg/h2/table/Table;->truncate(Lorg/h2/engine/Session;)V

    goto :goto_0

    .line 944
    :cond_2
    :goto_1
    iget v3, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/h2/engine/Session;->modificationId:I

    .line 945
    invoke-virtual {v2}, Lorg/h2/table/Table;->setModified()V

    .line 946
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 947
    invoke-virtual {v2, p0}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    if-eqz p1, :cond_0

    .line 951
    iget-object v2, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2, p0}, Lorg/h2/engine/Database;->commit(Lorg/h2/engine/Session;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 960
    iget-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1, p0}, Lorg/h2/engine/Database;->unlockMeta(Lorg/h2/engine/Session;)V

    .line 962
    :cond_4
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    return-void
.end method

.method private closeTemporaryResults()V
    .locals 2

    .line 1467
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1468
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/result/LocalResult;

    .line 1469
    invoke-virtual {v1}, Lorg/h2/result/LocalResult;->close()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1471
    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    :cond_1
    return-void
.end method

.method private endTransaction()V
    .locals 2

    .line 689
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 690
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-nez v0, :cond_0

    .line 693
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->flush()V

    .line 695
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    .line 696
    invoke-virtual {v1}, Lorg/h2/value/Value;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 698
    iput-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    .line 700
    :cond_2
    invoke-direct {p0}, Lorg/h2/engine/Session;->unlockAll()V

    return-void
.end method

.method private initVariables()V
    .locals 1

    .line 256
    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method private removeTemporaryLobs(Z)V
    .locals 5

    .line 652
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    .line 653
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobSession()Lorg/h2/engine/Session;

    move-result-object v0

    if-ne p0, v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 655
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 658
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 659
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/value/Value;

    .line 660
    invoke-virtual {v1}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 661
    invoke-virtual {v1}, Lorg/h2/value/Value;->remove()V

    goto :goto_1

    .line 664
    :cond_3
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 666
    :cond_4
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v2

    iget v2, v2, Lorg/h2/engine/DbSettings;->lobTimeout:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 669
    :cond_5
    :goto_2
    iget-object v2, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 670
    iget-object v2, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Session$TimeoutValue;

    if-eqz p1, :cond_6

    .line 671
    iget-wide v2, v2, Lorg/h2/engine/Session$TimeoutValue;->created:J

    cmp-long v4, v2, v0

    if-ltz v4, :cond_6

    goto :goto_3

    .line 674
    :cond_6
    iget-object v2, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/engine/Session$TimeoutValue;

    iget-object v2, v2, Lorg/h2/engine/Session$TimeoutValue;->value:Lorg/h2/value/Value;

    .line 675
    invoke-virtual {v2}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v3

    if-nez v3, :cond_5

    .line 676
    invoke-virtual {v2}, Lorg/h2/value/Value;->remove()V

    goto :goto_2

    :cond_7
    :goto_3
    return-void
.end method

.method private unlockAll()V
    .locals 3

    .line 920
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLog;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 922
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 925
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 927
    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 928
    iget-object v2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/table/Table;

    .line 929
    invoke-virtual {v2, p0}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 931
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    const/4 v0, 0x0

    .line 933
    iput-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 934
    iput-boolean v0, p0, Lorg/h2/engine/Session;->sessionStateChanged:Z

    return-void
.end method


# virtual methods
.method public addLocalTempTable(Lorg/h2/table/Table;)V
    .locals 2

    .line 341
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    .line 344
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 348
    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    .line 349
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const v0, 0xa475

    .line 345
    invoke-virtual {p1}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 2

    .line 451
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 452
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    .line 454
    :cond_0
    invoke-virtual {p1}, Lorg/h2/constraint/Constraint;->getName()Ljava/lang/String;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 459
    iget-object v1, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const v0, 0x15fbd

    .line 456
    invoke-virtual {p1}, Lorg/h2/constraint/Constraint;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addLocalTempTableIndex(Lorg/h2/index/Index;)V
    .locals 2

    .line 393
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 394
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    .line 396
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 400
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const v0, 0xa47f

    .line 397
    invoke-interface {p1}, Lorg/h2/index/Index;->getSQL()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public addLock(Lorg/h2/table/Table;)V
    .locals 1

    .line 839
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    .line 840
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 844
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addLogPos(II)V
    .locals 2

    .line 1012
    iget v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1013
    iput p1, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    .line 1014
    iput p2, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    :cond_0
    return-void
.end method

.method public addProcedure(Lorg/h2/engine/Procedure;)V
    .locals 2

    .line 1297
    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1298
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    .line 1300
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/engine/Procedure;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addSavepoint(Ljava/lang/String;)V
    .locals 3

    .line 1049
    iget-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1050
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->newStringMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    .line 1052
    :cond_0
    new-instance v0, Lorg/h2/engine/Session$Savepoint;

    invoke-direct {v0}, Lorg/h2/engine/Session$Savepoint;-><init>()V

    .line 1053
    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->size()I

    move-result v1

    iput v1, v0, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    .line 1054
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1055
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getStatementSavepoint()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/engine/Session$Savepoint;->transactionSavepoint:J

    .line 1057
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addTemporaryLob(Lorg/h2/value/Value;)V
    .locals 2

    .line 1635
    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->getType()I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    return-void

    .line 1638
    :cond_0
    invoke-virtual {p1}, Lorg/h2/value/Value;->getTableId()I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lorg/h2/value/Value;->getTableId()I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 1645
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    .line 1648
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryLobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1640
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    if-nez v0, :cond_4

    .line 1641
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    .line 1643
    :cond_4
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResultLobs:Ljava/util/LinkedList;

    new-instance v1, Lorg/h2/engine/Session$TimeoutValue;

    invoke-direct {v1, p1}, Lorg/h2/engine/Session$TimeoutValue;-><init>(Lorg/h2/value/Value;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method public addTemporaryResult(Lorg/h2/result/LocalResult;)V
    .locals 2

    .line 1454
    invoke-virtual {p1}, Lorg/h2/result/LocalResult;->needToClose()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1457
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    if-nez v0, :cond_1

    .line 1458
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    .line 1460
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    .line 1462
    iget-object v0, p0, Lorg/h2/engine/Session;->temporaryResults:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public afterWriting()V
    .locals 1

    .line 1534
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->afterWriting()V

    return-void
.end method

.method public begin()V
    .locals 1

    const/4 v0, 0x1

    .line 1363
    iput-boolean v0, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    const/4 v0, 0x0

    .line 1364
    iput-boolean v0, p0, Lorg/h2/engine/Session;->autoCommit:Z

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->cancelAt:J

    return-void
.end method

.method public checkCanceled()V
    .locals 7

    .line 1183
    invoke-virtual {p0}, Lorg/h2/engine/Session;->throttle()V

    .line 1184
    iget-wide v0, p0, Lorg/h2/engine/Session;->cancelAt:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1187
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1188
    iget-wide v4, p0, Lorg/h2/engine/Session;->cancelAt:J

    cmp-long v6, v0, v4

    if-gez v6, :cond_1

    return-void

    .line 1189
    :cond_1
    iput-wide v2, p0, Lorg/h2/engine/Session;->cancelAt:J

    const v0, 0xdeb6

    .line 1190
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public clearViewIndexCache()V
    .locals 1

    const/4 v0, 0x0

    .line 1630
    iput-object v0, p0, Lorg/h2/engine/Session;->viewIndexCache:Lorg/h2/util/SmallLRUCache;

    return-void
.end method

.method public close()V
    .locals 2

    .line 815
    iget-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 817
    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->checkPowerOff()V

    .line 820
    invoke-virtual {p0}, Lorg/h2/engine/Session;->rollback()V

    const/4 v1, 0x0

    .line 822
    invoke-direct {p0, v1}, Lorg/h2/engine/Session;->removeTemporaryLobs(Z)V

    .line 823
    invoke-direct {p0, v0}, Lorg/h2/engine/Session;->cleanTempTables(Z)V

    .line 824
    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->clear()V

    .line 825
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1, p0}, Lorg/h2/engine/Database;->removeSession(Lorg/h2/engine/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    iput-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public commit(Z)V
    .locals 7

    .line 596
    invoke-direct {p0}, Lorg/h2/engine/Session;->checkCommitRollback()V

    const/4 v0, 0x0

    .line 597
    iput-object v0, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 598
    iput-wide v1, p0, Lorg/h2/engine/Session;->transactionStart:J

    .line 599
    iget-object v1, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 603
    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 604
    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 605
    iget-object v4, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/h2/table/Table;

    .line 606
    instance-of v5, v4, Lorg/h2/mvstore/db/MVTable;

    if-eqz v5, :cond_0

    .line 607
    check-cast v4, Lorg/h2/mvstore/db/MVTable;

    invoke-virtual {v4}, Lorg/h2/mvstore/db/MVTable;->commit()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 611
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    .line 612
    iput-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    .line 614
    :cond_2
    invoke-virtual {p0}, Lorg/h2/engine/Session;->containsUncommitted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 617
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p0}, Lorg/h2/engine/Database;->commit(Lorg/h2/engine/Session;)V

    :cond_3
    const/4 v0, 0x1

    .line 619
    invoke-direct {p0, v0}, Lorg/h2/engine/Session;->removeTemporaryLobs(Z)V

    .line 620
    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 622
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 623
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 624
    iget-object v3, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v3

    .line 625
    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v4}, Lorg/h2/engine/UndoLog;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 626
    iget-object v4, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v4}, Lorg/h2/engine/UndoLog;->getLast()Lorg/h2/engine/UndoLogRecord;

    move-result-object v4

    .line 627
    invoke-virtual {v4}, Lorg/h2/engine/UndoLogRecord;->commit()V

    .line 628
    invoke-virtual {v4}, Lorg/h2/engine/UndoLogRecord;->getRow()Lorg/h2/result/Row;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    iget-object v4, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v4, v2}, Lorg/h2/engine/UndoLog;->removeLast(Z)V

    goto :goto_1

    .line 631
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_5

    .line 632
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/h2/result/Row;

    .line 633
    invoke-virtual {v6}, Lorg/h2/result/Row;->commit()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 635
    :cond_5
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 637
    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->clear()V

    :cond_7
    if-nez p1, :cond_8

    .line 642
    invoke-direct {p0, v2}, Lorg/h2/engine/Session;->cleanTempTables(Z)V

    .line 643
    iget-boolean p1, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    if-eqz p1, :cond_8

    .line 644
    iput-boolean v0, p0, Lorg/h2/engine/Session;->autoCommit:Z

    .line 645
    iput-boolean v2, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    .line 648
    :cond_8
    invoke-direct {p0}, Lorg/h2/engine/Session;->endTransaction()V

    return-void
.end method

.method public containsUncommitted()Z
    .locals 4

    .line 1037
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1038
    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 1040
    :cond_1
    iget v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public createConnection(Z)Lorg/h2/jdbc/JdbcConnection;
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "jdbc:columnlist:connection"

    goto :goto_0

    :cond_0
    const-string p1, "jdbc:default:connection"

    .line 1242
    :goto_0
    new-instance v0, Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {p0}, Lorg/h2/engine/Session;->getUser()Lorg/h2/engine/User;

    move-result-object v1

    invoke-virtual {v1}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1, p2}, Lorg/h2/engine/Database;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method public endStatement()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1622
    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    .line 1623
    invoke-direct {p0}, Lorg/h2/engine/Session;->closeTemporaryResults()V

    return-void
.end method

.method public findLocalTempTable(Ljava/lang/String;)Lorg/h2/table/Table;
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 324
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/table/Table;

    return-object p1
.end method

.method public findLocalTempTableConstraint(Ljava/lang/String;)Lorg/h2/constraint/Constraint;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 428
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/constraint/Constraint;

    return-object p1
.end method

.method public findLocalTempTableIndex(Ljava/lang/String;)Lorg/h2/index/Index;
    .locals 1

    .line 373
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 376
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/index/Index;

    return-object p1
.end method

.method public getAllowLiterals()Z
    .locals 1

    .line 1212
    iget-boolean v0, p0, Lorg/h2/engine/Session;->allowLiterals:Z

    return v0
.end method

.method public getAutoCommit()Z
    .locals 1

    .line 478
    iget-boolean v0, p0, Lorg/h2/engine/Session;->autoCommit:Z

    return v0
.end method

.method public getCancel()J
    .locals 2

    .line 1200
    iget-wide v0, p0, Lorg/h2/engine/Session;->cancelAt:J

    return-wide v0
.end method

.method public getClusterServers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCurrentCommand()Lorg/h2/command/Command;
    .locals 1

    .line 1204
    iget-object v0, p0, Lorg/h2/engine/Session;->currentCommand:Lorg/h2/command/Command;

    return-object v0
.end method

.method public getCurrentCommandStart()J
    .locals 2

    .line 1208
    iget-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    return-wide v0
.end method

.method public getCurrentSchemaName()Ljava/lang/String;
    .locals 1

    .line 1225
    iget-object v0, p0, Lorg/h2/engine/Session;->currentSchemaName:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHandler()Lorg/h2/store/DataHandler;
    .locals 1

    .line 1247
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method public getDatabase()Lorg/h2/engine/Database;
    .locals 1

    .line 575
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    return-object v0
.end method

.method public getFirstUncommittedLog()I
    .locals 1

    .line 1019
    iget v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 805
    iget v0, p0, Lorg/h2/engine/Session;->id:I

    return v0
.end method

.method public getLastIdentity()Lorg/h2/value/Value;
    .locals 1

    .line 992
    iget-object v0, p0, Lorg/h2/engine/Session;->lastIdentity:Lorg/h2/value/Value;

    return-object v0
.end method

.method public getLastScopeIdentity()Lorg/h2/value/Value;
    .locals 1

    .line 1000
    iget-object v0, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    return-object v0
.end method

.method public getLocalTempTableConstraints()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/constraint/Constraint;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 439
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLocalTempTableIndexes()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/index/Index;",
            ">;"
        }
    .end annotation

    .line 380
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 381
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    return-object v0
.end method

.method public getLocalTempTables()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    .line 328
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLockTimeout()I
    .locals 1

    .line 491
    iget v0, p0, Lorg/h2/engine/Session;->lockTimeout:I

    return v0
.end method

.method public getLocks()[Lorg/h2/table/Table;
    .locals 3

    .line 1380
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 1381
    :goto_0
    iget-object v2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1383
    :try_start_0
    iget-object v2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1389
    :catch_0
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lorg/h2/table/Table;

    .line 1390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v1
.end method

.method public getModificationId()I
    .locals 1

    .line 1512
    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    return v0
.end method

.method public getNextSystemIdentifier(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1286
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Session;->systemIdentifier:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/engine/Session;->systemIdentifier:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1287
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0
.end method

.method public getPowerOffCount()I
    .locals 1

    .line 580
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getPowerOffCount()I

    move-result v0

    return v0
.end method

.method public getProcedure(Ljava/lang/String;)Lorg/h2/engine/Procedure;
    .locals 1

    .line 1322
    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1325
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Procedure;

    return-object p1
.end method

.method public getQueryTimeout()I
    .locals 1

    .line 1488
    iget v0, p0, Lorg/h2/engine/Session;->queryTimeout:I

    return v0
.end method

.method public getRandom()Ljava/util/Random;
    .locals 1

    .line 967
    iget-object v0, p0, Lorg/h2/engine/Session;->random:Ljava/util/Random;

    if-nez v0, :cond_0

    .line 968
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Session;->random:Ljava/util/Random;

    .line 970
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->random:Ljava/util/Random;

    return-object v0
.end method

.method public getSchemaSearchPath()[Ljava/lang/String;
    .locals 1

    .line 1334
    iget-object v0, p0, Lorg/h2/engine/Session;->schemaSearchPath:[Ljava/lang/String;

    return-object v0
.end method

.method public getSessionStart()J
    .locals 2

    .line 1368
    iget-wide v0, p0, Lorg/h2/engine/Session;->sessionStart:J

    return-wide v0
.end method

.method public getStatementSavepoint()J
    .locals 5

    .line 1604
    iget-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1605
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->setSavepoint()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    .line 1607
    :cond_0
    iget-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    return-wide v0
.end method

.method public getSubQueryInfo()Lorg/h2/table/SubQueryInfo;
    .locals 1

    .line 205
    iget-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    return-object v0
.end method

.method public getTrace()Lorg/h2/message/Trace;
    .locals 3

    .line 975
    iget-object v0, p0, Lorg/h2/engine/Session;->trace:Lorg/h2/message/Trace;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    if-nez v0, :cond_0

    .line 976
    iget-object v0, p0, Lorg/h2/engine/Session;->trace:Lorg/h2/message/Trace;

    return-object v0

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jdbc["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 979
    iget-boolean v1, p0, Lorg/h2/engine/Session;->closed:Z

    if-eqz v1, :cond_1

    .line 980
    new-instance v1, Lorg/h2/message/TraceSystem;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/h2/message/TraceSystem;->getTrace(Ljava/lang/String;)Lorg/h2/message/Trace;

    move-result-object v0

    return-object v0

    .line 982
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/h2/message/TraceSystem;->getTrace(Ljava/lang/String;)Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->trace:Lorg/h2/message/Trace;

    .line 983
    iget-object v0, p0, Lorg/h2/engine/Session;->trace:Lorg/h2/message/Trace;

    return-object v0
.end method

.method public getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;
    .locals 2

    .line 1592
    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-nez v0, :cond_1

    .line 1593
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/MVStore;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1597
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getTransactionStore()Lorg/h2/mvstore/db/TransactionStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore;->begin()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    const-wide/16 v0, -0x1

    .line 1598
    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    goto :goto_0

    .line 1594
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->shutdownImmediately()V

    const v0, 0x15ff2

    .line 1595
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 1600
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    return-object v0
.end method

.method public getTransactionId()Lorg/h2/value/Value;
    .locals 2

    .line 1557
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1558
    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-nez v0, :cond_0

    .line 1559
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    .line 1561
    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getTransaction()Lorg/h2/mvstore/db/TransactionStore$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getId()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0

    .line 1563
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1564
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    .line 1566
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLog;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 1567
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    return-object v0

    .line 1569
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Session;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/value/ValueString;->get(Ljava/lang/String;)Lorg/h2/value/Value;

    move-result-object v0

    return-object v0
.end method

.method public getTransactionStart()J
    .locals 5

    .line 1372
    iget-wide v0, p0, Lorg/h2/engine/Session;->transactionStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->transactionStart:J

    .line 1375
    :cond_0
    iget-wide v0, p0, Lorg/h2/engine/Session;->transactionStart:J

    return-wide v0
.end method

.method public getUser()Lorg/h2/engine/User;
    .locals 1

    .line 482
    iget-object v0, p0, Lorg/h2/engine/Session;->user:Lorg/h2/engine/User;

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Lorg/h2/value/Value;
    .locals 1

    .line 294
    invoke-direct {p0}, Lorg/h2/engine/Session;->initVariables()V

    .line 295
    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    if-nez p1, :cond_0

    .line 296
    sget-object p1, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    :cond_0
    return-object p1
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 2

    .line 305
    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 306
    new-array v0, v0, [Ljava/lang/String;

    return-object v0

    .line 308
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 309
    iget-object v1, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method public getViewIndexCache(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lorg/h2/index/ViewIndex;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1434
    iget-object p1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 1435
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    .line 1437
    :cond_0
    iget-object p1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    return-object p1

    .line 1439
    :cond_1
    iget-object p1, p0, Lorg/h2/engine/Session;->viewIndexCache:Lorg/h2/util/SmallLRUCache;

    if-nez p1, :cond_2

    const/16 p1, 0x40

    .line 1441
    invoke-static {p1}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Session;->viewIndexCache:Lorg/h2/util/SmallLRUCache;

    :cond_2
    return-object p1
.end method

.method public getWaitForLock()Lorg/h2/table/Table;
    .locals 1

    .line 1504
    iget-object v0, p0, Lorg/h2/engine/Session;->waitForLock:Lorg/h2/table/Table;

    return-object v0
.end method

.method public getWaitForLockThread()Ljava/lang/Thread;
    .locals 1

    .line 1508
    iget-object v0, p0, Lorg/h2/engine/Session;->waitForLockThread:Ljava/lang/Thread;

    return-object v0
.end method

.method public hasPendingTransaction()Z
    .locals 1

    .line 787
    iget-object v0, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLog;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1339
    iget v0, p0, Lorg/h2/engine/Session;->serialId:I

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1132
    iget-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    return v0
.end method

.method public isForceJoinOrder()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lorg/h2/engine/Session;->forceJoinOrder:Z

    return v0
.end method

.method public isJoinBatchEnabled()Z
    .locals 1

    .line 170
    iget-boolean v0, p0, Lorg/h2/engine/Session;->joinBatchEnabled:Z

    return v0
.end method

.method public isParsingView()Z
    .locals 1

    .line 216
    iget v0, p0, Lorg/h2/engine/Session;->parsingView:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPreparingQueryExpression()Z
    .locals 1

    .line 241
    iget v0, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReconnectNeeded(Z)Z
    .locals 2

    .line 1518
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isReconnectNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1523
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_2
    return v0
.end method

.method public isRedoLogBinaryEnabled()Z
    .locals 1

    .line 1583
    iget-boolean v0, p0, Lorg/h2/engine/Session;->redoLogBinary:Z

    return v0
.end method

.method public isUndoLogEnabled()Z
    .locals 1

    .line 1356
    iget-boolean v0, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    return v0
.end method

.method public log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V
    .locals 3

    .line 855
    invoke-virtual {p1}, Lorg/h2/table/Table;->isMVStore()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 858
    :cond_0
    iget-boolean v0, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    if-eqz v0, :cond_2

    .line 859
    new-instance v0, Lorg/h2/engine/UndoLogRecord;

    invoke-direct {v0, p1, p2, p3}, Lorg/h2/engine/UndoLogRecord;-><init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 862
    sget-boolean p1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p1, :cond_1

    .line 863
    iget-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->getLockMode()I

    move-result p1

    if-eqz p1, :cond_1

    .line 864
    iget-object p1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p1

    if-nez p1, :cond_1

    .line 866
    invoke-virtual {v0}, Lorg/h2/engine/UndoLogRecord;->getTable()Lorg/h2/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object p1

    .line 867
    iget-object p2, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/h2/engine/UndoLogRecord;->getTable()Lorg/h2/table/Table;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    if-gez p2, :cond_1

    const-string p2, "TABLE LINK"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "EXTERNAL"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 870
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 874
    :cond_1
    iget-object p1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {p1, v0}, Lorg/h2/engine/UndoLog;->add(Lorg/h2/engine/UndoLogRecord;)V

    goto :goto_1

    .line 876
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 878
    invoke-virtual {p1}, Lorg/h2/table/Table;->getIndexes()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    .line 879
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_3

    .line 880
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/index/Index;

    .line 881
    invoke-interface {v2, p2, p3}, Lorg/h2/index/Index;->commit(ILorg/h2/result/Row;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 883
    :cond_3
    invoke-virtual {p3}, Lorg/h2/result/Row;->commit()V

    :cond_4
    :goto_1
    return-void
.end method

.method public nextObjectId()I
    .locals 2

    .line 1579
    iget v0, p0, Lorg/h2/engine/Session;->objectId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/h2/engine/Session;->objectId:I

    return v0
.end method

.method public optimizeQueryExpression(Lorg/h2/command/dml/Query;)V
    .locals 2

    .line 228
    iget-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    const/4 v1, 0x0

    .line 229
    iput-object v1, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    .line 230
    iget v1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    .line 232
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/command/dml/Query;->prepare()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iput-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    .line 235
    iget p1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    return-void

    :catchall_0
    move-exception p1

    .line 234
    iput-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    .line 235
    iget v0, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/h2/engine/Session;->preparingQueryExpression:I

    throw p1
.end method

.method public popSubQueryInfo()V
    .locals 1

    .line 201
    iget-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    invoke-virtual {v0}, Lorg/h2/table/SubQueryInfo;->getUpper()Lorg/h2/table/SubQueryInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    return-void
.end method

.method public prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;
    .locals 1

    const/4 v0, 0x0

    .line 512
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Session;->prepare(Ljava/lang/String;Z)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Ljava/lang/String;Z)Lorg/h2/command/Prepared;
    .locals 1

    .line 523
    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    .line 524
    invoke-virtual {v0, p2}, Lorg/h2/command/Parser;->setRightsChecked(Z)V

    .line 525
    invoke-virtual {v0, p1}, Lorg/h2/command/Parser;->prepare(Ljava/lang/String;)Lorg/h2/command/Prepared;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized prepareCommand(Ljava/lang/String;I)Lorg/h2/command/CommandInterface;
    .locals 0

    monitor-enter p0

    .line 501
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/Session;->prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public prepareCommit(Ljava/lang/String;)V
    .locals 1

    .line 1083
    iget-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz v0, :cond_0

    .line 1084
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p0, p1}, Lorg/h2/engine/Database;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V

    .line 1086
    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Session;->containsUncommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1089
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p0, p1}, Lorg/h2/engine/Database;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V

    .line 1091
    :cond_1
    iput-object p1, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    return-void
.end method

.method public prepareLocal(Ljava/lang/String;)Lorg/h2/command/Command;
    .locals 5

    .line 536
    iget-boolean v0, p0, Lorg/h2/engine/Session;->closed:Z

    if-nez v0, :cond_4

    .line 541
    iget v0, p0, Lorg/h2/engine/Session;->queryCacheSize:I

    if-lez v0, :cond_2

    .line 542
    iget-object v0, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    if-nez v0, :cond_0

    .line 543
    iget v0, p0, Lorg/h2/engine/Session;->queryCacheSize:I

    invoke-static {v0}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    .line 544
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    goto :goto_0

    .line 546
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getModificationMetaId()J

    move-result-wide v0

    .line 547
    iget-wide v2, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 548
    iget-object v2, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v2}, Lorg/h2/util/SmallLRUCache;->clear()V

    .line 549
    iput-wide v0, p0, Lorg/h2/engine/Session;->modificationMetaID:J

    .line 551
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v0, p1}, Lorg/h2/util/SmallLRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/command/Command;

    if-eqz v0, :cond_2

    .line 552
    invoke-virtual {v0}, Lorg/h2/command/Command;->canReuse()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 553
    invoke-virtual {v0}, Lorg/h2/command/Command;->reuse()V

    return-object v0

    .line 558
    :cond_2
    :goto_0
    new-instance v0, Lorg/h2/command/Parser;

    invoke-direct {v0, p0}, Lorg/h2/command/Parser;-><init>(Lorg/h2/engine/Session;)V

    const/4 v1, 0x0

    .line 560
    :try_start_0
    invoke-virtual {v0, p1}, Lorg/h2/command/Parser;->prepareCommand(Ljava/lang/String;)Lorg/h2/command/Command;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    iput-object v1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    .line 565
    invoke-virtual {v0}, Lorg/h2/command/Command;->prepareJoinBatch()V

    .line 566
    iget-object v1, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    if-eqz v1, :cond_3

    .line 567
    invoke-virtual {v0}, Lorg/h2/command/Command;->isCacheable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 568
    iget-object v1, p0, Lorg/h2/engine/Session;->queryCache:Lorg/h2/util/SmallLRUCache;

    invoke-virtual {v1, p1, v0}, Lorg/h2/util/SmallLRUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :catchall_0
    move-exception p1

    .line 563
    iput-object v1, p0, Lorg/h2/engine/Session;->subQueryIndexCache:Ljava/util/HashMap;

    throw p1

    :cond_4
    const p1, 0x15fd3

    const-string v0, "session closed"

    .line 537
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public pushSubQueryInfo([I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V
    .locals 7

    .line 194
    new-instance v6, Lorg/h2/table/SubQueryInfo;

    iget-object v1, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/h2/table/SubQueryInfo;-><init>(Lorg/h2/table/SubQueryInfo;[I[Lorg/h2/table/TableFilter;ILorg/h2/result/SortOrder;)V

    iput-object v6, p0, Lorg/h2/engine/Session;->subQueryInfo:Lorg/h2/table/SubQueryInfo;

    return-void
.end method

.method public bridge synthetic readSessionState()V
    .locals 0

    .line 55
    invoke-super {p0}, Lorg/h2/engine/SessionWithState;->readSessionState()V

    return-void
.end method

.method public reconnect(Z)Lorg/h2/engine/SessionInterface;
    .locals 2

    .line 1539
    invoke-virtual {p0}, Lorg/h2/engine/Session;->readSessionState()V

    .line 1540
    invoke-virtual {p0}, Lorg/h2/engine/Session;->close()V

    .line 1541
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Session;->connectionInfo:Lorg/h2/engine/ConnectionInfo;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Engine;->createSession(Lorg/h2/engine/ConnectionInfo;)Lorg/h2/engine/Session;

    move-result-object v0

    .line 1542
    iget-object v1, p0, Lorg/h2/engine/Session;->sessionState:Ljava/util/ArrayList;

    iput-object v1, v0, Lorg/h2/engine/Session;->sessionState:Ljava/util/ArrayList;

    .line 1543
    invoke-virtual {v0}, Lorg/h2/engine/Session;->recreateSessionState()V

    if-eqz p1, :cond_0

    .line 1545
    :goto_0
    iget-object p1, v0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {p1}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public removeAtCommit(Lorg/h2/value/Value;)V
    .locals 2

    .line 1256
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/h2/value/Value;->isLinkedToTable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 1259
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 1260
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    .line 1261
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public removeAtCommitStop(Lorg/h2/value/Value;)V
    .locals 1

    .line 1271
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1272
    iget-object v0, p0, Lorg/h2/engine/Session;->removeLobMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/value/Value;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeLocalTempTable(Lorg/h2/table/Table;)V
    .locals 2

    .line 358
    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    .line 359
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTables:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/table/Table;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 361
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 362
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method removeLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V
    .locals 2

    .line 468
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableConstraints:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/h2/constraint/Constraint;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 471
    :try_start_0
    invoke-virtual {p1, p0}, Lorg/h2/constraint/Constraint;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 472
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removeLocalTempTableIndex(Lorg/h2/index/Index;)V
    .locals 2

    .line 409
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lorg/h2/engine/Session;->localTempTableIndexes:Ljava/util/HashMap;

    invoke-interface {p1}, Lorg/h2/index/Index;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v0

    .line 412
    :try_start_0
    invoke-interface {p1, p0}, Lorg/h2/index/Index;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 413
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public removeProcedure(Ljava/lang/String;)V
    .locals 1

    .line 1309
    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1310
    iget-object v0, p0, Lorg/h2/engine/Session;->procedures:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public rollback()V
    .locals 5

    .line 707
    invoke-direct {p0}, Lorg/h2/engine/Session;->checkCommitRollback()V

    const/4 v0, 0x0

    .line 708
    iput-object v0, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    .line 710
    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    .line 711
    invoke-virtual {p0, v0, v3}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 714
    :goto_0
    iget-object v4, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz v4, :cond_1

    .line 715
    invoke-virtual {p0, v0, v3}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    .line 719
    iget-object v1, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v1}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->commit()V

    .line 720
    iput-object v0, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    const/4 v1, 0x1

    .line 722
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    if-eqz v1, :cond_3

    .line 723
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p0}, Lorg/h2/engine/Database;->commit(Lorg/h2/engine/Session;)V

    .line 725
    :cond_3
    invoke-direct {p0, v3}, Lorg/h2/engine/Session;->cleanTempTables(Z)V

    .line 726
    iget-boolean v0, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    if-eqz v0, :cond_4

    .line 727
    iput-boolean v2, p0, Lorg/h2/engine/Session;->autoCommit:Z

    .line 728
    iput-boolean v3, p0, Lorg/h2/engine/Session;->autoCommitAtTransactionEnd:Z

    .line 730
    :cond_4
    invoke-direct {p0}, Lorg/h2/engine/Session;->endTransaction()V

    return-void
.end method

.method public rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 740
    :cond_0
    iget v1, p1, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    .line 741
    :goto_0
    iget-object v2, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v2}, Lorg/h2/engine/UndoLog;->size()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 742
    iget-object v2, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v2}, Lorg/h2/engine/UndoLog;->getLast()Lorg/h2/engine/UndoLogRecord;

    move-result-object v2

    .line 743
    invoke-virtual {v2, p0}, Lorg/h2/engine/UndoLogRecord;->undo(Lorg/h2/engine/Session;)V

    .line 744
    iget-object v2, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v2, p2}, Lorg/h2/engine/UndoLog;->removeLast(Z)V

    goto :goto_0

    .line 746
    :cond_1
    iget-object p2, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    if-eqz p2, :cond_5

    if-nez p1, :cond_2

    const-wide/16 p1, 0x0

    goto :goto_1

    .line 747
    :cond_2
    iget-wide p1, p1, Lorg/h2/engine/Session$Savepoint;->transactionSavepoint:J

    .line 748
    :goto_1
    iget-object v2, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v2}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v2

    invoke-virtual {v2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getTables()Ljava/util/HashMap;

    move-result-object v2

    .line 750
    iget-object v3, p0, Lorg/h2/engine/Session;->transaction:Lorg/h2/mvstore/db/TransactionStore$Transaction;

    invoke-virtual {v3, p1, p2}, Lorg/h2/mvstore/db/TransactionStore$Transaction;->getChanges(J)Ljava/util/Iterator;

    move-result-object p1

    .line 751
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 752
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/h2/mvstore/db/TransactionStore$Change;

    .line 753
    iget-object v3, p2, Lorg/h2/mvstore/db/TransactionStore$Change;->mapName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/mvstore/db/MVTable;

    if-eqz v3, :cond_3

    .line 755
    iget-object v4, p2, Lorg/h2/mvstore/db/TransactionStore$Change;->key:Ljava/lang/Object;

    check-cast v4, Lorg/h2/value/ValueLong;

    invoke-virtual {v4}, Lorg/h2/value/ValueLong;->getLong()J

    move-result-wide v4

    .line 756
    iget-object p2, p2, Lorg/h2/mvstore/db/TransactionStore$Change;->value:Ljava/lang/Object;

    check-cast p2, Lorg/h2/value/ValueArray;

    if-nez p2, :cond_4

    .line 761
    invoke-virtual {v3, p0, v4, v5}, Lorg/h2/mvstore/db/MVTable;->getRow(Lorg/h2/engine/Session;J)Lorg/h2/result/Row;

    move-result-object p2

    const/4 v6, 0x0

    goto :goto_3

    .line 764
    :cond_4
    invoke-virtual {p2}, Lorg/h2/value/ValueArray;->getList()[Lorg/h2/value/Value;

    move-result-object p2

    const/4 v6, -0x1

    invoke-virtual {p0, p2, v6}, Lorg/h2/engine/Session;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p2

    const/4 v6, 0x1

    .line 766
    :goto_3
    invoke-virtual {p2, v4, v5}, Lorg/h2/result/Row;->setKey(J)V

    .line 767
    new-instance v4, Lorg/h2/engine/UndoLogRecord;

    invoke-direct {v4, v3, v6, p2}, Lorg/h2/engine/UndoLogRecord;-><init>(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 768
    invoke-virtual {v4, p0}, Lorg/h2/engine/UndoLogRecord;->undo(Lorg/h2/engine/Session;)V

    goto :goto_2

    .line 772
    :cond_5
    iget-object p1, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    if-eqz p1, :cond_7

    .line 773
    iget-object p1, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 774
    iget-object p2, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 775
    array-length p2, p1

    :goto_4
    if-ge v0, p2, :cond_7

    aget-object v2, p1, v0

    .line 776
    iget-object v3, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/engine/Session$Savepoint;

    .line 777
    iget v3, v3, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    if-le v3, v1, :cond_6

    .line 779
    iget-object v3, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method

.method public rollbackToSavepoint(Ljava/lang/String;)V
    .locals 2

    .line 1066
    invoke-direct {p0}, Lorg/h2/engine/Session;->checkCommitRollback()V

    .line 1067
    iget-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    const v1, 0x15fcf

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lorg/h2/engine/Session;->savepoints:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/Session$Savepoint;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 1074
    invoke-virtual {p0, v0, p1}, Lorg/h2/engine/Session;->rollbackTo(Lorg/h2/engine/Session$Savepoint;Z)V

    return-void

    .line 1072
    :cond_0
    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 1068
    :cond_1
    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method setAllCommitted()V
    .locals 1

    const/4 v0, -0x1

    .line 1027
    iput v0, p0, Lorg/h2/engine/Session;->firstUncommittedLog:I

    .line 1028
    iput v0, p0, Lorg/h2/engine/Session;->firstUncommittedPos:I

    return-void
.end method

.method public setAllowLiterals(Z)V
    .locals 0

    .line 1216
    iput-boolean p1, p0, Lorg/h2/engine/Session;->allowLiterals:Z

    return-void
.end method

.method public setAutoCommit(Z)V
    .locals 0

    .line 487
    iput-boolean p1, p0, Lorg/h2/engine/Session;->autoCommit:Z

    return-void
.end method

.method public setCommitOrRollbackDisabled(Z)Z
    .locals 1

    .line 250
    iget-boolean v0, p0, Lorg/h2/engine/Session;->commitOrRollbackDisabled:Z

    .line 251
    iput-boolean p1, p0, Lorg/h2/engine/Session;->commitOrRollbackDisabled:Z

    return v0
.end method

.method public setConnectionInfo(Lorg/h2/engine/ConnectionInfo;)V
    .locals 0

    .line 1553
    iput-object p1, p0, Lorg/h2/engine/Session;->connectionInfo:Lorg/h2/engine/ConnectionInfo;

    return-void
.end method

.method public setCurrentCommand(Lorg/h2/command/Command;)V
    .locals 4

    .line 1168
    iput-object p1, p0, Lorg/h2/engine/Session;->currentCommand:Lorg/h2/command/Command;

    .line 1169
    iget v0, p0, Lorg/h2/engine/Session;->queryTimeout:I

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    .line 1170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1171
    iput-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    .line 1172
    iget p1, p0, Lorg/h2/engine/Session;->queryTimeout:I

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Session;->cancelAt:J

    :cond_0
    return-void
.end method

.method public setCurrentSchema(Lorg/h2/schema/Schema;)V
    .locals 1

    .line 1220
    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    .line 1221
    invoke-virtual {p1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Session;->currentSchemaName:Ljava/lang/String;

    return-void
.end method

.method public setForceJoinOrder(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Lorg/h2/engine/Session;->forceJoinOrder:Z

    return-void
.end method

.method public setJoinBatchEnabled(Z)V
    .locals 0

    .line 166
    iput-boolean p1, p0, Lorg/h2/engine/Session;->joinBatchEnabled:Z

    return-void
.end method

.method public setLastIdentity(Lorg/h2/value/Value;)V
    .locals 0

    .line 987
    iput-object p1, p0, Lorg/h2/engine/Session;->lastIdentity:Lorg/h2/value/Value;

    .line 988
    iput-object p1, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    return-void
.end method

.method public setLastScopeIdentity(Lorg/h2/value/Value;)V
    .locals 0

    .line 996
    iput-object p1, p0, Lorg/h2/engine/Session;->lastScopeIdentity:Lorg/h2/value/Value;

    return-void
.end method

.method public setLockTimeout(I)V
    .locals 0

    .line 495
    iput p1, p0, Lorg/h2/engine/Session;->lockTimeout:I

    return-void
.end method

.method public setParsingView(Z)V
    .locals 1

    .line 210
    iget v0, p0, Lorg/h2/engine/Session;->parsingView:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lorg/h2/engine/Session;->parsingView:I

    return-void
.end method

.method public setPowerOffCount(I)V
    .locals 1

    .line 585
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0, p1}, Lorg/h2/engine/Database;->setPowerOffCount(I)V

    return-void
.end method

.method public setPreparedTransaction(Ljava/lang/String;Z)V
    .locals 5

    .line 1101
    iget-object v0, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Session;->currentTransactionName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 1104
    invoke-virtual {p0, v1}, Lorg/h2/engine/Session;->commit(Z)V

    goto :goto_1

    .line 1106
    :cond_0
    invoke-virtual {p0}, Lorg/h2/engine/Session;->rollback()V

    goto :goto_1

    .line 1109
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    :goto_0
    if-eqz v0, :cond_4

    .line 1115
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/store/InDoubtTransaction;

    .line 1116
    invoke-interface {v3}, Lorg/h2/store/InDoubtTransaction;->getTransactionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1117
    invoke-interface {v3, p2}, Lorg/h2/store/InDoubtTransaction;->setState(I)V

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    :goto_1
    return-void

    :cond_5
    const p2, 0x16011

    .line 1124
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public setQueryTimeout(I)V
    .locals 2

    .line 1476
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object v0

    iget v0, v0, Lorg/h2/engine/DbSettings;->maxQueryTimeout:I

    if-eqz v0, :cond_1

    if-lt v0, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move p1, v0

    .line 1481
    :cond_1
    iput p1, p0, Lorg/h2/engine/Session;->queryTimeout:I

    const-wide/16 v0, 0x0

    .line 1484
    iput-wide v0, p0, Lorg/h2/engine/Session;->cancelAt:J

    return-void
.end method

.method public setRedoLogBinary(Z)V
    .locals 0

    .line 1352
    iput-boolean p1, p0, Lorg/h2/engine/Session;->redoLogBinary:Z

    return-void
.end method

.method public setSavepoint()Lorg/h2/engine/Session$Savepoint;
    .locals 3

    .line 796
    new-instance v0, Lorg/h2/engine/Session$Savepoint;

    invoke-direct {v0}, Lorg/h2/engine/Session$Savepoint;-><init>()V

    .line 797
    iget-object v1, p0, Lorg/h2/engine/Session;->undoLog:Lorg/h2/engine/UndoLog;

    invoke-virtual {v1}, Lorg/h2/engine/UndoLog;->size()I

    move-result v1

    iput v1, v0, Lorg/h2/engine/Session$Savepoint;->logIndex:I

    .line 798
    iget-object v1, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v1}, Lorg/h2/engine/Database;->getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 799
    invoke-virtual {p0}, Lorg/h2/engine/Session;->getStatementSavepoint()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/h2/engine/Session$Savepoint;->transactionSavepoint:J

    :cond_0
    return-object v0
.end method

.method public setSchemaSearchPath([Ljava/lang/String;)V
    .locals 1

    .line 1329
    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    .line 1330
    iput-object p1, p0, Lorg/h2/engine/Session;->schemaSearchPath:[Ljava/lang/String;

    return-void
.end method

.method public setThrottle(I)V
    .locals 0

    .line 1136
    iput p1, p0, Lorg/h2/engine/Session;->throttle:I

    return-void
.end method

.method public setUndoLogEnabled(Z)V
    .locals 0

    .line 1348
    iput-boolean p1, p0, Lorg/h2/engine/Session;->undoLogEnabled:Z

    return-void
.end method

.method public setVariable(Ljava/lang/String;Lorg/h2/value/Value;)V
    .locals 2

    .line 268
    invoke-direct {p0}, Lorg/h2/engine/Session;->initVariables()V

    .line 269
    iget v0, p0, Lorg/h2/engine/Session;->modificationId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/engine/Session;->modificationId:I

    .line 271
    sget-object v0, Lorg/h2/value/ValueNull;->INSTANCE:Lorg/h2/value/ValueNull;

    if-ne p2, v0, :cond_0

    .line 272
    iget-object p2, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Lorg/h2/value/Value;->copy(Lorg/h2/store/DataHandler;I)Lorg/h2/value/Value;

    move-result-object p2

    .line 277
    iget-object v0, p0, Lorg/h2/engine/Session;->variables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/value/Value;

    :goto_0
    if-eqz p1, :cond_1

    .line 281
    invoke-virtual {p1}, Lorg/h2/value/Value;->remove()V

    :cond_1
    return-void
.end method

.method public setWaitForLock(Lorg/h2/table/Table;Ljava/lang/Thread;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Lorg/h2/engine/Session;->waitForLock:Lorg/h2/table/Table;

    .line 1500
    iput-object p2, p0, Lorg/h2/engine/Session;->waitForLockThread:Ljava/lang/Thread;

    return-void
.end method

.method public startStatementWithinTransaction()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1614
    iput-wide v0, p0, Lorg/h2/engine/Session;->startStatement:J

    return-void
.end method

.method public throttle()V
    .locals 6

    .line 1143
    iget-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/h2/engine/Session;->currentCommandStart:J

    .line 1146
    :cond_0
    iget v0, p0, Lorg/h2/engine/Session;->throttle:I

    if-nez v0, :cond_1

    return-void

    .line 1149
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1150
    iget-wide v2, p0, Lorg/h2/engine/Session;->lastThrottle:J

    const-wide/16 v4, 0x32

    add-long/2addr v2, v4

    cmp-long v4, v2, v0

    if-lez v4, :cond_2

    return-void

    .line 1153
    :cond_2
    iget v2, p0, Lorg/h2/engine/Session;->throttle:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Session;->lastThrottle:J

    .line 1155
    :try_start_0
    iget v0, p0, Lorg/h2/engine/Session;->throttle:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Session;->serialId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " (user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/Session;->user:Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlock(Lorg/h2/table/Table;)V
    .locals 1

    .line 916
    iget-object v0, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unlockReadLocks()V
    .locals 3

    .line 893
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 898
    :goto_0
    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 899
    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    .line 900
    invoke-virtual {v1}, Lorg/h2/table/Table;->isLockedExclusively()Z

    move-result v2

    if-nez v2, :cond_1

    .line 901
    iget-object v2, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    monitor-enter v2

    .line 902
    :try_start_0
    invoke-virtual {v1, p0}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    .line 903
    iget-object v1, p0, Lorg/h2/engine/Session;->locks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 904
    monitor-exit v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public waitIfExclusiveModeEnabled()V
    .locals 2

    .line 1401
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getLobSession()Lorg/h2/engine/Session;

    move-result-object v0

    if-ne v0, p0, :cond_0

    return-void

    .line 1405
    :catch_0
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Session;->database:Lorg/h2/engine/Database;

    invoke-virtual {v0}, Lorg/h2/engine/Database;->getExclusiveSession()Lorg/h2/engine/Session;

    move-result-object v0

    if-eqz v0, :cond_3

    if-ne v0, p0, :cond_1

    goto :goto_1

    .line 1409
    :cond_1
    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x64

    .line 1414
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
