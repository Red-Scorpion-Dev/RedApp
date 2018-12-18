.class public Lorg/h2/engine/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final ALLOW_LITERALS_ALL:I = 0x2

.field public static final ALLOW_LITERALS_NONE:I = 0x0

.field public static final ALLOW_LITERALS_NUMBERS:I = 0x1

.field public static final BLOB_SEARCH:Z = false

.field public static final BUILD_DATE:Ljava/lang/String; = "2016-05-26"

.field public static final BUILD_DATE_STABLE:Ljava/lang/String; = "2014-04-05"

.field public static final BUILD_ID:I = 0xc0

.field public static final BUILD_ID_STABLE:I = 0xb0

.field public static final BUILD_SNAPSHOT:Z = false

.field public static final BUILD_VENDOR_AND_VERSION:Ljava/lang/String; = null

.field public static final CACHE_MIN_RECORDS:I = 0x10

.field public static final CACHE_SIZE_DEFAULT:I = 0x10000

.field public static final CACHE_TYPE_DEFAULT:Ljava/lang/String; = "LRU"

.field public static final CLUSTERING_DISABLED:Ljava/lang/String; = "\'\'"

.field public static final CLUSTERING_ENABLED:Ljava/lang/String; = "TRUE"

.field public static final CONN_URL_COLUMNLIST:Ljava/lang/String; = "jdbc:columnlist:connection"

.field public static final CONN_URL_INTERNAL:Ljava/lang/String; = "jdbc:default:connection"

.field public static final COST_ROW_OFFSET:I = 0x3e8

.field public static final DEADLOCK_CHECK:I = 0x64

.field public static final DEFAULT_HTTP_PORT:I = 0x1f92

.field public static final DEFAULT_LOCK_MODE:I = 0x3

.field public static final DEFAULT_MAX_LENGTH_INPLACE_LOB:I = 0x100

.field public static final DEFAULT_MAX_LOG_SIZE:J = 0x1000000L

.field public static final DEFAULT_MAX_MEMORY_UNDO:I = 0xc350

.field public static final DEFAULT_MAX_OPERATION_MEMORY:I = 0x186a0

.field public static final DEFAULT_PAGE_SIZE:I = 0x1000

.field public static final DEFAULT_RESULT_SET_CONCURRENCY:I = 0x3ef

.field public static final DEFAULT_TCP_PORT:I = 0x2384

.field public static final DEFAULT_WRITE_DELAY:I = 0x1f4

.field public static final ENCRYPTION_KEY_HASH_ITERATIONS:I = 0x400

.field public static final FILE_BLOCK_SIZE:I = 0x10

.field public static final INITIAL_LOCK_TIMEOUT:I = 0x7d0

.field public static final IO_BUFFER_SIZE:I = 0x1000

.field public static final IO_BUFFER_SIZE_COMPRESS:I = 0x20000

.field public static final LOCK_MODE_OFF:I = 0x0

.field public static final LOCK_MODE_READ_COMMITTED:I = 0x3

.field public static final LOCK_MODE_TABLE:I = 0x1

.field public static final LOCK_MODE_TABLE_GC:I = 0x2

.field public static final LOCK_SLEEP:I = 0x3e8

.field public static final MAX_PARAMETER_INDEX:I = 0x186a0

.field public static final MEMORY_DATA:I = 0x18

.field public static final MEMORY_FACTOR:I = 0x40

.field public static final MEMORY_OBJECT:I = 0x18

.field public static final MEMORY_PAGE_BTREE:I = 0xb8

.field public static final MEMORY_PAGE_DATA:I = 0xf0

.field public static final MEMORY_PAGE_DATA_OVERFLOW:I = 0x78

.field public static final MEMORY_POINTER:I = 0x8

.field public static final MEMORY_ROW:I = 0x28

.field public static final MIN_WRITE_DELAY:I = 0x5

.field public static final PREFIX_INDEX:Ljava/lang/String; = "INDEX_"

.field public static final PREFIX_JOIN:Ljava/lang/String; = "SYSTEM_JOIN_"

.field public static final PREFIX_PRIMARY_KEY:Ljava/lang/String; = "PRIMARY_KEY_"

.field public static final PUBLIC_ROLE_NAME:Ljava/lang/String; = "PUBLIC"

.field public static final QUERY_STATISTICS_MAX_ENTRIES:I = 0x64

.field public static final SALT_LEN:I = 0x8

.field public static final SCHEMA_MAIN:Ljava/lang/String; = "PUBLIC"

.field public static final SELECTIVITY_DEFAULT:I = 0x32

.field public static final SELECTIVITY_DISTINCT_COUNT:I = 0x2710

.field public static final SERVER_PROPERTIES_DIR:Ljava/lang/String; = "~"

.field public static final SERVER_PROPERTIES_NAME:Ljava/lang/String; = ".h2.server.properties"

.field public static final SLOW_QUERY_LIMIT_MS:J = 0x64L

.field public static final START_URL:Ljava/lang/String; = "jdbc:h2:"

.field public static final SUFFIX_DB_FILE:Ljava/lang/String; = ".db"

.field public static final SUFFIX_LOBS_DIRECTORY:Ljava/lang/String; = ".lobs.db"

.field public static final SUFFIX_LOB_FILE:Ljava/lang/String; = ".lob.db"

.field public static final SUFFIX_LOCK_FILE:Ljava/lang/String; = ".lock.db"

.field public static final SUFFIX_MV_FILE:Ljava/lang/String; = ".mv.db"

.field public static final SUFFIX_MV_STORE_NEW_FILE:Ljava/lang/String; = ".newFile"

.field public static final SUFFIX_MV_STORE_TEMP_FILE:Ljava/lang/String; = ".tempFile"

.field public static final SUFFIX_OLD_DATABASE_FILE:Ljava/lang/String; = ".data.db"

.field public static final SUFFIX_PAGE_FILE:Ljava/lang/String; = ".h2.db"

.field public static final SUFFIX_TEMP_FILE:Ljava/lang/String; = ".temp.db"

.field public static final SUFFIX_TRACE_FILE:Ljava/lang/String; = ".trace.db"

.field public static final TCP_PROTOCOL_VERSION_10:I = 0xa

.field public static final TCP_PROTOCOL_VERSION_11:I = 0xb

.field public static final TCP_PROTOCOL_VERSION_12:I = 0xc

.field public static final TCP_PROTOCOL_VERSION_13:I = 0xd

.field public static final TCP_PROTOCOL_VERSION_14:I = 0xe

.field public static final TCP_PROTOCOL_VERSION_15:I = 0xf

.field public static final TCP_PROTOCOL_VERSION_6:I = 0x6

.field public static final TCP_PROTOCOL_VERSION_7:I = 0x7

.field public static final TCP_PROTOCOL_VERSION_8:I = 0x8

.field public static final TCP_PROTOCOL_VERSION_9:I = 0x9

.field public static final THROTTLE_DELAY:I = 0x32

.field public static final UNDO_BLOCK_SIZE:I = 0x100000

.field public static final URL_FORMAT:Ljava/lang/String; = "jdbc:h2:{ {.|mem:}[name] | [file:]fileName | {tcp|ssl}:[//]server[:port][,server2[:port]]/name }[;key=value...]"

.field public static final USER_PACKAGE:Ljava/lang/String; = "org.h2.dynamic"

.field public static final UTF8:Ljava/nio/charset/Charset;

.field public static final VERSION_MAJOR:I = 0x1

.field public static final VERSION_MINOR:I = 0x4

.field public static final VIEW_COST_CACHE_MAX_AGE:I = 0x2710

.field public static final VIEW_INDEX_CACHE_SIZE:I = 0x40


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 494
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullVersion()Ljava/lang/String;
    .locals 2

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lorg/h2/engine/Constants;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2016-05-26"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "1.4.192"

    .line 525
    sget-object v1, Lorg/h2/engine/Constants;->BUILD_VENDOR_AND_VERSION:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lorg/h2/engine/Constants;->BUILD_VENDOR_AND_VERSION:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getVersionStable()Ljava/lang/Object;
    .locals 1

    const-string v0, "1.3.176"

    return-object v0
.end method
