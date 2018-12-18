.class public Lorg/h2/engine/SysProperties;
.super Ljava/lang/Object;
.source "SysProperties.java"


# static fields
.field public static final ALLOWED_CLASSES:Ljava/lang/String;

.field public static final BIND_ADDRESS:Ljava/lang/String;

.field public static final BROWSER:Ljava/lang/String;

.field public static final CHECK:Z

.field public static final CHECK2:Z

.field public static final CLIENT_TRACE_DIRECTORY:Ljava/lang/String;

.field public static final COLLATOR_CACHE_SIZE:I

.field public static final CONSOLE_MAX_PROCEDURES_LIST_COLUMNS:I

.field public static final CONSOLE_MAX_TABLES_LIST_COLUMNS:I

.field public static final CONSOLE_MAX_TABLES_LIST_INDEXES:I

.field public static final CONSOLE_STREAM:Z

.field public static final CONSOLE_TIMEOUT:I

.field public static final DATASOURCE_TRACE_LEVEL:I

.field public static final DELAY_WRONG_PASSWORD_MAX:I

.field public static final DELAY_WRONG_PASSWORD_MIN:I

.field public static final ENABLE_ANONYMOUS_TLS:Z

.field public static final FILE_ENCODING:Ljava/lang/String;

.field public static final FILE_SEPARATOR:Ljava/lang/String;

.field private static final H2_BASE_DIR:Ljava/lang/String; = "h2.baseDir"

.field public static final H2_BROWSER:Ljava/lang/String; = "h2.browser"

.field public static final H2_SCRIPT_DIRECTORY:Ljava/lang/String; = "h2.scriptDirectory"

.field public static final IMPLICIT_RELATIVE_PATH:Z

.field public static final JAVA_OBJECT_SERIALIZER:Ljava/lang/String;

.field public static final JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

.field public static final JAVA_SYSTEM_COMPILER:Z

.field public static final LINE_SEPARATOR:Ljava/lang/String;

.field public static final LOB_CLIENT_MAX_SIZE_MEMORY:I

.field public static final LOB_FILES_PER_DIRECTORY:I

.field public static final MAX_FILE_RETRY:I

.field public static final MAX_MEMORY_ROWS:I

.field public static final MAX_RECONNECT:I

.field public static final MAX_TRACE_DATA_LENGTH:J

.field public static final MODIFY_ON_WRITE:Z

.field public static final NIO_CLEANER_HACK:Z

.field public static final NIO_LOAD_MAPPED:Z

.field public static final OBJECT_CACHE:Z

.field public static final OBJECT_CACHE_MAX_PER_ELEMENT_SIZE:I

.field public static final OBJECT_CACHE_SIZE:I

.field public static final OLD_STYLE_OUTER_JOIN:Z

.field public static final PG_DEFAULT_CLIENT_ENCODING:Ljava/lang/String;

.field public static final PREFIX_TEMP_FILE:Ljava/lang/String;

.field public static final SERVER_CACHED_OBJECTS:I

.field public static final SERVER_RESULT_SET_FETCH_SIZE:I

.field public static final SOCKET_CONNECT_RETRY:I

.field public static final SOCKET_CONNECT_TIMEOUT:I

.field public static final SORT_BINARY_UNSIGNED:Z

.field public static final SORT_NULLS_HIGH:Z

.field public static final SPLIT_FILE_SIZE_SHIFT:J

.field public static final SYNC_METHOD:Ljava/lang/String;

.field public static final THREAD_DEADLOCK_DETECTOR:Z

.field public static final TRACE_IO:Z

.field public static final URL_MAP:Ljava/lang/String;

.field public static final USER_HOME:Ljava/lang/String;

.field public static final USE_THREAD_CONTEXT_CLASS_LOADER:Z

.field public static lobCloseBetweenReads:Z

.field public static serializeJavaObject:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "file.encoding"

    const-string v1, "Cp1252"

    .line 49
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->FILE_ENCODING:Ljava/lang/String;

    const-string v0, "file.separator"

    const-string v1, "/"

    .line 56
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->FILE_SEPARATOR:Ljava/lang/String;

    const-string v0, "java.specification.version"

    const-string v1, "1.4"

    .line 63
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->JAVA_SPECIFICATION_VERSION:Ljava/lang/String;

    const-string v0, "line.separator"

    const-string v1, "\n"

    .line 70
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->LINE_SEPARATOR:Ljava/lang/String;

    const-string v0, "user.home"

    const-string v1, ""

    .line 78
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->USER_HOME:Ljava/lang/String;

    const-string v0, "h2.allowedClasses"

    const-string v1, "*"

    .line 85
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->ALLOWED_CLASSES:Ljava/lang/String;

    const-string v0, "h2.browser"

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->BROWSER:Ljava/lang/String;

    const-string v0, "h2.enableAnonymousTLS"

    const/4 v2, 0x1

    .line 103
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->ENABLE_ANONYMOUS_TLS:Z

    const-string v0, "h2.bindAddress"

    .line 110
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->BIND_ADDRESS:Ljava/lang/String;

    const-string v0, "h2.check"

    .line 118
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->CHECK:Z

    const-string v0, "h2.check2"

    const/4 v3, 0x0

    .line 129
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->CHECK2:Z

    const-string v0, "h2.clientTraceDirectory"

    const-string v4, "trace.db/"

    .line 141
    invoke-static {v0, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->CLIENT_TRACE_DIRECTORY:Ljava/lang/String;

    const-string v0, "h2.collatorCacheSize"

    const/16 v4, 0x7d00

    .line 149
    invoke-static {v0, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->COLLATOR_CACHE_SIZE:I

    const-string v0, "h2.consoleTableIndexes"

    const/16 v4, 0x64

    .line 157
    invoke-static {v0, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->CONSOLE_MAX_TABLES_LIST_INDEXES:I

    const-string v0, "h2.consoleTableColumns"

    const/16 v5, 0x1f4

    .line 165
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->CONSOLE_MAX_TABLES_LIST_COLUMNS:I

    const-string v0, "h2.consoleProcedureColumns"

    const/16 v5, 0x12c

    .line 173
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->CONSOLE_MAX_PROCEDURES_LIST_COLUMNS:I

    const-string v0, "h2.consoleStream"

    .line 180
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->CONSOLE_STREAM:Z

    const-string v0, "h2.consoleTimeout"

    const v5, 0x1b7740

    .line 187
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->CONSOLE_TIMEOUT:I

    const-string v0, "h2.dataSourceTraceLevel"

    .line 195
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->DATASOURCE_TRACE_LEVEL:I

    const-string v0, "h2.delayWrongPasswordMin"

    const/16 v5, 0xfa

    .line 207
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MIN:I

    const-string v0, "h2.delayWrongPasswordMax"

    const/16 v5, 0xfa0

    .line 218
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->DELAY_WRONG_PASSWORD_MAX:I

    const-string v0, "h2.javaSystemCompiler"

    .line 229
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->JAVA_SYSTEM_COMPILER:Z

    const-string v0, "h2.lobCloseBetweenReads"

    .line 237
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->lobCloseBetweenReads:Z

    const-string v0, "h2.lobFilesPerDirectory"

    const/16 v5, 0x100

    .line 245
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->LOB_FILES_PER_DIRECTORY:I

    const-string v0, "h2.lobClientMaxSizeMemory"

    const/high16 v5, 0x100000

    .line 254
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->LOB_CLIENT_MAX_SIZE_MEMORY:I

    const-string v0, "h2.maxFileRetry"

    const/16 v5, 0x10

    .line 265
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->MAX_FILE_RETRY:I

    const-string v0, "h2.maxReconnect"

    const/4 v6, 0x3

    .line 272
    invoke-static {v0, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->MAX_RECONNECT:I

    const-string v0, "h2.maxMemoryRows"

    const v6, 0x9c40

    .line 280
    invoke-static {v0, v6}, Lorg/h2/engine/SysProperties;->getAutoScaledForMemoryProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->MAX_MEMORY_ROWS:I

    const-string v0, "h2.maxTraceDataLength"

    const v6, 0xffff

    .line 289
    invoke-static {v0, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    int-to-long v6, v0

    sput-wide v6, Lorg/h2/engine/SysProperties;->MAX_TRACE_DATA_LENGTH:J

    const-string v0, "h2.modifyOnWrite"

    .line 299
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->MODIFY_ON_WRITE:Z

    const-string v0, "h2.nioLoadMapped"

    .line 307
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->NIO_LOAD_MAPPED:Z

    const-string v0, "h2.nioCleanerHack"

    .line 317
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->NIO_CLEANER_HACK:Z

    const-string v0, "h2.objectCache"

    .line 325
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE:Z

    const-string v0, "h2.objectCacheMaxPerElementSize"

    const/16 v6, 0x1000

    .line 333
    invoke-static {v0, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_MAX_PER_ELEMENT_SIZE:I

    const-string v0, "h2.objectCacheSize"

    const/16 v6, 0x400

    .line 341
    invoke-static {v0, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/h2/util/MathUtils;->nextPowerOf2(I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->OBJECT_CACHE_SIZE:I

    const-string v0, "h2.oldStyleOuterJoin"

    .line 349
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->OLD_STYLE_OUTER_JOIN:Z

    const-string v0, "h2.pgClientEncoding"

    const-string v6, "UTF-8"

    .line 358
    invoke-static {v0, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->PG_DEFAULT_CLIENT_ENCODING:Ljava/lang/String;

    const-string v0, "h2.prefixTempFile"

    const-string v6, "h2.temp"

    .line 365
    invoke-static {v0, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->PREFIX_TEMP_FILE:Ljava/lang/String;

    const-string v0, "h2.serverCachedObjects"

    const/16 v6, 0x40

    .line 372
    invoke-static {v0, v6}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->SERVER_CACHED_OBJECTS:I

    const-string v0, "h2.serverResultSetFetchSize"

    .line 380
    invoke-static {v0, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->SERVER_RESULT_SET_FETCH_SIZE:I

    const-string v0, "h2.socketConnectRetry"

    .line 389
    invoke-static {v0, v5}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_RETRY:I

    const-string v0, "h2.socketConnectTimeout"

    const/16 v4, 0x7d0

    .line 397
    invoke-static {v0, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lorg/h2/engine/SysProperties;->SOCKET_CONNECT_TIMEOUT:I

    const-string v0, "h2.sortBinaryUnsigned"

    .line 406
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->SORT_BINARY_UNSIGNED:Z

    const-string v0, "h2.sortNullsHigh"

    .line 416
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->SORT_NULLS_HIGH:Z

    const-string v0, "h2.splitFileSizeShift"

    const/16 v4, 0x1e

    .line 423
    invoke-static {v0, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;I)I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lorg/h2/engine/SysProperties;->SPLIT_FILE_SIZE_SHIFT:J

    const-string v0, "h2.syncMethod"

    const-string v4, "sync"

    .line 436
    invoke-static {v0, v4}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->SYNC_METHOD:Ljava/lang/String;

    const-string v0, "h2.traceIO"

    .line 443
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->TRACE_IO:Z

    const-string v0, "h2.threadDeadlockDetector"

    .line 451
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->THREAD_DEADLOCK_DETECTOR:Z

    const-string v0, "h2.implicitRelativePath"

    .line 460
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->IMPLICIT_RELATIVE_PATH:Z

    const-string v0, "h2.urlMap"

    .line 470
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->URL_MAP:Ljava/lang/String;

    const-string v0, "h2.useThreadContextClassLoader"

    .line 479
    invoke-static {v0, v3}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->USE_THREAD_CONTEXT_CLASS_LOADER:Z

    const-string v0, "h2.serializeJavaObject"

    .line 512
    invoke-static {v0, v2}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/h2/engine/SysProperties;->serializeJavaObject:Z

    const-string v0, "h2.javaObjectSerializer"

    .line 522
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/SysProperties;->JAVA_OBJECT_SERIALIZER:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAutoScaledForMemoryProperty(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 567
    invoke-static {p0, v0}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 570
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 575
    :catch_0
    :cond_0
    invoke-static {p1}, Lorg/h2/util/Utils;->scaleForAvailableMemory(I)I

    move-result p0

    return p0
.end method

.method public static getBaseDir()Ljava/lang/String;
    .locals 2

    const-string v0, "h2.baseDir"

    const/4 v1, 0x0

    .line 545
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getScriptDirectory()Ljava/lang/String;
    .locals 2

    const-string v0, "h2.scriptDirectory"

    const-string v1, ""

    .line 557
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static setBaseDir(Ljava/lang/String;)V
    .locals 1

    const-string v0, "/"

    .line 535
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v0, "h2.baseDir"

    .line 538
    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
