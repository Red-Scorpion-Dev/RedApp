.class public Lorg/h2/engine/Database;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Lorg/h2/store/DataHandler;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final SYSTEM_USER_NAME:Ljava/lang/String; = "DBA"

.field private static initialPowerOffCount:I


# instance fields
.field private final accessModeData:Ljava/lang/String;

.field private final aggregates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/UserAggregate;",
            ">;"
        }
    .end annotation
.end field

.field private allowLiterals:I

.field private final autoServerMode:Z

.field private final autoServerPort:I

.field private backgroundException:Lorg/h2/message/DbException;

.field private cacheSize:I

.field private final cacheType:Ljava/lang/String;

.field private volatile checkpointAllowed:I

.field private volatile checkpointRunning:Z

.field private final cipher:Ljava/lang/String;

.field private closeDelay:I

.field private closeOnExit:Lorg/h2/engine/DatabaseCloser;

.field private volatile closing:Z

.field private cluster:Ljava/lang/String;

.field private final comments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private compactMode:I

.field private compareMode:Lorg/h2/value/CompareMode;

.field private compiler:Lorg/h2/util/SourceCompiler;

.field private final databaseName:Ljava/lang/String;

.field private final databaseShortName:Ljava/lang/String;

.field private final databaseURL:Ljava/lang/String;

.field private final dbSettings:Lorg/h2/engine/DbSettings;

.field private defaultTableType:I

.field private delayedCloser:Lorg/h2/engine/DatabaseCloser;

.field private deleteFilesOnDisconnect:Z

.field private eventListener:Lorg/h2/api/DatabaseEventListener;

.field private exclusiveSession:Lorg/h2/engine/Session;

.field private final fileEncryptionKey:[B

.field private final fileLockMethod:I

.field private final filePasswordHash:[B

.field private flushOnEachCommit:Z

.field private ignoreCase:Z

.field private infoSchema:Lorg/h2/schema/Schema;

.field private javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;

.field private volatile javaObjectSerializerInitialized:Z

.field private javaObjectSerializerName:Ljava/lang/String;

.field private linkConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/h2/table/TableLinkConnection;",
            "Lorg/h2/table/TableLinkConnection;",
            ">;"
        }
    .end annotation
.end field

.field private lobCompressionAlgorithm:Ljava/lang/String;

.field private lobFileListCache:Lorg/h2/util/SmallLRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lobSession:Lorg/h2/engine/Session;

.field private lobStorage:Lorg/h2/store/LobStorageInterface;

.field private final lobSyncObject:Ljava/lang/Object;

.field private lock:Lorg/h2/store/FileLock;

.field private lockMode:I

.field private logMode:I

.field private mainSchema:Lorg/h2/schema/Schema;

.field private maxLengthInplaceLob:I

.field private maxMemoryRows:I

.field private maxMemoryUndo:I

.field private maxOperationMemory:I

.field private meta:Lorg/h2/table/Table;

.field private metaIdIndex:Lorg/h2/index/Index;

.field private volatile metaTablesInitialized:Z

.field private mode:Lorg/h2/engine/Mode;

.field private modificationDataId:J

.field private modificationMetaId:J

.field private multiThreaded:Z

.field private multiVersion:Z

.field private mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

.field private nextSessionId:I

.field private nextTempTableId:I

.field private final objectIds:Lorg/h2/util/BitField;

.field private optimizeReuseResults:Z

.field private final pageSize:I

.field private pageStore:Lorg/h2/store/PageStore;

.field private final persistent:Z

.field private powerOffCount:I

.field private publicRole:Lorg/h2/engine/Role;

.field private queryStatistics:Z

.field private queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

.field private queryStatisticsMaxEntries:I

.field private readOnly:Z

.field private volatile reconnectChangePending:Z

.field private final reconnectCheckDelay:I

.field private volatile reconnectCheckNext:J

.field private reconnectLastLock:Ljava/util/Properties;

.field private final reconnectSync:Ljava/lang/Object;

.field private referentialIntegrity:Z

.field private retentionTime:I

.field private final rights:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation
.end field

.field private final roles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Role;",
            ">;"
        }
    .end annotation
.end field

.field private rowFactory:Lorg/h2/result/RowFactory;

.field private final schemas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/schema/Schema;",
            ">;"
        }
    .end annotation
.end field

.field private server:Lorg/h2/tools/Server;

.field private final settings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/Setting;",
            ">;"
        }
    .end annotation
.end field

.field private starting:Z

.field private systemSession:Lorg/h2/engine/Session;

.field private systemUser:Lorg/h2/engine/User;

.field private final tableEngines:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/api/TableEngine;",
            ">;"
        }
    .end annotation
.end field

.field private final tempFileDeleter:Lorg/h2/util/TempFileDeleter;

.field private trace:Lorg/h2/message/Trace;

.field private traceSystem:Lorg/h2/message/TraceSystem;

.field private final userDataTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/UserDataType;",
            ">;"
        }
    .end annotation
.end field

.field private final userSessions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/h2/engine/Session;",
            ">;"
        }
    .end annotation
.end field

.field private final users:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/User;",
            ">;"
        }
    .end annotation
.end field

.field private writeDelay:I

.field private writer:Lorg/h2/store/WriterThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/h2/engine/ConnectionInfo;Ljava/lang/String;)V
    .locals 7

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    .line 101
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    .line 102
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    .line 103
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    .line 104
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->rights:Ljava/util/HashMap;

    .line 105
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    .line 106
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    .line 107
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    .line 108
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->tableEngines:Ljava/util/HashMap;

    .line 110
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    .line 113
    new-instance v0, Lorg/h2/util/BitField;

    invoke-direct {v0}, Lorg/h2/util/BitField;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Database;->lobSyncObject:Ljava/lang/Object;

    const-string v0, "\'\'"

    .line 135
    iput-object v0, p0, Lorg/h2/engine/Database;->cluster:Ljava/lang/String;

    const/16 v0, 0x1f4

    .line 137
    iput v0, p0, Lorg/h2/engine/Database;->writeDelay:I

    .line 139
    sget v0, Lorg/h2/engine/SysProperties;->MAX_MEMORY_ROWS:I

    iput v0, p0, Lorg/h2/engine/Database;->maxMemoryRows:I

    const v0, 0xc350

    .line 140
    iput v0, p0, Lorg/h2/engine/Database;->maxMemoryUndo:I

    const/4 v0, 0x3

    .line 141
    iput v0, p0, Lorg/h2/engine/Database;->lockMode:I

    const/4 v1, 0x2

    .line 143
    iput v1, p0, Lorg/h2/engine/Database;->allowLiterals:I

    .line 145
    sget v2, Lorg/h2/engine/Database;->initialPowerOffCount:I

    iput v2, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v2, 0x1

    .line 152
    iput-boolean v2, p0, Lorg/h2/engine/Database;->optimizeReuseResults:Z

    .line 155
    iput-boolean v2, p0, Lorg/h2/engine/Database;->referentialIntegrity:Z

    const-string v3, "REGULAR"

    .line 158
    invoke-static {v3}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    const v3, 0x186a0

    .line 160
    iput v3, p0, Lorg/h2/engine/Database;->maxOperationMemory:I

    .line 167
    invoke-static {}, Lorg/h2/util/TempFileDeleter;->getInstance()Lorg/h2/util/TempFileDeleter;

    move-result-object v3

    iput-object v3, p0, Lorg/h2/engine/Database;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    .line 174
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 182
    iput v3, p0, Lorg/h2/engine/Database;->defaultTableType:I

    const/16 v4, 0x64

    .line 193
    iput v4, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    .line 195
    sget-object v4, Lorg/h2/result/RowFactory;->DEFAULT:Lorg/h2/result/RowFactory;

    iput-object v4, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    .line 198
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getName()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getDbSettings()Lorg/h2/engine/DbSettings;

    move-result-object v5

    iput-object v5, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    .line 200
    iget-object v5, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget v5, v5, Lorg/h2/engine/DbSettings;->reconnectCheckDelay:I

    iput v5, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    const/4 v5, 0x0

    .line 201
    invoke-static {v5, v3}, Lorg/h2/value/CompareMode;->getInstance(Ljava/lang/String;I)Lorg/h2/value/CompareMode;

    move-result-object v6

    iput-object v6, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    .line 202
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->isPersistent()Z

    move-result v6

    iput-boolean v6, p0, Lorg/h2/engine/Database;->persistent:Z

    .line 203
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFilePasswordHash()[B

    move-result-object v6

    iput-object v6, p0, Lorg/h2/engine/Database;->filePasswordHash:[B

    .line 204
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getFileEncryptionKey()[B

    move-result-object v6

    iput-object v6, p0, Lorg/h2/engine/Database;->fileEncryptionKey:[B

    .line 205
    iput-object v4, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    .line 206
    invoke-direct {p0}, Lorg/h2/engine/Database;->parseDatabaseShortName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/Database;->databaseShortName:Ljava/lang/String;

    const/16 v4, 0x100

    .line 207
    iput v4, p0, Lorg/h2/engine/Database;->maxLengthInplaceLob:I

    .line 208
    iput-object p2, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    const-string p2, "FILE_LOCK"

    .line 209
    invoke-virtual {p1, p2, v5}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "ACCESS_MODE_DATA"

    const-string v6, "rw"

    .line 210
    invoke-virtual {p1, v4, v6}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/h2/util/StringUtils;->toLowerEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/h2/engine/Database;->accessModeData:Ljava/lang/String;

    const-string v4, "AUTO_SERVER"

    .line 212
    invoke-virtual {p1, v4, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lorg/h2/engine/Database;->autoServerMode:Z

    const-string v4, "AUTO_SERVER_PORT"

    .line 213
    invoke-virtual {p1, v4, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/h2/engine/Database;->autoServerPort:I

    const/high16 v4, 0x10000

    .line 214
    invoke-static {v4}, Lorg/h2/util/Utils;->scaleForAvailableMemory(I)I

    move-result v4

    const-string v6, "CACHE_SIZE"

    .line 216
    invoke-virtual {p1, v6, v4}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/h2/engine/Database;->cacheSize:I

    const-string v4, "PAGE_SIZE"

    const/16 v6, 0x1000

    .line 218
    invoke-virtual {p1, v4, v6}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/h2/engine/Database;->pageSize:I

    const-string v4, "r"

    .line 220
    iget-object v6, p0, Lorg/h2/engine/Database;->accessModeData:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 221
    iput-boolean v2, p0, Lorg/h2/engine/Database;->readOnly:Z

    .line 223
    :cond_0
    iget-object v4, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v4, v4, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v4, :cond_2

    if-nez p2, :cond_2

    .line 224
    iget-boolean p2, p0, Lorg/h2/engine/Database;->autoServerMode:Z

    if-eqz p2, :cond_1

    .line 225
    iput v2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x4

    .line 227
    iput p2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    goto :goto_0

    .line 230
    :cond_2
    invoke-static {p2}, Lorg/h2/store/FileLock;->getFileLockMethod(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    .line 232
    :goto_0
    iget-object p2, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean p2, p2, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz p2, :cond_4

    iget p2, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eq p2, v0, :cond_3

    goto :goto_1

    :cond_3
    const-string p1, "MV_STORE combined with FILE_LOCK=SERIALIZED"

    .line 233
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 236
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lorg/h2/engine/ConnectionInfo;->getURL()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/Database;->databaseURL:Ljava/lang/String;

    const-string p2, "DATABASE_EVENT_LISTENER"

    .line 237
    invoke-virtual {p1, p2, v5}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    const-string v0, "\'"

    .line 239
    invoke-static {p2, v2, v2, v0}, Lorg/h2/util/StringUtils;->trim(Ljava/lang/String;ZZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 240
    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->setEventListenerClass(Ljava/lang/String;)V

    :cond_5
    const-string p2, "MODE"

    .line 242
    invoke-virtual {p1, p2, v5}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 244
    invoke-static {p2}, Lorg/h2/engine/Mode;->getInstance(Ljava/lang/String;)Lorg/h2/engine/Mode;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    :cond_6
    const-string p2, "MVCC"

    .line 246
    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    invoke-virtual {p1, p2, v0}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/h2/engine/Database;->multiVersion:Z

    const-string p2, "LOG"

    .line 248
    invoke-virtual {p1, p2, v1}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lorg/h2/engine/Database;->logMode:I

    const-string p2, "JAVA_OBJECT_SERIALIZER"

    .line 250
    invoke-virtual {p1, p2, v5}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lorg/h2/engine/Database;->javaObjectSerializerName:Ljava/lang/String;

    const-string p2, "MULTI_THREADED"

    .line 252
    invoke-virtual {p1, p2, v3}, Lorg/h2/engine/ConnectionInfo;->getProperty(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    .line 254
    iget-object p2, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean p2, p2, Lorg/h2/engine/DbSettings;->dbCloseOnExit:Z

    const/16 v0, 0xa

    .line 256
    invoke-virtual {p1, v0, v2}, Lorg/h2/engine/ConnectionInfo;->getIntProperty(II)I

    move-result v0

    const/16 v1, 0x9

    .line 259
    invoke-virtual {p1, v1, v3}, Lorg/h2/engine/ConnectionInfo;->getIntProperty(II)I

    move-result v1

    const-string v2, "CACHE_TYPE"

    const-string v3, "LRU"

    .line 262
    invoke-virtual {p1, v2, v3}, Lorg/h2/engine/ConnectionInfo;->removeProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Database;->cacheType:Ljava/lang/String;

    .line 264
    invoke-direct {p0, v0, v1, p2}, Lorg/h2/engine/Database;->openDatabase(IIZ)V

    return-void
.end method

.method private declared-synchronized addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 3

    monitor-enter p0

    .line 862
    :try_start_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    if-lez v0, :cond_1

    .line 863
    iget-boolean v1, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v1, :cond_1

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_1

    .line 864
    iget-object v1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v1}, Lorg/h2/table/Table;->getTemplateRow()Lorg/h2/result/Row;

    move-result-object v1

    .line 865
    new-instance v2, Lorg/h2/engine/MetaRecord;

    invoke-direct {v2, p2}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/engine/DbObject;)V

    .line 866
    invoke-virtual {v2, v1}, Lorg/h2/engine/MetaRecord;->setRecord(Lorg/h2/result/SearchRow;)V

    .line 867
    iget-object p2, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {p2, v0}, Lorg/h2/util/BitField;->set(I)V

    .line 868
    sget-boolean p2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz p2, :cond_0

    .line 869
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->verifyMetaLocked(Lorg/h2/engine/Session;)V

    .line 871
    :cond_0
    iget-object p2, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {p2, p1, v1}, Lorg/h2/table/Table;->addRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 872
    invoke-virtual {p0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 875
    iget-object p2, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v1}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 878
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 861
    monitor-exit p0

    throw p1
.end method

.method private checkMetaFree(Lorg/h2/engine/Session;I)V
    .locals 2

    .line 1443
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 1444
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    .line 1445
    iget-object p2, p0, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    invoke-interface {p2, p1, v0, v0}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object p1

    .line 1446
    invoke-interface {p1}, Lorg/h2/index/Cursor;->next()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1447
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    :cond_0
    return-void
.end method

.method private declared-synchronized closeAllSessionsException(Lorg/h2/engine/Session;)V
    .locals 9

    monitor-enter p0

    .line 1190
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    new-array v0, v0, [Lorg/h2/engine/Session;

    .line 1191
    iget-object v1, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1192
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v4, p1, :cond_0

    .line 1198
    :try_start_1
    invoke-virtual {v4}, Lorg/h2/engine/Session;->rollback()V

    .line 1199
    invoke-virtual {v4}, Lorg/h2/engine/Session;->close()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    .line 1201
    :try_start_2
    iget-object v6, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v7, "disconnecting session #{0}"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4}, Lorg/h2/engine/Session;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v2

    invoke-virtual {v6, v5, v7, v8}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1205
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1189
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized closeFiles()V
    .locals 3

    monitor-enter p0

    .line 1430
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->closeImmediately()V

    .line 1433
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    .line 1434
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->close()V

    const/4 v0, 0x0

    .line 1435
    iput-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1438
    :try_start_1
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "close"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1440
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1429
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized closeOpenFilesAndUnlock(Z)V
    .locals 5

    monitor-enter p0

    .line 1352
    :try_start_0
    invoke-direct {p0}, Lorg/h2/engine/Database;->stopWriter()V

    .line 1353
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 1356
    :try_start_1
    iget-object p1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->checkpoint()V

    .line 1357
    iget-boolean p1, p0, Lorg/h2/engine/Database;->readOnly:Z

    if-nez p1, :cond_2

    .line 1358
    iget-object p1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {p1}, Lorg/h2/store/PageStore;->getPageStoreSession()Lorg/h2/engine/Session;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 1359
    iget-object p1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    iget v0, p0, Lorg/h2/engine/Database;->compactMode:I

    invoke-virtual {p1, v0}, Lorg/h2/store/PageStore;->compact(I)V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1372
    :try_start_2
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_0

    .line 1373
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1375
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "close"

    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1362
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    if-eqz v0, :cond_1

    .line 1363
    invoke-virtual {p1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const v1, 0x15ff2

    if-eq v0, v1, :cond_1

    const v1, 0xc418

    if-eq v0, v1, :cond_1

    const v1, 0x15faf

    if-eq v0, v1, :cond_1

    .line 1367
    invoke-virtual {p1}, Lorg/h2/message/DbException;->printStackTrace()V

    .line 1370
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "close"

    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 1379
    invoke-direct {p0, p1}, Lorg/h2/engine/Database;->reconnectModified(Z)Z

    .line 1380
    iget-object p1, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz p1, :cond_6

    .line 1381
    iget-object p1, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget p1, p1, Lorg/h2/engine/DbSettings;->maxCompactTime:I

    int-to-long v0, p1

    .line 1382
    iget p1, p0, Lorg/h2/engine/Database;->compactMode:I

    const/16 v2, 0x52

    const-wide v3, 0x7fffffffffffffffL

    if-ne p1, v2, :cond_3

    .line 1383
    iget-object p1, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    iget-object v2, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget v2, v2, Lorg/h2/engine/DbSettings;->maxCompactTime:I

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/h2/mvstore/db/MVTableEngine$Store;->compactFile(J)V

    goto :goto_1

    .line 1384
    :cond_3
    iget p1, p0, Lorg/h2/engine/Database;->compactMode:I

    const/16 v2, 0x54

    if-ne p1, v2, :cond_4

    goto :goto_2

    .line 1386
    :cond_4
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getSettings()Lorg/h2/engine/DbSettings;

    move-result-object p1

    iget-boolean p1, p1, Lorg/h2/engine/DbSettings;->defragAlways:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    move-wide v3, v0

    .line 1389
    :goto_2
    iget-object p1, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {p1, v3, v4}, Lorg/h2/mvstore/db/MVTableEngine$Store;->close(J)V

    .line 1391
    :cond_6
    invoke-direct {p0}, Lorg/h2/engine/Database;->closeFiles()V

    .line 1392
    iget-boolean p1, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-nez p1, :cond_7

    iget p1, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eqz p1, :cond_7

    iget p1, p0, Lorg/h2/engine/Database;->fileLockMethod:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    .line 1398
    monitor-exit p0

    return-void

    .line 1400
    :cond_7
    :try_start_3
    iget-boolean p1, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz p1, :cond_8

    .line 1401
    invoke-direct {p0}, Lorg/h2/engine/Database;->deleteOldTempFiles()V

    .line 1403
    :cond_8
    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 1404
    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->close()V

    .line 1405
    iput-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    .line 1407
    :cond_9
    iget-object p1, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_a

    .line 1408
    iget-object p1, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->close()V

    .line 1409
    iput-object v0, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    .line 1411
    :cond_a
    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-eqz p1, :cond_c

    .line 1412
    iget p1, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_b

    .line 1415
    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {p1}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object p1

    const-string v1, "changePending"

    invoke-virtual {p1, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_b

    .line 1417
    :try_start_4
    iget p1, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    int-to-double v1, p1

    const-wide v3, 0x3ff199999999999aL    # 1.1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int p1, v1

    int-to-long v1, p1

    :try_start_5
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1419
    :try_start_6
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "close"

    invoke-virtual {v1, p1, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1423
    :cond_b
    :goto_3
    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {p1}, Lorg/h2/store/FileLock;->unlock()V

    .line 1424
    iput-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1426
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1351
    monitor-exit p0

    throw p1
.end method

.method private deleteOldTempFiles()V
    .locals 3

    .line 1724
    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1725
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->newDirectoryStream(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ".temp.db"

    .line 1726
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1729
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->tryDelete(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static exists(Ljava/lang/String;)Z
    .locals 2

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".h2.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 532
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".mv.db"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private flushSequences()V
    .locals 2

    const/4 v0, 0x3

    .line 2596
    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 2597
    check-cast v1, Lorg/h2/schema/Sequence;

    .line 2598
    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->flushWithoutMargin()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getMap(I)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/h2/engine/DbObject;",
            ">;"
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    .line 986
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 983
    :pswitch_1
    iget-object p1, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    goto :goto_0

    .line 980
    :pswitch_2
    iget-object p1, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    goto :goto_0

    .line 977
    :pswitch_3
    iget-object p1, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    goto :goto_0

    .line 974
    :pswitch_4
    iget-object p1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    goto :goto_0

    .line 971
    :pswitch_5
    iget-object p1, p0, Lorg/h2/engine/Database;->rights:Ljava/util/HashMap;

    goto :goto_0

    .line 968
    :pswitch_6
    iget-object p1, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    goto :goto_0

    .line 965
    :pswitch_7
    iget-object p1, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    goto :goto_0

    .line 962
    :pswitch_8
    iget-object p1, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private initJavaObjectSerializer()V
    .locals 2

    .line 2815
    iget-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 2818
    :cond_0
    monitor-enter p0

    .line 2819
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    if-eqz v0, :cond_1

    .line 2820
    monitor-exit p0

    return-void

    .line 2822
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerName:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 2824
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2825
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 2828
    :try_start_1
    invoke-static {v0}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/JavaObjectSerializer;

    iput-object v0, p0, Lorg/h2/engine/Database;->javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2831
    :try_start_2
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 2835
    iput-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    .line 2836
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private initMetaTables()V
    .locals 6

    .line 846
    iget-boolean v0, p0, Lorg/h2/engine/Database;->metaTablesInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    monitor-enter v0

    .line 850
    :try_start_0
    iget-boolean v1, p0, Lorg/h2/engine/Database;->metaTablesInitialized:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    .line 851
    invoke-static {}, Lorg/h2/table/MetaTable;->getMetaTableTypeCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    .line 853
    new-instance v3, Lorg/h2/table/MetaTable;

    iget-object v4, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    rsub-int/lit8 v5, v1, -0x1

    invoke-direct {v3, v4, v5, v1}, Lorg/h2/table/MetaTable;-><init>(Lorg/h2/schema/Schema;II)V

    .line 854
    iget-object v4, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v4, v3}, Lorg/h2/schema/Schema;->add(Lorg/h2/schema/SchemaObject;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 856
    iput-boolean v1, p0, Lorg/h2/engine/Database;->metaTablesInitialized:Z

    .line 858
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized open(II)V
    .locals 21

    move-object/from16 v7, p0

    move/from16 v0, p1

    monitor-enter p0

    .line 593
    :try_start_0
    iget-boolean v1, v7, Lorg/h2/engine/Database;->persistent:Z

    const/16 v8, 0xc0

    const/4 v2, 0x2

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v1, :cond_12

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".data.db"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v3

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".h2.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 597
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".mv.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 598
    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v6

    .line 599
    invoke-static {v5}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v13

    if-eqz v3, :cond_1

    if-nez v6, :cond_1

    if-eqz v13, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x15fc0

    .line 601
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Old database: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - please convert the database "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "to a SQL script and re-create it."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    if-eqz v6, :cond_2

    .line 607
    invoke-static {v4}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 608
    iput-boolean v12, v7, Lorg/h2/engine/Database;->readOnly:Z

    :cond_2
    if-eqz v13, :cond_3

    .line 610
    invoke-static {v5}, Lorg/h2/store/fs/FileUtils;->canWrite(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 611
    iput-boolean v12, v7, Lorg/h2/engine/Database;->readOnly:Z

    :cond_3
    if-eqz v6, :cond_4

    if-nez v13, :cond_4

    .line 614
    iget-object v1, v7, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iput-boolean v11, v1, Lorg/h2/engine/DbSettings;->mvStore:Z

    .line 616
    :cond_4
    iget-boolean v1, v7, Lorg/h2/engine/Database;->readOnly:Z

    const/4 v3, 0x3

    if-eqz v1, :cond_6

    if-lt v0, v3, :cond_5

    .line 618
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "java.io.tmpdir"

    const-string v5, "."

    invoke-static {v4, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "h2_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    new-instance v4, Lorg/h2/message/TraceSystem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".trace.db"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    iput-object v4, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    goto :goto_1

    .line 623
    :cond_5
    new-instance v1, Lorg/h2/message/TraceSystem;

    invoke-direct {v1, v10}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    iput-object v1, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    goto :goto_1

    .line 626
    :cond_6
    new-instance v1, Lorg/h2/message/TraceSystem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".trace.db"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    iput-object v1, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    .line 629
    :goto_1
    iget-object v1, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v1, v0}, Lorg/h2/message/TraceSystem;->setLevelFile(I)V

    .line 630
    iget-object v0, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lorg/h2/message/TraceSystem;->setLevelSystemOut(I)V

    .line 631
    iget-object v0, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0, v2}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    .line 632
    iget-object v0, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "opening {0} (build {1})"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    aput-object v4, v2, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v12

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 633
    iget-boolean v0, v7, Lorg/h2/engine/Database;->autoServerMode:Z

    if-eqz v0, :cond_8

    .line 634
    iget-boolean v0, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v0, :cond_7

    iget v0, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eqz v0, :cond_7

    iget v0, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eq v0, v3, :cond_7

    iget v0, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eq v0, v9, :cond_7

    iget-boolean v0, v7, Lorg/h2/engine/Database;->persistent:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    const-string v0, "autoServerMode && (readOnly || fileLockMethod == NO || fileLockMethod == SERIALIZED || fileLockMethod == FS || inMemory)"

    .line 639
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 647
    :cond_8
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lock.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    iget-boolean v1, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-eqz v1, :cond_a

    .line 649
    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    const v1, 0x15fa4

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock file exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    .line 654
    :cond_a
    :goto_3
    iget-boolean v1, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v1, :cond_b

    iget v1, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eqz v1, :cond_b

    .line 655
    iget v1, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    if-eq v1, v9, :cond_b

    .line 656
    new-instance v1, Lorg/h2/store/FileLock;

    iget-object v2, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    const/16 v3, 0x3e8

    invoke-direct {v1, v2, v0, v3}, Lorg/h2/store/FileLock;-><init>(Lorg/h2/message/TraceSystem;Ljava/lang/String;I)V

    iput-object v1, v7, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 657
    iget-object v0, v7, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    iget v1, v7, Lorg/h2/engine/Database;->fileLockMethod:I

    invoke-virtual {v0, v1}, Lorg/h2/store/FileLock;->lock(I)V

    .line 658
    iget-boolean v0, v7, Lorg/h2/engine/Database;->autoServerMode:Z

    if-eqz v0, :cond_b

    .line 659
    iget-object v0, v7, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v0}, Lorg/h2/store/FileLock;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/h2/engine/Database;->startServer(Ljava/lang/String;)V

    .line 663
    :cond_b
    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    if-eqz v0, :cond_c

    .line 664
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->isReconnectNeeded()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_4

    .line 668
    :cond_c
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->isReconnectNeeded()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_5

    .line 674
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/h2/engine/Database;->deleteOldTempFiles()V

    .line 675
    iput-boolean v12, v7, Lorg/h2/engine/Database;->starting:Z

    .line 676
    sget-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_10

    .line 678
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_7

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 680
    :try_start_2
    invoke-virtual {v1}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v0

    const v2, 0x15ff1

    if-ne v0, v2, :cond_f

    .line 683
    iput-object v10, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 684
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->beforeWriting()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_6

    .line 689
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    goto :goto_7

    .line 681
    :cond_f
    throw v1

    .line 692
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    .line 694
    :goto_7
    iput-boolean v11, v7, Lorg/h2/engine/Database;->starting:Z

    .line 695
    iget-object v0, v7, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-nez v0, :cond_11

    .line 696
    iget v0, v7, Lorg/h2/engine/Database;->writeDelay:I

    invoke-static {v7, v0}, Lorg/h2/store/WriterThread;->create(Lorg/h2/engine/Database;I)Lorg/h2/store/WriterThread;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    goto :goto_8

    .line 698
    :cond_11
    iget v0, v7, Lorg/h2/engine/Database;->writeDelay:I

    invoke-virtual {v7, v0}, Lorg/h2/engine/Database;->setWriteDelay(I)V

    goto :goto_8

    .line 701
    :cond_12
    iget-boolean v0, v7, Lorg/h2/engine/Database;->autoServerMode:Z

    if-nez v0, :cond_1c

    .line 705
    new-instance v0, Lorg/h2/message/TraceSystem;

    invoke-direct {v0, v10}, Lorg/h2/message/TraceSystem;-><init>(Ljava/lang/String;)V

    iput-object v0, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    .line 706
    iget-object v0, v7, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0, v2}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    .line 707
    iget-object v0, v7, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v0, :cond_13

    .line 708
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getPageStore()Lorg/h2/store/PageStore;

    .line 711
    :cond_13
    :goto_8
    new-instance v0, Lorg/h2/engine/User;

    const-string v1, "DBA"

    invoke-direct {v0, v7, v11, v1, v12}, Lorg/h2/engine/User;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    iput-object v0, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    .line 712
    new-instance v0, Lorg/h2/schema/Schema;

    const/4 v3, 0x0

    const-string v4, "PUBLIC"

    iget-object v5, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    const/4 v6, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/schema/Schema;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V

    iput-object v0, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    .line 713
    new-instance v0, Lorg/h2/schema/Schema;

    const/4 v3, -0x1

    const-string v4, "INFORMATION_SCHEMA"

    iget-object v5, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    const/4 v6, 0x1

    move-object v1, v0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/h2/schema/Schema;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Lorg/h2/engine/User;Z)V

    iput-object v0, v7, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    .line 714
    iget-object v0, v7, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    iget-object v1, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    iget-object v0, v7, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    iget-object v1, v7, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    new-instance v0, Lorg/h2/engine/Role;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v7, v11, v1, v12}, Lorg/h2/engine/Role;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;Z)V

    iput-object v0, v7, Lorg/h2/engine/Database;->publicRole:Lorg/h2/engine/Role;

    .line 717
    iget-object v0, v7, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    const-string v1, "PUBLIC"

    iget-object v2, v7, Lorg/h2/engine/Database;->publicRole:Lorg/h2/engine/Role;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    iget-object v0, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v0, v12}, Lorg/h2/engine/User;->setAdmin(Z)V

    .line 719
    new-instance v0, Lorg/h2/engine/Session;

    iget-object v1, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    iget v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    add-int/2addr v2, v12

    iput v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    invoke-direct {v0, v7, v1, v2}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    iput-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    .line 720
    new-instance v0, Lorg/h2/engine/Session;

    iget-object v1, v7, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    iget v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    add-int/2addr v2, v12

    iput v2, v7, Lorg/h2/engine/Database;->nextSessionId:I

    invoke-direct {v0, v7, v1, v2}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    iput-object v0, v7, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    .line 721
    new-instance v0, Lorg/h2/command/ddl/CreateTableData;

    invoke-direct {v0}, Lorg/h2/command/ddl/CreateTableData;-><init>()V

    .line 722
    iget-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->columns:Ljava/util/ArrayList;

    .line 723
    new-instance v2, Lorg/h2/table/Column;

    const-string v3, "ID"

    invoke-direct {v2, v3, v9}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    .line 724
    invoke-virtual {v2, v11}, Lorg/h2/table/Column;->setNullable(Z)V

    .line 725
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    new-instance v3, Lorg/h2/table/Column;

    const-string v4, "HEAD"

    invoke-direct {v3, v4, v9}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 727
    new-instance v3, Lorg/h2/table/Column;

    const-string v4, "TYPE"

    invoke-direct {v3, v4, v9}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v3, Lorg/h2/table/Column;

    const-string v4, "SQL"

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5}, Lorg/h2/table/Column;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 730
    iget-object v1, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v1, :cond_14

    .line 731
    iget-object v1, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->isNew()Z

    move-result v1

    goto :goto_9

    :cond_14
    const/4 v1, 0x1

    :goto_9
    const-string v3, "SYS"

    .line 733
    iput-object v3, v0, Lorg/h2/command/ddl/CreateTableData;->tableName:Ljava/lang/String;

    .line 734
    iput v11, v0, Lorg/h2/command/ddl/CreateTableData;->id:I

    .line 735
    iput-boolean v11, v0, Lorg/h2/command/ddl/CreateTableData;->temporary:Z

    .line 736
    iget-boolean v3, v7, Lorg/h2/engine/Database;->persistent:Z

    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistData:Z

    .line 737
    iget-boolean v3, v7, Lorg/h2/engine/Database;->persistent:Z

    iput-boolean v3, v0, Lorg/h2/command/ddl/CreateTableData;->persistIndexes:Z

    .line 738
    iput-boolean v1, v0, Lorg/h2/command/ddl/CreateTableData;->create:Z

    .line 739
    iput-boolean v12, v0, Lorg/h2/command/ddl/CreateTableData;->isHidden:Z

    .line 740
    iget-object v1, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    iput-object v1, v0, Lorg/h2/command/ddl/CreateTableData;->session:Lorg/h2/engine/Session;

    .line 741
    iget-object v1, v7, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1, v0}, Lorg/h2/schema/Schema;->createTable(Lorg/h2/command/ddl/CreateTableData;)Lorg/h2/table/Table;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    .line 742
    new-array v0, v12, [Lorg/h2/table/Column;

    aput-object v2, v0, v11

    invoke-static {v0}, Lorg/h2/table/IndexColumn;->wrap([Lorg/h2/table/Column;)[Lorg/h2/table/IndexColumn;

    move-result-object v17

    .line 743
    iget-object v13, v7, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    iget-object v14, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const-string v15, "SYS_ID"

    const/16 v16, 0x0

    invoke-static {v11, v11}, Lorg/h2/index/IndexType;->createPrimaryKey(ZZ)Lorg/h2/index/IndexType;

    move-result-object v18

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v13 .. v20}, Lorg/h2/table/Table;->addIndex(Lorg/h2/engine/Session;Ljava/lang/String;I[Lorg/h2/table/IndexColumn;Lorg/h2/index/IndexType;ZLjava/lang/String;)Lorg/h2/index/Index;

    move-result-object v0

    iput-object v0, v7, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    .line 746
    iget-object v0, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v0, v11}, Lorg/h2/util/BitField;->set(I)V

    .line 747
    iput-boolean v12, v7, Lorg/h2/engine/Database;->starting:Z

    .line 748
    iget-object v0, v7, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    iget-object v1, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-interface {v0, v1, v10, v10}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 749
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v1

    .line 750
    :goto_a
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 751
    new-instance v2, Lorg/h2/engine/MetaRecord;

    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/h2/engine/MetaRecord;-><init>(Lorg/h2/result/SearchRow;)V

    .line 752
    iget-object v3, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v2}, Lorg/h2/engine/MetaRecord;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/h2/util/BitField;->set(I)V

    .line 753
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 755
    :cond_15
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 756
    iget-object v2, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/engine/MetaRecord;

    .line 758
    iget-object v3, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    iget-object v4, v7, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-virtual {v1, v7, v3, v4}, Lorg/h2/engine/MetaRecord;->execute(Lorg/h2/engine/Database;Lorg/h2/engine/Session;Lorg/h2/api/DatabaseEventListener;)V

    goto :goto_b

    .line 760
    :cond_16
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 761
    :try_start_4
    iget-object v0, v7, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_17

    .line 762
    iget-object v0, v7, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->initTransactions()V

    .line 763
    iget-object v0, v7, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    iget-object v1, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v0, v1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->removeTemporaryMaps(Lorg/h2/util/BitField;)V

    .line 765
    :cond_17
    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-direct {v7, v0}, Lorg/h2/engine/Database;->recompileInvalidViews(Lorg/h2/engine/Session;)V

    .line 766
    iput-boolean v11, v7, Lorg/h2/engine/Database;->starting:Z

    .line 767
    iget-boolean v0, v7, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v0, :cond_1a

    const/16 v0, 0x22

    .line 769
    invoke-static {v0}, Lorg/h2/command/dml/SetTypes;->getTypeName(I)Ljava/lang/String;

    move-result-object v0

    .line 770
    iget-object v1, v7, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    .line 771
    new-instance v1, Lorg/h2/engine/Setting;

    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->allocateObjectId()I

    move-result v2

    invoke-direct {v1, v7, v2, v0}, Lorg/h2/engine/Setting;-><init>(Lorg/h2/engine/Database;ILjava/lang/String;)V

    .line 772
    invoke-virtual {v1, v8}, Lorg/h2/engine/Setting;->setIntValue(I)V

    .line 773
    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v7, v0}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 774
    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v7, v0, v1}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 777
    :cond_18
    iget-object v0, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1a

    .line 778
    iget-object v0, v7, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getObjectIds()Lorg/h2/util/BitField;

    move-result-object v0

    .line 779
    invoke-virtual {v0}, Lorg/h2/util/BitField;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1a

    .line 780
    invoke-virtual {v0, v2}, Lorg/h2/util/BitField;->get(I)Z

    move-result v3

    if-eqz v3, :cond_19

    iget-object v3, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v3, v2}, Lorg/h2/util/BitField;->get(I)Z

    move-result v3

    if-nez v3, :cond_19

    .line 781
    iget-object v3, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused object id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    .line 782
    iget-object v3, v7, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v3, v2}, Lorg/h2/util/BitField;->set(I)V

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 787
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/h2/store/LobStorageInterface;->init()V

    .line 788
    iget-object v0, v7, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v0, v12}, Lorg/h2/engine/Session;->commit(Z)V

    .line 790
    iget-object v0, v7, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "opened {0}"

    new-array v2, v12, [Ljava/lang/Object;

    iget-object v3, v7, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    aput-object v3, v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    iget v0, v7, Lorg/h2/engine/Database;->checkpointAllowed:I

    if-lez v0, :cond_1b

    .line 792
    invoke-virtual/range {p0 .. p0}, Lorg/h2/engine/Database;->afterWriting()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 794
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 760
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :cond_1c
    const-string v0, "autoServerMode && inMemory"

    .line 702
    invoke-static {v0}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 592
    monitor-exit p0

    throw v0
.end method

.method private openDatabase(IIZ)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 270
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->open(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_0

    .line 273
    :try_start_1
    new-instance p1, Lorg/h2/engine/DatabaseCloser;

    invoke-direct {p1, p0, v1, v0}, Lorg/h2/engine/DatabaseCloser;-><init>(Lorg/h2/engine/Database;IZ)V

    iput-object p1, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    .line 274
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iget-object p2, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    return-void

    :catch_1
    move-exception p1

    .line 286
    instance-of p2, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    .line 289
    :cond_1
    iget-object p2, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    if-eqz p2, :cond_3

    .line 290
    instance-of p2, p1, Ljava/sql/SQLException;

    if-eqz p2, :cond_2

    .line 291
    move-object p2, p1

    check-cast p2, Ljava/sql/SQLException;

    .line 292
    invoke-virtual {p2}, Ljava/sql/SQLException;->getErrorCode()I

    move-result p2

    const p3, 0x15fa4

    if-eq p2, p3, :cond_2

    .line 295
    iget-object p2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    new-array p3, v0, [Ljava/lang/Object;

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    aput-object v0, p3, v1

    const-string v0, "opening {0}"

    invoke-virtual {p2, p1, v0, p3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_2
    iget-object p2, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {p2}, Lorg/h2/message/TraceSystem;->close()V

    .line 300
    :cond_3
    invoke-direct {p0, v1}, Lorg/h2/engine/Database;->closeOpenFilesAndUnlock(Z)V

    .line 301
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private parseDatabaseShortName()Ljava/lang/String;
    .locals 3

    .line 576
    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    const-string v1, ":"

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    if-eqz v0, :cond_1

    .line 581
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "/\\:,;"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 583
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 586
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v0, "unnamed"

    .line 589
    :cond_3
    iget-object v1, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-eqz v1, :cond_4

    invoke-static {v0}, Lorg/h2/util/StringUtils;->toUpperEnglish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private recompileInvalidViews(Lorg/h2/engine/Session;)V
    .locals 6

    :cond_0
    const/4 v0, 0x0

    .line 830
    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    .line 831
    instance-of v4, v3, Lorg/h2/table/TableView;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 832
    check-cast v3, Lorg/h2/table/TableView;

    .line 833
    invoke-virtual {v3}, Lorg/h2/table/TableView;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 834
    invoke-virtual {v3, p1, v5, v0}, Lorg/h2/table/TableView;->recompile(Lorg/h2/engine/Session;ZZ)Lorg/h2/message/DbException;

    .line 835
    invoke-virtual {v3}, Lorg/h2/table/TableView;->isInvalid()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    .line 842
    invoke-virtual {p1}, Lorg/h2/engine/Session;->getDatabase()Lorg/h2/engine/Database;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/table/TableView;->clearIndexCaches(Lorg/h2/engine/Database;)V

    return-void
.end method

.method private declared-synchronized reconnectModified(Z)Z
    .locals 9

    monitor-enter p0

    .line 394
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    const/4 v1, 0x1

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 399
    :try_start_1
    iget-boolean v2, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    const/4 v3, 0x0

    if-ne p1, v2, :cond_4

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 401
    iget-wide v6, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    if-eqz p1, :cond_2

    .line 403
    iget-object v2, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v3}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 405
    :goto_0
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v6, "logPos"

    invoke-virtual {v2, v6, v3}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v2}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    .line 408
    :cond_2
    iget v2, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    int-to-long v2, v2

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 410
    :cond_3
    monitor-exit p0

    return v1

    .line 412
    :cond_4
    :try_start_2
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v2}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v2

    const-wide v4, 0x3ff199999999999aL    # 1.1

    if-eqz p1, :cond_6

    const-string v6, "changePending"

    .line 414
    invoke-virtual {v2, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v6, :cond_5

    .line 415
    monitor-exit p0

    return v0

    .line 417
    :cond_5
    :try_start_3
    iget-object v6, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v7, "wait before writing"

    invoke-virtual {v6, v7}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 418
    iget v6, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-int v6, v6

    int-to-long v6, v6

    :try_start_4
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 419
    iget-object v6, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v6}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v6

    .line 420
    invoke-virtual {v6, v2}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v2, :cond_6

    .line 422
    monitor-exit p0

    return v0

    .line 425
    :cond_6
    :try_start_5
    iget-object v2, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-nez v2, :cond_7

    move-object v2, v3

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v6}, Lorg/h2/store/PageStore;->getWriteCountTotal()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 427
    :goto_1
    iget-object v6, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v7, "logPos"

    invoke-virtual {v6, v7, v2}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_8

    .line 429
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v3, "changePending"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "true-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 431
    :cond_8
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v6, "changePending"

    invoke-virtual {v2, v6, v3}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v6, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    mul-int/lit8 v6, v6, 0x2

    int-to-long v6, v6

    add-long/2addr v2, v6

    iput-wide v2, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    .line 437
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v2}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    move-result-object v2

    if-eqz p1, :cond_9

    .line 439
    iget-object v3, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v6, "wait before writing again"

    invoke-virtual {v3, v6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 440
    iget v3, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v4

    double-to-int v3, v6

    int-to-long v3, v3

    :try_start_6
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 441
    iget-object v3, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v3}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v3

    .line 442
    invoke-virtual {v3, v2}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v3, :cond_a

    .line 444
    monitor-exit p0

    return v0

    :cond_9
    const-wide/16 v3, 0x1

    .line 447
    :try_start_7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 449
    :cond_a
    iput-object v2, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    .line 450
    iput-boolean p1, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget v4, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 453
    monitor-exit p0

    return v1

    :catch_0
    move-exception v2

    .line 455
    :try_start_8
    iget-object v3, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v4, "pending {0}"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-virtual {v3, v2, v4, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 456
    monitor-exit p0

    return v0

    .line 396
    :cond_b
    :goto_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 393
    monitor-exit p0

    throw p1
.end method

.method private removeOrphanedLobs()V
    .locals 4

    .line 1321
    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    if-nez v0, :cond_0

    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    iget-object v1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const-string v2, "LOB_DATA"

    invoke-virtual {v0, v1, v2}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1326
    :goto_0
    iget-object v3, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    or-int/2addr v0, v1

    if-nez v0, :cond_3

    return-void

    .line 1331
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getLobStorage()Lorg/h2/store/LobStorageInterface;

    .line 1332
    iget-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lorg/h2/store/LobStorageInterface;->removeAllForTable(I)V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1335
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "close"

    invoke-virtual {v1, v0, v2}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static setInitialPowerOffCount(I)V
    .locals 0

    .line 325
    sput p0, Lorg/h2/engine/Database;->initialPowerOffCount:I

    return-void
.end method

.method private startServer(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x7

    .line 798
    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-tcpPort"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lorg/h2/engine/Database;->autoServerPort:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-tcpAllowOthers"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-tcpDaemon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "-key"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p1, v0, v1

    const/4 p1, 0x6

    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    aput-object v1, v0, p1

    invoke-static {v0}, Lorg/h2/tools/Server;->createTcpServer([Ljava/lang/String;)Lorg/h2/tools/Server;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    .line 803
    iget-object p1, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    invoke-virtual {p1}, Lorg/h2/tools/Server;->start()Lorg/h2/tools/Server;
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    invoke-static {}, Lorg/h2/util/NetUtils;->getLocalAddress()Ljava/lang/String;

    move-result-object p1

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    invoke-virtual {v1}, Lorg/h2/tools/Server;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    iget-object v1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v2, "server"

    invoke-virtual {v1, v2, v0}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    invoke-static {p1}, Lorg/h2/util/NetUtils;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 811
    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v1, "hostName"

    invoke-virtual {v0, v1, p1}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    iget-object p1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {p1}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    return-void

    :catch_0
    move-exception p1

    .line 805
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method private stopServer()V
    .locals 2

    .line 816
    iget-object v0, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    const/4 v1, 0x0

    .line 821
    iput-object v1, p0, Lorg/h2/engine/Database;->server:Lorg/h2/tools/Server;

    .line 822
    invoke-virtual {v0}, Lorg/h2/tools/Server;->stop()V

    :cond_0
    return-void
.end method

.method private stopWriter()V
    .locals 1

    .line 1340
    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    invoke-virtual {v0}, Lorg/h2/store/WriterThread;->stopThread()V

    const/4 v0, 0x0

    .line 1342
    iput-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    :cond_0
    return-void
.end method

.method private throwLastBackgroundException()V
    .locals 5

    .line 2019
    iget-object v0, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    if-eqz v0, :cond_1

    .line 2023
    iget-object v0, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    const/4 v1, 0x0

    .line 2024
    iput-object v1, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2027
    :cond_0
    invoke-virtual {v0}, Lorg/h2/message/DbException;->getErrorCode()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lorg/h2/message/DbException;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized updateMetaAndFirstLevelChildren(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 2

    monitor-enter p0

    .line 1658
    :try_start_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getChildren()Ljava/util/ArrayList;

    move-result-object v0

    .line 1659
    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1661
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 1663
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    if-eqz v0, :cond_2

    .line 1666
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/engine/DbObject;

    .line 1667
    invoke-interface {v0}, Lorg/h2/engine/DbObject;->getCreateSQL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1668
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1672
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1657
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 4

    monitor-enter p0

    .line 1016
    :try_start_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    if-lez v0, :cond_0

    .line 1017
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v0, :cond_0

    .line 1018
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    .line 1020
    :cond_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/h2/engine/Database;->getMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 1021
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 1022
    move-object v1, p2

    check-cast v1, Lorg/h2/engine/User;

    .line 1023
    invoke-virtual {v1}, Lorg/h2/engine/User;->isAdmin()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v2}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DBA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1024
    iget-object v2, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v1}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/h2/engine/User;->rename(Ljava/lang/String;)V

    .line 1027
    :cond_1
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1028
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v2, "object already exists"

    .line 1029
    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 1031
    :cond_2
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 1032
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 1033
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1015
    monitor-exit p0

    throw p1
.end method

.method public addSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V
    .locals 1

    .line 998
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getId()I

    move-result v0

    if-lez v0, :cond_0

    .line 999
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v0, :cond_0

    .line 1000
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    .line 1002
    :cond_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 1003
    monitor-enter p0

    .line 1004
    :try_start_0
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/h2/schema/Schema;->add(Lorg/h2/schema/SchemaObject;)V

    .line 1005
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 1006
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public afterWriting()V
    .locals 2

    .line 2655
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 2658
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2659
    :try_start_0
    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    .line 2660
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2661
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    if-ltz v0, :cond_1

    goto :goto_0

    .line 2662
    :cond_1
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 2660
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized allocateObjectId()I
    .locals 2

    monitor-enter p0

    .line 1457
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/util/BitField;->nextClearBit(I)I

    move-result v0

    .line 1458
    iget-object v1, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {v1, v0}, Lorg/h2/util/BitField;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1459
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 1456
    monitor-exit p0

    throw v0
.end method

.method public areEqual(Lorg/h2/value/Value;Lorg/h2/value/Value;)Z
    .locals 1

    .line 353
    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public beforeWriting()Z
    .locals 6

    .line 2626
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 2629
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->checkpointRunning:Z

    if-eqz v0, :cond_1

    .line 2631
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double v2, v2, v4

    double-to-int v0, v2

    add-int/lit8 v0, v0, 0xa

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 2636
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2637
    :try_start_1
    invoke-direct {p0, v1}, Lorg/h2/engine/Database;->reconnectModified(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2638
    iget v2, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    .line 2639
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_3

    iget v2, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    const/16 v3, 0x14

    if-gt v2, v3, :cond_2

    goto :goto_1

    .line 2640
    :cond_2
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 2642
    :cond_3
    :goto_1
    monitor-exit v0

    return v1

    .line 2644
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2646
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    const/4 v0, 0x0

    .line 2647
    iput-object v0, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 2644
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public checkPowerOff()V
    .locals 3

    .line 481
    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    if-nez v0, :cond_0

    return-void

    .line 484
    :cond_0
    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 485
    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    return-void

    .line 488
    :cond_1
    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    .line 490
    :try_start_0
    iput v1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    .line 491
    invoke-direct {p0}, Lorg/h2/engine/Database;->stopWriter()V

    .line 492
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->closeImmediately()V

    .line 495
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 497
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->close()V
    :try_end_1
    .catch Lorg/h2/message/DbException; {:try_start_1 .. :try_end_1} :catch_0

    .line 501
    :catch_0
    :try_start_2
    iput-object v1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 503
    :cond_3
    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-eqz v0, :cond_5

    .line 504
    invoke-direct {p0}, Lorg/h2/engine/Database;->stopServer()V

    .line 505
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 507
    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v0}, Lorg/h2/store/FileLock;->unlock()V

    .line 509
    :cond_4
    iput-object v1, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    .line 511
    :cond_5
    iget-object v0, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    if-eqz v0, :cond_6

    .line 512
    iget-object v0, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0}, Lorg/h2/message/TraceSystem;->close()V
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 515
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 518
    :cond_6
    :goto_0
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/h2/engine/Engine;->close(Ljava/lang/String;)V

    const v0, 0x15ff2

    .line 519
    invoke-static {v0}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkWritingAllowed()V
    .locals 3

    .line 1923
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    const v1, 0x15ff1

    if-nez v0, :cond_2

    .line 1926
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1927
    iget-boolean v0, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1928
    :cond_0
    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void

    .line 1924
    :cond_2
    invoke-static {v1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public checkpoint()V
    .locals 1

    .line 2606
    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz v0, :cond_1

    .line 2607
    monitor-enter p0

    .line 2608
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    .line 2609
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->checkpoint()V

    .line 2611
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2612
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    .line 2613
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->flush()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2611
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2616
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getTempFileDeleter()Lorg/h2/util/TempFileDeleter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/h2/util/TempFileDeleter;->deleteUnused()V

    return-void
.end method

.method public checkpointIfRequired()V
    .locals 6

    .line 2563
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2567
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2568
    iget-wide v2, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    iget v4, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_3

    .line 2569
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    if-gez v0, :cond_1

    .line 2570
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    .line 2572
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2573
    :try_start_0
    iget v1, p0, Lorg/h2/engine/Database;->checkpointAllowed:I

    if-lez v1, :cond_2

    .line 2574
    monitor-exit v0

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 2576
    iput-boolean v1, p0, Lorg/h2/engine/Database;->checkpointRunning:Z

    .line 2577
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2578
    monitor-enter p0

    .line 2579
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "checkpoint start"

    invoke-virtual {v0, v1}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 2580
    invoke-direct {p0}, Lorg/h2/engine/Database;->flushSequences()V

    .line 2581
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkpoint()V

    const/4 v0, 0x0

    .line 2582
    invoke-direct {p0, v0}, Lorg/h2/engine/Database;->reconnectModified(Z)Z

    .line 2583
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "checkpoint end"

    invoke-virtual {v1, v2}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 2584
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2585
    iget-object v1, p0, Lorg/h2/engine/Database;->reconnectSync:Ljava/lang/Object;

    monitor-enter v1

    .line 2586
    :try_start_2
    iput-boolean v0, p0, Lorg/h2/engine/Database;->checkpointRunning:Z

    .line 2587
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    .line 2584
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 2577
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method declared-synchronized close(Z)V
    .locals 7

    monitor-enter p0

    .line 1214
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1215
    monitor-exit p0

    return-void

    .line 1217
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/h2/engine/Database;->throwLastBackgroundException()V

    .line 1218
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1222
    :try_start_2
    invoke-direct {p0, v2}, Lorg/h2/engine/Database;->closeOpenFilesAndUnlock(Z)V
    :try_end_2
    .catch Lorg/h2/message/DbException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1226
    :catch_0
    :try_start_3
    iget-object p1, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {p1}, Lorg/h2/message/TraceSystem;->close()V

    .line 1227
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object p1

    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Engine;->close(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1228
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 1230
    :try_start_4
    iput-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    .line 1231
    invoke-direct {p0}, Lorg/h2/engine/Database;->stopServer()V

    .line 1232
    iget-object v3, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v4, 0x0

    if-lez v3, :cond_3

    if-nez p1, :cond_2

    .line 1234
    monitor-exit p0

    return-void

    .line 1236
    :cond_2
    :try_start_5
    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "closing {0} from shutdown hook"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v5}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    invoke-direct {p0, v4}, Lorg/h2/engine/Database;->closeAllSessionsException(Lorg/h2/engine/Session;)V

    .line 1239
    :cond_3
    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "closing {0}"

    new-array v5, v0, [Ljava/lang/Object;

    iget-object v6, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-virtual {p1, v3, v5}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    iget-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz p1, :cond_5

    .line 1242
    iput-boolean v2, p0, Lorg/h2/engine/Database;->closing:Z

    .line 1243
    iget-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    .line 1245
    iput-object v4, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    .line 1246
    invoke-interface {p1}, Lorg/h2/api/DatabaseEventListener;->closingDatabase()V

    .line 1247
    iget-object p1, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-lez p1, :cond_4

    .line 1249
    monitor-exit p0

    return-void

    .line 1251
    :cond_4
    :try_start_6
    iput-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    .line 1253
    :cond_5
    invoke-direct {p0}, Lorg/h2/engine/Database;->removeOrphanedLobs()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1255
    :try_start_7
    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_a

    .line 1256
    iget p1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v3, -0x1

    if-eq p1, v3, :cond_8

    .line 1257
    invoke-virtual {p0, v2}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/h2/table/Table;

    .line 1258
    invoke-virtual {v5}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1259
    iget-object v6, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/table/Table;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    goto :goto_0

    .line 1261
    :cond_6
    iget-object v6, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {v5, v6}, Lorg/h2/table/Table;->close(Lorg/h2/engine/Session;)V

    goto :goto_0

    .line 1264
    :cond_7
    invoke-virtual {p0, v1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 1266
    check-cast v1, Lorg/h2/schema/Sequence;

    .line 1267
    invoke-virtual {v1}, Lorg/h2/schema/Sequence;->close()V

    goto :goto_1

    :cond_8
    const/4 p1, 0x4

    .line 1270
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->getAllSchemaObjects(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/schema/SchemaObject;

    .line 1272
    check-cast v1, Lorg/h2/schema/TriggerObject;
    :try_end_7
    .catch Lorg/h2/message/DbException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1274
    :try_start_8
    invoke-virtual {v1}, Lorg/h2/schema/TriggerObject;->close()V
    :try_end_8
    .catch Ljava/sql/SQLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/h2/message/DbException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    .line 1276
    :try_start_9
    iget-object v5, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v6, "close"

    invoke-virtual {v5, v1, v6}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_2

    .line 1279
    :cond_9
    iget p1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    if-eq p1, v3, :cond_a

    .line 1280
    iget-object p1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    iget-object v1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, v1}, Lorg/h2/table/Table;->close(Lorg/h2/engine/Session;)V

    .line 1281
    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->commit(Z)V
    :try_end_9
    .catch Lorg/h2/message/DbException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1285
    :try_start_a
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "close"

    invoke-virtual {v1, p1, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1287
    :cond_a
    :goto_3
    iget-object p1, p0, Lorg/h2/engine/Database;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    invoke-virtual {p1}, Lorg/h2/util/TempFileDeleter;->deleteAll()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1289
    :try_start_b
    invoke-direct {p0, v0}, Lorg/h2/engine/Database;->closeOpenFilesAndUnlock(Z)V
    :try_end_b
    .catch Lorg/h2/message/DbException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_4

    :catch_3
    move-exception p1

    .line 1291
    :try_start_c
    iget-object v1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "close"

    invoke-virtual {v1, p1, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1293
    :goto_4
    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v1, "closed"

    invoke-virtual {p1, v1}, Lorg/h2/message/Trace;->info(Ljava/lang/String;)V

    .line 1294
    iget-object p1, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {p1}, Lorg/h2/message/TraceSystem;->close()V

    .line 1295
    iget-object p1, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    if-eqz p1, :cond_b

    .line 1296
    iget-object p1, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {p1}, Lorg/h2/engine/DatabaseCloser;->reset()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1298
    :try_start_d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {p1, v1}, Ljava/lang/Runtime;->removeShutdownHook(Ljava/lang/Thread;)Z
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1304
    :catch_4
    :try_start_e
    iput-object v4, p0, Lorg/h2/engine/Database;->closeOnExit:Lorg/h2/engine/DatabaseCloser;

    .line 1306
    :cond_b
    invoke-static {}, Lorg/h2/engine/Engine;->getInstance()Lorg/h2/engine/Engine;

    move-result-object p1

    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/h2/engine/Engine;->close(Ljava/lang/String;)V

    .line 1307
    iget-boolean p1, p0, Lorg/h2/engine/Database;->deleteFilesOnDisconnect:Z

    if-eqz p1, :cond_c

    iget-boolean p1, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz p1, :cond_c

    .line 1308
    iput-boolean v2, p0, Lorg/h2/engine/Database;->deleteFilesOnDisconnect:Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 1310
    :try_start_f
    iget-object p1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->getParent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1311
    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v1}, Lorg/h2/store/fs/FileUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1312
    invoke-static {p1, v1, v0}, Lorg/h2/tools/DeleteDbFiles;->execute(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 1317
    :catch_5
    :cond_c
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1213
    monitor-exit p0

    throw p1
.end method

.method declared-synchronized commit(Lorg/h2/engine/Session;)V
    .locals 1

    monitor-enter p0

    .line 2008
    :try_start_0
    invoke-direct {p0}, Lorg/h2/engine/Database;->throwLastBackgroundException()V

    .line 2009
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2010
    monitor-exit p0

    return-void

    .line 2012
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    .line 2013
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->commit(Lorg/h2/engine/Session;)V

    .line 2015
    :cond_1
    invoke-virtual {p1}, Lorg/h2/engine/Session;->setAllCommitted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2016
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2007
    monitor-exit p0

    throw p1
.end method

.method public compare(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 1

    .line 366
    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTo(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/Value;)I
    .locals 1

    .line 379
    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    invoke-virtual {p1, p2, v0}, Lorg/h2/value/Value;->compareTypeSafe(Lorg/h2/value/Value;Lorg/h2/value/CompareMode;)I

    move-result p1

    return p1
.end method

.method public createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;
    .locals 1

    .line 313
    iget-object v0, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    invoke-virtual {v0, p1, p2}, Lorg/h2/result/RowFactory;->createRow([Lorg/h2/value/Value;I)Lorg/h2/result/Row;

    move-result-object p1

    return-object p1
.end method

.method declared-synchronized createSession(Lorg/h2/engine/User;)Lorg/h2/engine/Session;
    .locals 7

    monitor-enter p0

    .line 1139
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1140
    monitor-exit p0

    return-object v1

    .line 1142
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    if-nez v0, :cond_2

    .line 1145
    new-instance v0, Lorg/h2/engine/Session;

    iget v2, p0, Lorg/h2/engine/Database;->nextSessionId:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lorg/h2/engine/Database;->nextSessionId:I

    invoke-direct {v0, p0, p1, v2}, Lorg/h2/engine/Session;-><init>(Lorg/h2/engine/Database;Lorg/h2/engine/User;I)V

    .line 1146
    iget-object p1, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1147
    iget-object p1, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v2, "connecting session #{0} to {1}"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/h2/engine/Session;->getId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    iget-object v5, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    aput-object v5, v4, v3

    invoke-virtual {p1, v2, v4}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    iget-object p1, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    if-eqz p1, :cond_1

    .line 1149
    iget-object p1, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {p1}, Lorg/h2/engine/DatabaseCloser;->reset()V

    .line 1150
    iput-object v1, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    const p1, 0x16017

    .line 1143
    :try_start_2
    invoke-static {p1}, Lorg/h2/message/DbException;->get(I)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 1138
    monitor-exit p0

    throw p1
.end method

.method public createTempFile()Ljava/lang/String;
    .locals 4

    .line 1711
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    .line 1712
    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    .line 1713
    iget-boolean v2, p0, Lorg/h2/engine/Database;->persistent:Z

    if-nez v2, :cond_0

    .line 1714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "memFS:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, ".temp.db"

    const/4 v3, 0x1

    .line 1716
    invoke-static {v1, v2, v3, v0}, Lorg/h2/store/fs/FileUtils;->createTempFile(Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 1719
    iget-object v1, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/h2/message/DbException;->convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object v0

    throw v0
.end method

.method public equalsIdentifiers(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, p2, :cond_2

    .line 2785
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2788
    :cond_0
    iget-object v1, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v1, v1, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-nez v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method public exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V
    .locals 1

    .line 2113
    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz v0, :cond_0

    .line 2115
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-interface {v0, p1, p2}, Lorg/h2/api/DatabaseEventListener;->exceptionThrown(Ljava/sql/SQLException;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public findAggregate(Ljava/lang/String;)Lorg/h2/engine/UserAggregate;
    .locals 1

    .line 1043
    iget-object v0, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/UserAggregate;

    return-object p1
.end method

.method public findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;
    .locals 2

    .line 1054
    invoke-interface {p1}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1057
    :cond_0
    invoke-static {p1}, Lorg/h2/engine/Comment;->getKey(Lorg/h2/engine/DbObject;)Ljava/lang/String;

    move-result-object p1

    .line 1058
    iget-object v0, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Comment;

    return-object p1
.end method

.method public findRole(Ljava/lang/String;)Lorg/h2/engine/Role;
    .locals 1

    .line 1068
    iget-object v0, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Role;

    return-object p1
.end method

.method public findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 1

    .line 1078
    iget-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/schema/Schema;

    .line 1079
    iget-object v0, p0, Lorg/h2/engine/Database;->infoSchema:Lorg/h2/schema/Schema;

    if-ne p1, v0, :cond_0

    .line 1080
    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    :cond_0
    return-object p1
.end method

.method public findSetting(Ljava/lang/String;)Lorg/h2/engine/Setting;
    .locals 1

    .line 1092
    iget-object v0, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/Setting;

    return-object p1
.end method

.method public findUser(Ljava/lang/String;)Lorg/h2/engine/User;
    .locals 1

    .line 1102
    iget-object v0, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/User;

    return-object p1
.end method

.method public findUserDataType(Ljava/lang/String;)Lorg/h2/engine/UserDataType;
    .locals 1

    .line 1112
    iget-object v0, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/h2/engine/UserDataType;

    return-object p1
.end method

.method public declared-synchronized flush()V
    .locals 2

    monitor-enter p0

    .line 2046
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2047
    monitor-exit p0

    return-void

    .line 2049
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    .line 2050
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->flushLog()V

    .line 2052
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 2054
    :try_start_2
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->flush()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2056
    :try_start_3
    invoke-static {v0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object v1

    iput-object v1, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    .line 2057
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2060
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 2045
    monitor-exit p0

    throw v0
.end method

.method public getAllAggregates()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/UserAggregate;",
            ">;"
        }
    .end annotation

    .line 1463
    iget-object v0, p0, Lorg/h2/engine/Database;->aggregates:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllComments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Comment;",
            ">;"
        }
    .end annotation

    .line 1467
    iget-object v0, p0, Lorg/h2/engine/Database;->comments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllRights()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Right;",
            ">;"
        }
    .end annotation

    .line 1478
    iget-object v0, p0, Lorg/h2/engine/Database;->rights:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllRoles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Role;",
            ">;"
        }
    .end annotation

    .line 1482
    iget-object v0, p0, Lorg/h2/engine/Database;->roles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllSchemaObjects()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    .line 1491
    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    .line 1492
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1493
    iget-object v1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    .line 1494
    invoke-virtual {v2}, Lorg/h2/schema/Schema;->getAll()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAllSchemaObjects(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/SchemaObject;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1507
    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    .line 1509
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1510
    iget-object v1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    .line 1511
    invoke-virtual {v2, p1}, Lorg/h2/schema/Schema;->getAll(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getAllSchemas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/schema/Schema;",
            ">;"
        }
    .end annotation

    .line 1553
    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    .line 1554
    iget-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllSettings()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/Setting;",
            ">;"
        }
    .end annotation

    .line 1558
    iget-object v0, p0, Lorg/h2/engine/Database;->settings:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllTablesAndViews(Z)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1526
    invoke-direct {p0}, Lorg/h2/engine/Database;->initMetaTables()V

    .line 1528
    :cond_0
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object p1

    .line 1529
    iget-object v0, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

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

    check-cast v1, Lorg/h2/schema/Schema;

    .line 1530
    invoke-virtual {v1}, Lorg/h2/schema/Schema;->getAllTablesAndViews()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getAllUserDataTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/UserDataType;",
            ">;"
        }
    .end annotation

    .line 1562
    iget-object v0, p0, Lorg/h2/engine/Database;->userDataTypes:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllUsers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/engine/User;",
            ">;"
        }
    .end annotation

    .line 1566
    iget-object v0, p0, Lorg/h2/engine/Database;->users:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getAllowLiterals()I
    .locals 1

    .line 1471
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 1474
    :cond_0
    iget v0, p0, Lorg/h2/engine/Database;->allowLiterals:I

    return v0
.end method

.method public getCacheType()Ljava/lang/String;
    .locals 1

    .line 1570
    iget-object v0, p0, Lorg/h2/engine/Database;->cacheType:Ljava/lang/String;

    return-object v0
.end method

.method public getCluster()Ljava/lang/String;
    .locals 1

    .line 1574
    iget-object v0, p0, Lorg/h2/engine/Database;->cluster:Ljava/lang/String;

    return-object v0
.end method

.method public getCompareMode()Lorg/h2/value/CompareMode;
    .locals 1

    .line 1579
    iget-object v0, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    return-object v0
.end method

.method public getCompiler()Lorg/h2/util/SourceCompiler;
    .locals 1

    .line 2680
    iget-object v0, p0, Lorg/h2/engine/Database;->compiler:Lorg/h2/util/SourceCompiler;

    if-nez v0, :cond_0

    .line 2681
    new-instance v0, Lorg/h2/util/SourceCompiler;

    invoke-direct {v0}, Lorg/h2/util/SourceCompiler;-><init>()V

    iput-object v0, p0, Lorg/h2/engine/Database;->compiler:Lorg/h2/util/SourceCompiler;

    .line 2683
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->compiler:Lorg/h2/util/SourceCompiler;

    return-object v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .line 1584
    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    if-eqz v0, :cond_0

    .line 1585
    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-static {v0}, Lorg/h2/store/fs/FileUtils;->toRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultTableType()I
    .locals 1

    .line 2748
    iget v0, p0, Lorg/h2/engine/Database;->defaultTableType:I

    return v0
.end method

.method public getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;
    .locals 6

    .line 1782
    invoke-interface {p1}, Lorg/h2/schema/SchemaObject;->getType()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 1792
    invoke-static {}, Lorg/h2/util/New;->hashSet()Ljava/util/HashSet;

    move-result-object v0

    const/4 v2, 0x0

    .line 1793
    invoke-virtual {p0, v2}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    goto :goto_0

    :sswitch_0
    return-object v1

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/table/Table;

    if-ne p2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "VIEW"

    .line 1796
    invoke-virtual {v3}, Lorg/h2/table/Table;->getTableType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 1799
    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 1800
    invoke-virtual {v3, v0}, Lorg/h2/table/Table;->addDependencies(Ljava/util/HashSet;)V

    .line 1801
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x8 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method public getExclusiveSession()Lorg/h2/engine/Session;
    .locals 1

    .line 2375
    iget-object v0, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getFileEncryptionKey()[B
    .locals 1

    .line 2801
    iget-object v0, p0, Lorg/h2/engine/Database;->fileEncryptionKey:[B

    return-object v0
.end method

.method public getFirstUserTable()Lorg/h2/table/Table;
    .locals 3

    const/4 v0, 0x0

    .line 2488
    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->getAllTablesAndViews(Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/h2/table/Table;

    .line 2489
    invoke-virtual {v1}, Lorg/h2/table/Table;->getCreateSQL()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2490
    invoke-virtual {v1}, Lorg/h2/table/Table;->isHidden()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlushOnEachCommit()Z
    .locals 1

    .line 1967
    iget-boolean v0, p0, Lorg/h2/engine/Database;->flushOnEachCommit:Z

    return v0
.end method

.method public getIgnoreCase()Z
    .locals 1

    .line 2211
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2215
    :cond_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->ignoreCase:Z

    return v0
.end method

.method public getInDoubtTransactions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/h2/store/InDoubtTransaction;",
            ">;"
        }
    .end annotation

    .line 1976
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    .line 1977
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 1979
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getInDoubtTransactions()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getJavaObjectSerializer()Lorg/h2/api/JavaObjectSerializer;
    .locals 1

    .line 2810
    invoke-direct {p0}, Lorg/h2/engine/Database;->initJavaObjectSerializer()V

    .line 2811
    iget-object v0, p0, Lorg/h2/engine/Database;->javaObjectSerializer:Lorg/h2/api/JavaObjectSerializer;

    return-object v0
.end method

.method public getLinkConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/h2/table/TableLinkConnection;
    .locals 7

    .line 2430
    iget-object v0, p0, Lorg/h2/engine/Database;->linkConnections:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2431
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->linkConnections:Ljava/util/HashMap;

    .line 2433
    :cond_0
    iget-object v1, p0, Lorg/h2/engine/Database;->linkConnections:Ljava/util/HashMap;

    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v6, v0, Lorg/h2/engine/DbSettings;->shareLinkedConnections:Z

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v6}, Lorg/h2/table/TableLinkConnection;->open(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/table/TableLinkConnection;

    move-result-object p1

    return-object p1
.end method

.method public getLobCompressionAlgorithm(I)Ljava/lang/String;
    .locals 0

    .line 2224
    iget-object p1, p0, Lorg/h2/engine/Database;->lobCompressionAlgorithm:Ljava/lang/String;

    return-object p1
.end method

.method public getLobConnectionForInit()Lorg/h2/jdbc/JdbcConnection;
    .locals 4

    const-string v0, "jdbc:default:connection"

    .line 2700
    new-instance v1, Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v3}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2702
    invoke-virtual {v1, v0}, Lorg/h2/jdbc/JdbcConnection;->setTraceLevel(I)V

    return-object v1
.end method

.method public getLobConnectionForRegularUse()Lorg/h2/jdbc/JdbcConnection;
    .locals 4

    const-string v0, "jdbc:default:connection"

    .line 2708
    new-instance v1, Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    iget-object v3, p0, Lorg/h2/engine/Database;->systemUser:Lorg/h2/engine/User;

    invoke-virtual {v3}, Lorg/h2/engine/User;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/h2/jdbc/JdbcConnection;-><init>(Lorg/h2/engine/SessionInterface;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2710
    invoke-virtual {v1, v0}, Lorg/h2/jdbc/JdbcConnection;->setTraceLevel(I)V

    return-object v1
.end method

.method public getLobFileListCache()Lorg/h2/util/SmallLRUCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/h2/util/SmallLRUCache<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2393
    iget-object v0, p0, Lorg/h2/engine/Database;->lobFileListCache:Lorg/h2/util/SmallLRUCache;

    if-nez v0, :cond_0

    const/16 v0, 0x80

    .line 2394
    invoke-static {v0}, Lorg/h2/util/SmallLRUCache;->newInstance(I)Lorg/h2/util/SmallLRUCache;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->lobFileListCache:Lorg/h2/util/SmallLRUCache;

    .line 2396
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->lobFileListCache:Lorg/h2/util/SmallLRUCache;

    return-object v0
.end method

.method public getLobSession()Lorg/h2/engine/Session;
    .locals 1

    .line 2715
    iget-object v0, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getLobStorage()Lorg/h2/store/LobStorageInterface;
    .locals 1

    .line 2688
    iget-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    if-nez v0, :cond_1

    .line 2689
    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v0, :cond_0

    .line 2690
    new-instance v0, Lorg/h2/store/LobStorageMap;

    invoke-direct {v0, p0}, Lorg/h2/store/LobStorageMap;-><init>(Lorg/h2/engine/Database;)V

    iput-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    goto :goto_0

    .line 2692
    :cond_0
    new-instance v0, Lorg/h2/store/LobStorageBackend;

    invoke-direct {v0, p0}, Lorg/h2/store/LobStorageBackend;-><init>(Lorg/h2/engine/Database;)V

    iput-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    .line 2695
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Database;->lobStorage:Lorg/h2/store/LobStorageInterface;

    return-object v0
.end method

.method public getLobSyncObject()Ljava/lang/Object;
    .locals 1

    .line 2251
    iget-object v0, p0, Lorg/h2/engine/Database;->lobSyncObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getLockMode()I
    .locals 1

    .line 2177
    iget v0, p0, Lorg/h2/engine/Database;->lockMode:I

    return v0
.end method

.method public getLogMode()I
    .locals 1

    .line 2738
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    .line 2739
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getLogMode()I

    move-result v0

    return v0

    .line 2741
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    .line 2742
    iget v0, p0, Lorg/h2/engine/Database;->logMode:I

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getMaxLengthInplaceLob()I
    .locals 1

    .line 2203
    iget v0, p0, Lorg/h2/engine/Database;->maxLengthInplaceLob:I

    return v0
.end method

.method public getMaxMemoryRows()I
    .locals 1

    .line 2139
    iget v0, p0, Lorg/h2/engine/Database;->maxMemoryRows:I

    return v0
.end method

.method public getMaxMemoryUndo()I
    .locals 1

    .line 2151
    iget v0, p0, Lorg/h2/engine/Database;->maxMemoryUndo:I

    return v0
.end method

.method public getMaxOperationMemory()I
    .locals 1

    .line 2371
    iget v0, p0, Lorg/h2/engine/Database;->maxOperationMemory:I

    return v0
.end method

.method public getMode()Lorg/h2/engine/Mode;
    .locals 1

    .line 2339
    iget-object v0, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    return-object v0
.end method

.method public getModificationDataId()J
    .locals 2

    .line 383
    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    return-wide v0
.end method

.method public getModificationMetaId()J
    .locals 2

    .line 465
    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationMetaId:J

    return-wide v0
.end method

.method public getMvStore()Lorg/h2/mvstore/db/MVTableEngine$Store;
    .locals 1

    .line 336
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1595
    iget-object v0, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    return-object v0
.end method

.method public getNextModificationDataId()J
    .locals 4

    .line 461
    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    return-wide v0
.end method

.method public getNextModificationMetaId()J
    .locals 4

    .line 471
    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/engine/Database;->modificationDataId:J

    .line 472
    iget-wide v0, p0, Lorg/h2/engine/Database;->modificationMetaId:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/h2/engine/Database;->modificationMetaId:J

    return-wide v0
.end method

.method public getOptimizeReuseResults()Z
    .locals 1

    .line 2242
    iget-boolean v0, p0, Lorg/h2/engine/Database;->optimizeReuseResults:Z

    return v0
.end method

.method public getPageSize()I
    .locals 1

    .line 2805
    iget v0, p0, Lorg/h2/engine/Database;->pageSize:I

    return v0
.end method

.method public getPageStore()Lorg/h2/store/PageStore;
    .locals 4

    .line 2461
    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->mvStore:Z

    if-eqz v0, :cond_1

    .line 2462
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-nez v0, :cond_0

    .line 2463
    invoke-static {p0}, Lorg/h2/mvstore/db/MVTableEngine;->init(Lorg/h2/engine/Database;)Lorg/h2/mvstore/db/MVTableEngine$Store;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 2467
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-nez v0, :cond_4

    .line 2468
    new-instance v0, Lorg/h2/store/PageStore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".h2.db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/h2/engine/Database;->accessModeData:Ljava/lang/String;

    iget v3, p0, Lorg/h2/engine/Database;->cacheSize:I

    invoke-direct {v0, p0, v1, v2, v3}, Lorg/h2/store/PageStore;-><init>(Lorg/h2/engine/Database;Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    .line 2470
    iget v0, p0, Lorg/h2/engine/Database;->pageSize:I

    const/16 v1, 0x1000

    if-eq v0, v1, :cond_2

    .line 2471
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/engine/Database;->pageSize:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->setPageSize(I)V

    .line 2473
    :cond_2
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    if-nez v0, :cond_3

    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 2474
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->setLockFile(Z)V

    .line 2476
    :cond_3
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    iget v1, p0, Lorg/h2/engine/Database;->logMode:I

    invoke-virtual {v0, v1}, Lorg/h2/store/PageStore;->setLogMode(I)V

    .line 2477
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->open()V

    .line 2479
    :cond_4
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    return-object v0
.end method

.method public getPowerOffCount()I
    .locals 1

    .line 476
    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    return v0
.end method

.method public getPublicRole()Lorg/h2/engine/Role;
    .locals 1

    .line 1894
    iget-object v0, p0, Lorg/h2/engine/Database;->publicRole:Lorg/h2/engine/Role;

    return-object v0
.end method

.method public getQueryStatistics()Z
    .locals 1

    .line 2274
    iget-boolean v0, p0, Lorg/h2/engine/Database;->queryStatistics:Z

    return v0
.end method

.method public getQueryStatisticsData()Lorg/h2/engine/QueryStatisticsData;
    .locals 2

    .line 2289
    iget-boolean v0, p0, Lorg/h2/engine/Database;->queryStatistics:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2292
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-nez v0, :cond_2

    .line 2293
    monitor-enter p0

    .line 2294
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-nez v0, :cond_1

    .line 2295
    new-instance v0, Lorg/h2/engine/QueryStatisticsData;

    iget v1, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    invoke-direct {v0, v1}, Lorg/h2/engine/QueryStatisticsData;-><init>(I)V

    iput-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    .line 2297
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2299
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    return-object v0
.end method

.method public getReferentialIntegrity()Z
    .locals 1

    .line 2263
    iget-boolean v0, p0, Lorg/h2/engine/Database;->referentialIntegrity:Z

    return v0
.end method

.method public getRetentionTime()I
    .locals 1

    .line 1951
    iget v0, p0, Lorg/h2/engine/Database;->retentionTime:I

    return v0
.end method

.method public getRowFactory()Lorg/h2/result/RowFactory;
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    return-object v0
.end method

.method public getSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;
    .locals 1

    .line 1742
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->findSchema(Ljava/lang/String;)Lorg/h2/schema/Schema;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fdf

    .line 1744
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public getSessionCount()I
    .locals 1

    .line 2255
    iget-object v0, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSessions(Z)[Lorg/h2/engine/Session;
    .locals 3

    .line 1609
    iget-object v0, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    monitor-enter v0

    .line 1610
    :try_start_0
    iget-object v1, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-static {v1}, Lorg/h2/util/New;->arrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1611
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1613
    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    .line 1614
    iget-object v2, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 1616
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    .line 1619
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1621
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lorg/h2/engine/Session;

    .line 1622
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    .line 1611
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getSettings()Lorg/h2/engine/DbSettings;
    .locals 1

    .line 2760
    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .line 1591
    iget-object v0, p0, Lorg/h2/engine/Database;->databaseShortName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemSession()Lorg/h2/engine/Session;
    .locals 1

    .line 2185
    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    return-object v0
.end method

.method public getTableEngine(Ljava/lang/String;)Lorg/h2/api/TableEngine;
    .locals 2

    .line 2855
    iget-object v0, p0, Lorg/h2/engine/Database;->tableEngines:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/TableEngine;

    if-nez v0, :cond_0

    .line 2858
    :try_start_0
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/TableEngine;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2862
    iget-object v1, p0, Lorg/h2/engine/Database;->tableEngines:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2860
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getTableOrViewByName(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lorg/h2/table/Table;",
            ">;"
        }
    .end annotation

    .line 1542
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1543
    iget-object v1, p0, Lorg/h2/engine/Database;->schemas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/h2/schema/Schema;

    .line 1544
    invoke-virtual {v2, p1}, Lorg/h2/schema/Schema;->getTableOrViewByName(Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1546
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getTempFileDeleter()Lorg/h2/util/TempFileDeleter;
    .locals 1

    .line 2457
    iget-object v0, p0, Lorg/h2/engine/Database;->tempFileDeleter:Lorg/h2/util/TempFileDeleter;

    return-object v0
.end method

.method public declared-synchronized getTempTableName(Ljava/lang/String;Lorg/h2/engine/Session;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1907
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_COPY_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/h2/engine/Session;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/engine/Database;->nextTempTableId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/engine/Database;->nextTempTableId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1909
    iget-object v1, p0, Lorg/h2/engine/Database;->mainSchema:Lorg/h2/schema/Schema;

    invoke-virtual {v1, p2, v0}, Lorg/h2/schema/Schema;->findTableOrView(Lorg/h2/engine/Session;Ljava/lang/String;)Lorg/h2/table/Table;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1910
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 1906
    monitor-exit p0

    throw p1
.end method

.method public getTrace(I)Lorg/h2/message/Trace;
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    invoke-virtual {v0, p1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object p1

    return-object p1
.end method

.method public getTraceSystem()Lorg/h2/message/TraceSystem;
    .locals 1

    .line 1870
    iget-object v0, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    return-object v0
.end method

.method public getUser(Ljava/lang/String;)Lorg/h2/engine/User;
    .locals 1

    .line 1124
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->findUser(Ljava/lang/String;)Lorg/h2/engine/User;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const v0, 0x15fb0

    .line 1126
    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public isClosing()Z
    .locals 1

    .line 2194
    iget-boolean v0, p0, Lorg/h2/engine/Database;->closing:Z

    return v0
.end method

.method public isFileLockSerialized()Z
    .locals 2

    .line 2592
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isMultiThreaded()Z
    .locals 1

    .line 2343
    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    return v0
.end method

.method public isMultiVersion()Z
    .locals 1

    .line 2318
    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiVersion:Z

    return v0
.end method

.method public isPersistent()Z
    .locals 1

    .line 1866
    iget-boolean v0, p0, Lorg/h2/engine/Database;->persistent:Z

    return v0
.end method

.method public isReadOnly()Z
    .locals 1

    .line 1934
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z

    return v0
.end method

.method public isReconnectNeeded()Z
    .locals 12

    .line 2509
    iget v0, p0, Lorg/h2/engine/Database;->fileLockMethod:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 2512
    :cond_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->reconnectChangePending:Z

    if-eqz v0, :cond_1

    return v1

    .line 2515
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2516
    iget-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    return v1

    .line 2519
    :cond_2
    iget v0, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    int-to-long v4, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/engine/Database;->reconnectCheckNext:J

    .line 2520
    iget-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    if-nez v0, :cond_3

    .line 2521
    new-instance v0, Lorg/h2/store/FileLock;

    iget-object v4, p0, Lorg/h2/engine/Database;->traceSystem:Lorg/h2/message/TraceSystem;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/h2/engine/Database;->databaseName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".lock.db"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x3e8

    invoke-direct {v0, v4, v5, v6}, Lorg/h2/store/FileLock;-><init>(Lorg/h2/message/TraceSystem;Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    :cond_3
    const/4 v0, 0x1

    .line 2525
    :try_start_0
    iget-object v4, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v4}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v4

    move-object v5, v4

    .line 2527
    :goto_0
    iget-object v6, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    invoke-virtual {v5, v6}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return v1

    :cond_4
    const-string v6, "changePending"

    const/4 v7, 0x0

    .line 2530
    invoke-virtual {v5, v6, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 2533
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget v6, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    mul-int/lit8 v6, v6, 0xa

    int-to-long v10, v6

    add-long/2addr v10, v2

    cmp-long v6, v8, v10

    if-lez v6, :cond_6

    .line 2535
    invoke-virtual {v4, v5}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2538
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    const-string v3, "changePending"

    invoke-virtual {v2, v3, v7}, Lorg/h2/store/FileLock;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    iget-object v2, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v2}, Lorg/h2/store/FileLock;->save()Ljava/util/Properties;

    .line 2547
    :goto_1
    iput-object v5, p0, Lorg/h2/engine/Database;->reconnectLastLock:Ljava/util/Properties;

    goto :goto_2

    .line 2543
    :cond_6
    iget-object v5, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v6, "delay (change pending)"

    invoke-virtual {v5, v6}, Lorg/h2/message/Trace;->debug(Ljava/lang/String;)V

    .line 2544
    iget v5, p0, Lorg/h2/engine/Database;->reconnectCheckDelay:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 2545
    iget-object v5, p0, Lorg/h2/engine/Database;->lock:Lorg/h2/store/FileLock;

    invoke-virtual {v5}, Lorg/h2/store/FileLock;->load()Ljava/util/Properties;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2550
    iget-object v3, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v4, "readOnly {0}"

    new-array v5, v0, [Ljava/lang/Object;

    iget-boolean v6, p0, Lorg/h2/engine/Database;->readOnly:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v3, v2, v4, v5}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return v0
.end method

.method public isStarting()Z
    .locals 1

    .line 2309
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    return v0
.end method

.method public isSysTableLocked()Z
    .locals 1

    .line 2405
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0}, Lorg/h2/table/Table;->isLockedExclusively()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSysTableLockedBy(Lorg/h2/engine/Session;)Z
    .locals 1

    .line 2416
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public lockMeta(Lorg/h2/engine/Session;)Z
    .locals 2

    .line 903
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 906
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0, p1, v1, v1}, Lorg/h2/table/Table;->lock(Lorg/h2/engine/Session;ZZ)Z

    move-result p1

    return p1
.end method

.method public newStringMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .line 2771
    iget-object v0, p0, Lorg/h2/engine/Database;->dbSettings:Lorg/h2/engine/DbSettings;

    iget-boolean v0, v0, Lorg/h2/engine/DbSettings;->databaseToUpper:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/h2/value/CaseInsensitiveMap;

    invoke-direct {v0}, Lorg/h2/value/CaseInsensitiveMap;-><init>()V

    :goto_0
    return-object v0
.end method

.method public openFile(Ljava/lang/String;Ljava/lang/String;Z)Lorg/h2/store/FileStore;
    .locals 1

    if-eqz p3, :cond_1

    .line 547
    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->exists(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const p2, 0x1600c

    .line 548
    invoke-static {p2, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 550
    :cond_1
    :goto_0
    iget-object p3, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    iget-object v0, p0, Lorg/h2/engine/Database;->filePasswordHash:[B

    invoke-static {p0, p1, p2, p3, v0}, Lorg/h2/store/FileStore;->open(Lorg/h2/store/DataHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lorg/h2/store/FileStore;

    move-result-object p1

    .line 553
    :try_start_0
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->init()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 555
    invoke-virtual {p1}, Lorg/h2/store/FileStore;->closeSilently()V

    .line 556
    throw p2
.end method

.method opened()V
    .locals 1

    .line 2326
    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz v0, :cond_0

    .line 2327
    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-interface {v0}, Lorg/h2/api/DatabaseEventListener;->opened()V

    .line 2329
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    if-eqz v0, :cond_1

    .line 2330
    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    invoke-virtual {v0}, Lorg/h2/store/WriterThread;->startThread()V

    :cond_1
    return-void
.end method

.method declared-synchronized prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1989
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1990
    monitor-exit p0

    return-void

    .line 1992
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    .line 1993
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0, p1, p2}, Lorg/h2/mvstore/db/MVTableEngine$Store;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1994
    monitor-exit p0

    return-void

    .line 1996
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_2

    .line 1997
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->flushLog()V

    .line 1998
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageStore;->prepareCommit(Lorg/h2/engine/Session;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2000
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1988
    monitor-exit p0

    throw p1
.end method

.method public readLob(J[BJ[BII)I
    .locals 0

    .line 2797
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 4

    monitor-enter p0

    .line 1756
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    .line 1757
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1758
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v1

    .line 1759
    invoke-direct {p0, v1}, Lorg/h2/engine/Database;->getMap(I)Ljava/util/HashMap;

    move-result-object v1

    .line 1760
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 1763
    :cond_0
    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;

    move-result-object v2

    .line 1764
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    if-eqz v2, :cond_1

    .line 1766
    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 1768
    :cond_1
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v2

    .line 1769
    invoke-interface {p2, p1}, Lorg/h2/engine/DbObject;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    .line 1770
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1771
    invoke-virtual {p0, p1, v2}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1772
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1755
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMeta(Lorg/h2/engine/Session;I)V
    .locals 3

    monitor-enter p0

    if-lez p2, :cond_5

    .line 926
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v0, :cond_5

    .line 927
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/h2/table/Table;->getTemplateSimpleRow(Z)Lorg/h2/result/SearchRow;

    move-result-object v0

    .line 928
    invoke-static {p2}, Lorg/h2/value/ValueInt;->get(I)Lorg/h2/value/ValueInt;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/h2/result/SearchRow;->setValue(ILorg/h2/value/Value;)V

    .line 929
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    move-result v1

    .line 930
    iget-object v2, p0, Lorg/h2/engine/Database;->metaIdIndex:Lorg/h2/index/Index;

    invoke-interface {v2, p1, v0, v0}, Lorg/h2/index/Index;->find(Lorg/h2/engine/Session;Lorg/h2/result/SearchRow;Lorg/h2/result/SearchRow;)Lorg/h2/index/Cursor;

    move-result-object v0

    .line 931
    invoke-interface {v0}, Lorg/h2/index/Cursor;->next()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 932
    sget-boolean v2, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v2, :cond_1

    .line 933
    iget v2, p0, Lorg/h2/engine/Database;->lockMode:I

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 934
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 937
    :cond_1
    :goto_0
    invoke-interface {v0}, Lorg/h2/index/Cursor;->get()Lorg/h2/result/Row;

    move-result-object v0

    .line 938
    iget-object v1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v1, p1, v0}, Lorg/h2/table/Table;->removeRow(Lorg/h2/engine/Session;Lorg/h2/result/Row;)V

    .line 939
    invoke-virtual {p0}, Lorg/h2/engine/Database;->isMultiVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 942
    iget-object v1, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v0}, Lorg/h2/engine/Session;->log(Lorg/h2/table/Table;SLorg/h2/result/Row;)V

    .line 944
    :cond_2
    sget-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v0, :cond_4

    .line 945
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->checkMetaFree(Lorg/h2/engine/Session;I)V

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    .line 950
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    .line 951
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->unlock(Lorg/h2/table/Table;)V

    .line 953
    :cond_4
    :goto_1
    iget-object p1, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {p1, p2}, Lorg/h2/util/BitField;->clear(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 925
    monitor-exit p0

    throw p1

    .line 955
    :cond_5
    :goto_2
    monitor-exit p0

    return-void
.end method

.method public removeSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;)V
    .locals 4

    .line 1816
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1818
    move-object v0, p2

    check-cast v0, Lorg/h2/table/Table;

    .line 1819
    invoke-virtual {v0}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1820
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->removeLocalTempTable(Lorg/h2/table/Table;)V

    return-void

    :cond_0
    if-ne v0, v1, :cond_1

    .line 1824
    move-object v0, p2

    check-cast v0, Lorg/h2/index/Index;

    .line 1825
    invoke-interface {v0}, Lorg/h2/index/Index;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    .line 1826
    invoke-virtual {v2}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1827
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->removeLocalTempTableIndex(Lorg/h2/index/Index;)V

    return-void

    :cond_1
    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 1831
    move-object v0, p2

    check-cast v0, Lorg/h2/constraint/Constraint;

    .line 1832
    invoke-virtual {v0}, Lorg/h2/constraint/Constraint;->getTable()Lorg/h2/table/Table;

    move-result-object v2

    .line 1833
    invoke-virtual {v2}, Lorg/h2/table/Table;->isTemporary()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lorg/h2/table/Table;->isGlobalTemporary()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1834
    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->removeLocalTempTableConstraint(Lorg/h2/constraint/Constraint;)V

    return-void

    .line 1838
    :cond_2
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    .line 1839
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 1840
    monitor-enter p0

    .line 1841
    :try_start_0
    invoke-virtual {p0, p2}, Lorg/h2/engine/Database;->findComment(Lorg/h2/engine/DbObject;)Lorg/h2/engine/Comment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1843
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 1845
    :cond_3
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/h2/schema/Schema;->remove(Lorg/h2/schema/SchemaObject;)V

    .line 1846
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getId()I

    move-result v0

    .line 1847
    iget-boolean v2, p0, Lorg/h2/engine/Database;->starting:Z

    if-nez v2, :cond_5

    const/4 v2, 0x0

    .line 1848
    invoke-virtual {p0, p2, v2}, Lorg/h2/engine/Database;->getDependentTable(Lorg/h2/schema/SchemaObject;Lorg/h2/table/Table;)Lorg/h2/table/Table;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1854
    invoke-interface {p2, p1}, Lorg/h2/schema/SchemaObject;->removeChildrenAndResources(Lorg/h2/engine/Session;)V

    goto :goto_0

    .line 1850
    :cond_4
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/h2/schema/Schema;->add(Lorg/h2/schema/SchemaObject;)V

    const p1, 0x15ffb

    const/4 v0, 0x2

    .line 1851
    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSQL()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v3

    invoke-virtual {v2}, Lorg/h2/table/Table;->getSQL()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 1856
    :cond_5
    :goto_0
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 1857
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized removeSession(Lorg/h2/engine/Session;)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1162
    :try_start_0
    iget-object v2, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    if-ne v2, p1, :cond_0

    const/4 v2, 0x0

    .line 1163
    iput-object v2, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    .line 1165
    :cond_0
    iget-object v2, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1166
    iget-object v2, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_1

    iget-object v2, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_1

    .line 1167
    iget-object v2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "disconnecting session #{0}"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 1170
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/h2/engine/Database;->userSessions:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_4

    iget-object v2, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_4

    .line 1172
    iget v2, p0, Lorg/h2/engine/Database;->closeDelay:I

    if-nez v2, :cond_2

    .line 1173
    invoke-virtual {p0, v1}, Lorg/h2/engine/Database;->close(Z)V

    goto :goto_1

    .line 1174
    :cond_2
    iget v2, p0, Lorg/h2/engine/Database;->closeDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gez v2, :cond_3

    .line 1175
    monitor-exit p0

    return-void

    .line 1177
    :cond_3
    :try_start_1
    new-instance v2, Lorg/h2/engine/DatabaseCloser;

    iget v3, p0, Lorg/h2/engine/Database;->closeDelay:I

    mul-int/lit16 v3, v3, 0x3e8

    invoke-direct {v2, p0, v3, v1}, Lorg/h2/engine/DatabaseCloser;-><init>(Lorg/h2/engine/Database;IZ)V

    iput-object v2, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    .line 1178
    iget-object v2, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "H2 Close Delay "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/engine/Database;->getShortName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/h2/engine/DatabaseCloser;->setName(Ljava/lang/String;)V

    .line 1179
    iget-object v2, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {v2, v0}, Lorg/h2/engine/DatabaseCloser;->setDaemon(Z)V

    .line 1180
    iget-object v2, p0, Lorg/h2/engine/Database;->delayedCloser:Lorg/h2/engine/DatabaseCloser;

    invoke-virtual {v2}, Lorg/h2/engine/DatabaseCloser;->start()V

    .line 1183
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_5

    iget-object v2, p0, Lorg/h2/engine/Database;->lobSession:Lorg/h2/engine/Session;

    if-eq p1, v2, :cond_5

    if-eqz p1, :cond_5

    .line 1185
    iget-object v2, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const-string v3, "disconnected session #{0}"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/h2/engine/Session;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/h2/message/Trace;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1187
    :cond_5
    monitor-exit p0

    return-void

    .line 1160
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renameDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    .line 1683
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    .line 1684
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getType()I

    move-result v0

    .line 1685
    invoke-direct {p0, v0}, Lorg/h2/engine/Database;->getMap(I)Ljava/util/HashMap;

    move-result-object v0

    .line 1686
    sget-boolean v1, Lorg/h2/engine/SysProperties;->CHECK:Z

    if-eqz v1, :cond_2

    .line 1687
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1688
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 1690
    :cond_0
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1691
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object already exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    .line 1694
    :cond_2
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->checkRename()V

    .line 1695
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v1

    .line 1696
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 1697
    invoke-virtual {p0, p1, v1}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 1698
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1699
    invoke-interface {p2, p3}, Lorg/h2/engine/DbObject;->rename(Ljava/lang/String;)V

    .line 1700
    invoke-virtual {v0, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1701
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->updateMetaAndFirstLevelChildren(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1702
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1682
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renameSchemaObject(Lorg/h2/engine/Session;Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 1652
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkWritingAllowed()V

    .line 1653
    invoke-interface {p2}, Lorg/h2/schema/SchemaObject;->getSchema()Lorg/h2/schema/Schema;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/h2/schema/Schema;->rename(Lorg/h2/schema/SchemaObject;Ljava/lang/String;)V

    .line 1654
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->updateMetaAndFirstLevelChildren(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1655
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1651
    monitor-exit p0

    throw p1
.end method

.method public setAllowLiterals(I)V
    .locals 0

    .line 2238
    iput p1, p0, Lorg/h2/engine/Database;->allowLiterals:I

    return-void
.end method

.method public setBackgroundException(Lorg/h2/message/DbException;)V
    .locals 2

    .line 2033
    iget-object v0, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    if-nez v0, :cond_0

    .line 2034
    iput-object p1, p0, Lorg/h2/engine/Database;->backgroundException:Lorg/h2/message/DbException;

    .line 2035
    invoke-virtual {p0}, Lorg/h2/engine/Database;->getTraceSystem()Lorg/h2/message/TraceSystem;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2037
    invoke-virtual {v0, v1}, Lorg/h2/message/TraceSystem;->getTrace(I)Lorg/h2/message/Trace;

    move-result-object v0

    const-string v1, "flush"

    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized setCacheSize(I)V
    .locals 2

    monitor-enter p0

    .line 1874
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->starting:Z

    if-eqz v0, :cond_0

    .line 1875
    invoke-static {}, Lorg/h2/util/Utils;->getMemoryMax()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 1876
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1878
    :cond_0
    iput p1, p0, Lorg/h2/engine/Database;->cacheSize:I

    .line 1879
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_1

    .line 1880
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->getCache()Lorg/h2/util/Cache;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/h2/util/Cache;->setMaxMemory(I)V

    .line 1882
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_2

    .line 1883
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    const/4 v1, 0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->setCacheSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1885
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1873
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setCloseDelay(I)V
    .locals 0

    monitor-enter p0

    .line 2181
    :try_start_0
    iput p1, p0, Lorg/h2/engine/Database;->closeDelay:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2182
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2180
    monitor-exit p0

    throw p1
.end method

.method public setCluster(Ljava/lang/String;)V
    .locals 0

    .line 1918
    iput-object p1, p0, Lorg/h2/engine/Database;->cluster:Ljava/lang/String;

    return-void
.end method

.method public setCompactMode(I)V
    .locals 0

    .line 2676
    iput p1, p0, Lorg/h2/engine/Database;->compactMode:I

    return-void
.end method

.method public setCompareMode(Lorg/h2/value/CompareMode;)V
    .locals 0

    .line 1914
    iput-object p1, p0, Lorg/h2/engine/Database;->compareMode:Lorg/h2/value/CompareMode;

    return-void
.end method

.method public setDefaultTableType(I)V
    .locals 0

    .line 2752
    iput p1, p0, Lorg/h2/engine/Database;->defaultTableType:I

    return-void
.end method

.method public declared-synchronized setDeleteFilesOnDisconnect(Z)V
    .locals 0

    monitor-enter p0

    .line 2219
    :try_start_0
    iput-boolean p1, p0, Lorg/h2/engine/Database;->deleteFilesOnDisconnect:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2220
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2218
    monitor-exit p0

    throw p1
.end method

.method public setEventListener(Lorg/h2/api/DatabaseEventListener;)V
    .locals 0

    .line 2063
    iput-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    return-void
.end method

.method public setEventListenerClass(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 2067
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2071
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/h2/api/DatabaseEventListener;

    iput-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    .line 2073
    iget-object v0, p0, Lorg/h2/engine/Database;->databaseURL:Ljava/lang/String;

    .line 2074
    iget-object v1, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 2075
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";CIPHER="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2077
    :cond_1
    iget-object v1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-interface {v1, v0}, Lorg/h2/api/DatabaseEventListener;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const v1, 0x15ff3

    const/4 v2, 0x2

    .line 2079
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p1

    invoke-static {v1, v0, v2}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 2068
    iput-object p1, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    :goto_1
    return-void
.end method

.method public setExclusiveSession(Lorg/h2/engine/Session;Z)V
    .locals 0

    .line 2385
    iput-object p1, p0, Lorg/h2/engine/Database;->exclusiveSession:Lorg/h2/engine/Session;

    if-eqz p2, :cond_0

    .line 2387
    invoke-direct {p0, p1}, Lorg/h2/engine/Database;->closeAllSessionsException(Lorg/h2/engine/Session;)V

    :cond_0
    return-void
.end method

.method public setIgnoreCase(Z)V
    .locals 0

    .line 2207
    iput-boolean p1, p0, Lorg/h2/engine/Database;->ignoreCase:Z

    return-void
.end method

.method public setJavaObjectSerializerName(Ljava/lang/String;)V
    .locals 1

    .line 2840
    monitor-enter p0

    const/4 v0, 0x0

    .line 2841
    :try_start_0
    iput-boolean v0, p0, Lorg/h2/engine/Database;->javaObjectSerializerInitialized:Z

    .line 2842
    iput-object p1, p0, Lorg/h2/engine/Database;->javaObjectSerializerName:Ljava/lang/String;

    .line 2843
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLobCompressionAlgorithm(Ljava/lang/String;)V
    .locals 0

    .line 2228
    iput-object p1, p0, Lorg/h2/engine/Database;->lobCompressionAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setLockMode(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 2171
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "lock mode"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 2157
    :pswitch_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    if-nez v0, :cond_0

    .line 2173
    :pswitch_1
    iput p1, p0, Lorg/h2/engine/Database;->lockMode:I

    return-void

    :cond_0
    const p1, 0x15fa5

    const-string v0, "LOCK_MODE=0 & MULTI_THREADED"

    .line 2161
    invoke-static {p1, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLogMode(I)V
    .locals 6

    if-ltz p1, :cond_4

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4

    .line 2722
    iget-object v1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v1, :cond_2

    if-ne p1, v0, :cond_0

    .line 2723
    iget-object v1, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v1}, Lorg/h2/store/PageStore;->getLogMode()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 2727
    :cond_0
    iget-object v0, p0, Lorg/h2/engine/Database;->trace:Lorg/h2/message/Trace;

    const/4 v1, 0x0

    const-string v2, "log {0}"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2729
    :cond_1
    iput p1, p0, Lorg/h2/engine/Database;->logMode:I

    .line 2730
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1}, Lorg/h2/store/PageStore;->setLogMode(I)V

    .line 2732
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_3

    .line 2733
    iput p1, p0, Lorg/h2/engine/Database;->logMode:I

    :cond_3
    return-void

    .line 2720
    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "LOG"

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
.end method

.method public declared-synchronized setMasterUser(Lorg/h2/engine/User;)V
    .locals 1

    monitor-enter p0

    .line 1888
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 1889
    iget-object v0, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    invoke-virtual {p0, v0, p1}, Lorg/h2/engine/Database;->addDatabaseObject(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    .line 1890
    iget-object p1, p0, Lorg/h2/engine/Database;->systemSession:Lorg/h2/engine/Session;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/h2/engine/Session;->commit(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1887
    monitor-exit p0

    throw p1
.end method

.method public setMaxLengthInplaceLob(I)V
    .locals 0

    .line 2198
    iput p1, p0, Lorg/h2/engine/Database;->maxLengthInplaceLob:I

    return-void
.end method

.method public declared-synchronized setMaxLogSize(J)V
    .locals 1

    monitor-enter p0

    .line 2232
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_0

    .line 2233
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0, p1, p2}, Lorg/h2/store/PageStore;->setMaxLogSize(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2235
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2231
    monitor-exit p0

    throw p1
.end method

.method public setMaxMemoryRows(I)V
    .locals 0

    .line 2143
    iput p1, p0, Lorg/h2/engine/Database;->maxMemoryRows:I

    return-void
.end method

.method public setMaxMemoryUndo(I)V
    .locals 0

    .line 2147
    iput p1, p0, Lorg/h2/engine/Database;->maxMemoryUndo:I

    return-void
.end method

.method public setMaxOperationMemory(I)V
    .locals 0

    .line 2367
    iput p1, p0, Lorg/h2/engine/Database;->maxOperationMemory:I

    return-void
.end method

.method public setMode(Lorg/h2/engine/Mode;)V
    .locals 0

    .line 2335
    iput-object p1, p0, Lorg/h2/engine/Database;->mode:Lorg/h2/engine/Mode;

    return-void
.end method

.method public setMultiThreaded(Z)V
    .locals 2

    if-eqz p1, :cond_3

    .line 2347
    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    if-eq v0, p1, :cond_3

    .line 2348
    iget-boolean v0, p0, Lorg/h2/engine/Database;->multiVersion:Z

    const v1, 0x15fa5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "MVCC & MULTI_THREADED"

    .line 2351
    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 2355
    :cond_1
    :goto_0
    iget v0, p0, Lorg/h2/engine/Database;->lockMode:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "LOCK_MODE=0 & MULTI_THREADED"

    .line 2358
    invoke-static {v1, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    .line 2363
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lorg/h2/engine/Database;->multiThreaded:Z

    return-void
.end method

.method public setMultiVersion(Z)V
    .locals 0

    .line 2756
    iput-boolean p1, p0, Lorg/h2/engine/Database;->multiVersion:Z

    return-void
.end method

.method public setMvStore(Lorg/h2/mvstore/db/MVTableEngine$Store;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    .line 341
    invoke-virtual {p1}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/mvstore/MVStore;->getRetentionTime()I

    move-result p1

    iput p1, p0, Lorg/h2/engine/Database;->retentionTime:I

    return-void
.end method

.method public setOptimizeReuseResults(Z)V
    .locals 0

    .line 2246
    iput-boolean p1, p0, Lorg/h2/engine/Database;->optimizeReuseResults:Z

    return-void
.end method

.method public setPowerOffCount(I)V
    .locals 2

    .line 329
    iget v0, p0, Lorg/h2/engine/Database;->powerOffCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 332
    :cond_0
    iput p1, p0, Lorg/h2/engine/Database;->powerOffCount:I

    return-void
.end method

.method public setProgress(ILjava/lang/String;II)V
    .locals 1

    .line 2096
    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    if-eqz v0, :cond_0

    .line 2098
    :try_start_0
    iget-object v0, p0, Lorg/h2/engine/Database;->eventListener:Lorg/h2/api/DatabaseEventListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/h2/api/DatabaseEventListener;->setProgress(ILjava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public setQueryStatistics(Z)V
    .locals 0

    .line 2267
    iput-boolean p1, p0, Lorg/h2/engine/Database;->queryStatistics:Z

    .line 2268
    monitor-enter p0

    const/4 p1, 0x0

    .line 2269
    :try_start_0
    iput-object p1, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    .line 2270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setQueryStatisticsMaxEntries(I)V
    .locals 1

    .line 2278
    iput p1, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    .line 2279
    iget-object p1, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-eqz p1, :cond_1

    .line 2280
    monitor-enter p0

    .line 2281
    :try_start_0
    iget-object p1, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    if-eqz p1, :cond_0

    .line 2282
    iget-object p1, p0, Lorg/h2/engine/Database;->queryStatisticsData:Lorg/h2/engine/QueryStatisticsData;

    iget v0, p0, Lorg/h2/engine/Database;->queryStatisticsMaxEntries:I

    invoke-virtual {p1, v0}, Lorg/h2/engine/QueryStatisticsData;->setMaxQueryEntries(I)V

    .line 2284
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 2672
    iput-boolean p1, p0, Lorg/h2/engine/Database;->readOnly:Z

    return-void
.end method

.method public setReferentialIntegrity(Z)V
    .locals 0

    .line 2259
    iput-boolean p1, p0, Lorg/h2/engine/Database;->referentialIntegrity:Z

    return-void
.end method

.method public setRetentionTime(I)V
    .locals 1

    .line 1955
    iput p1, p0, Lorg/h2/engine/Database;->retentionTime:I

    .line 1956
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_0

    .line 1957
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->setRetentionTime(I)V

    :cond_0
    return-void
.end method

.method public setRowFactory(Lorg/h2/result/RowFactory;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lorg/h2/engine/Database;->rowFactory:Lorg/h2/result/RowFactory;

    return-void
.end method

.method public setWriteDelay(I)V
    .locals 3

    .line 1938
    iput p1, p0, Lorg/h2/engine/Database;->writeDelay:I

    .line 1939
    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1940
    iget-object v0, p0, Lorg/h2/engine/Database;->writer:Lorg/h2/store/WriterThread;

    invoke-virtual {v0, p1}, Lorg/h2/store/WriterThread;->setWriteDelay(I)V

    .line 1942
    iget v0, p0, Lorg/h2/engine/Database;->writeDelay:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/h2/engine/Database;->flushOnEachCommit:Z

    .line 1944
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_3

    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 1946
    :cond_2
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->getStore()Lorg/h2/mvstore/MVStore;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/h2/mvstore/MVStore;->setAutoCommitDelay(I)V

    :cond_3
    return-void
.end method

.method public shutdownImmediately()V
    .locals 1

    const/4 v0, 0x1

    .line 2446
    invoke-virtual {p0, v0}, Lorg/h2/engine/Database;->setPowerOffCount(I)V

    .line 2448
    :try_start_0
    invoke-virtual {p0}, Lorg/h2/engine/Database;->checkPowerOff()V
    :try_end_0
    .catch Lorg/h2/message/DbException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2452
    :catch_0
    invoke-direct {p0}, Lorg/h2/engine/Database;->closeFiles()V

    return-void
.end method

.method public declared-synchronized sync()V
    .locals 1

    monitor-enter p0

    .line 2127
    :try_start_0
    iget-boolean v0, p0, Lorg/h2/engine/Database;->readOnly:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2128
    monitor-exit p0

    return-void

    .line 2130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    if-eqz v0, :cond_1

    .line 2131
    iget-object v0, p0, Lorg/h2/engine/Database;->mvStore:Lorg/h2/mvstore/db/MVTableEngine$Store;

    invoke-virtual {v0}, Lorg/h2/mvstore/db/MVTableEngine$Store;->sync()V

    .line 2133
    :cond_1
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    if-eqz v0, :cond_2

    .line 2134
    iget-object v0, p0, Lorg/h2/engine/Database;->pageStore:Lorg/h2/store/PageStore;

    invoke-virtual {v0}, Lorg/h2/store/PageStore;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2136
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 2126
    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/engine/Database;->databaseShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unlockMeta(Lorg/h2/engine/Session;)V
    .locals 1

    .line 916
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->unlock(Lorg/h2/engine/Session;)V

    return-void
.end method

.method public declared-synchronized updateMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V
    .locals 1

    monitor-enter p0

    .line 1633
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/h2/engine/Database;->lockMeta(Lorg/h2/engine/Session;)Z

    .line 1634
    invoke-interface {p2}, Lorg/h2/engine/DbObject;->getId()I

    move-result v0

    .line 1635
    invoke-virtual {p0, p1, v0}, Lorg/h2/engine/Database;->removeMeta(Lorg/h2/engine/Session;I)V

    .line 1636
    invoke-direct {p0, p1, p2}, Lorg/h2/engine/Database;->addMeta(Lorg/h2/engine/Session;Lorg/h2/engine/DbObject;)V

    if-lez v0, :cond_0

    .line 1639
    iget-object p1, p0, Lorg/h2/engine/Database;->objectIds:Lorg/h2/util/BitField;

    invoke-virtual {p1, v0}, Lorg/h2/util/BitField;->set(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1641
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 1632
    monitor-exit p0

    throw p1
.end method

.method validateFilePasswordHash(Ljava/lang/String;[B)Z
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/h2/engine/Database;->cipher:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/h2/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 572
    :cond_0
    iget-object p1, p0, Lorg/h2/engine/Database;->filePasswordHash:[B

    invoke-static {p2, p1}, Lorg/h2/util/Utils;->compareSecure([B[B)Z

    move-result p1

    return p1
.end method

.method public verifyMetaLocked(Lorg/h2/engine/Session;)V
    .locals 1

    .line 886
    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/h2/engine/Database;->meta:Lorg/h2/table/Table;

    invoke-virtual {v0, p1}, Lorg/h2/table/Table;->isLockedExclusivelyBy(Lorg/h2/engine/Session;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lorg/h2/engine/Database;->lockMode:I

    if-nez p1, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    invoke-static {}, Lorg/h2/message/DbException;->throwInternalError()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
