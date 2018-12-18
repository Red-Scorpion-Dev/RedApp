.class public Lorg/h2/command/dml/SetTypes;
.super Ljava/lang/Object;
.source "SetTypes.java"


# static fields
.field public static final ALLOW_LITERALS:I = 0x18

.field public static final BATCH_JOINS:I = 0x2c

.field public static final BINARY_COLLATION:I = 0x26

.field public static final CACHE_SIZE:I = 0x8

.field public static final CLUSTER:I = 0xd

.field public static final COLLATION:I = 0xc

.field public static final COMPRESS_LOB:I = 0x17

.field public static final CREATE_BUILD:I = 0x22

.field public static final DATABASE_EVENT_LISTENER:I = 0xf

.field public static final DB_CLOSE_DELAY:I = 0x12

.field public static final DEFAULT_LOCK_TIMEOUT:I = 0x6

.field public static final DEFAULT_TABLE_TYPE:I = 0x7

.field public static final EXCLUSIVE:I = 0x21

.field public static final FORCE_JOIN_ORDER:I = 0x2d

.field public static final IGNORECASE:I = 0x1

.field public static final JAVA_OBJECT_SERIALIZER:I = 0x27

.field public static final LOCK_MODE:I = 0x11

.field public static final LOCK_TIMEOUT:I = 0x5

.field public static final LOG:I = 0x13

.field public static final MAX_LENGTH_INPLACE_LOB:I = 0x16

.field public static final MAX_LOG_SIZE:I = 0x2

.field public static final MAX_MEMORY_ROWS:I = 0x10

.field public static final MAX_MEMORY_UNDO:I = 0x15

.field public static final MAX_OPERATION_MEMORY:I = 0x20

.field public static final MODE:I = 0x3

.field public static final MULTI_THREADED:I = 0x19

.field public static final MVCC:I = 0x1f

.field public static final OPTIMIZE_REUSE_RESULTS:I = 0x1b

.field public static final QUERY_STATISTICS:I = 0x29

.field public static final QUERY_STATISTICS_MAX_ENTRIES:I = 0x2a

.field public static final QUERY_TIMEOUT:I = 0x24

.field public static final READONLY:I = 0x4

.field public static final REDO_LOG_BINARY:I = 0x25

.field public static final REFERENTIAL_INTEGRITY:I = 0x1e

.field public static final RETENTION_TIME:I = 0x28

.field public static final ROW_FACTORY:I = 0x2b

.field public static final SCHEMA:I = 0x1a

.field public static final SCHEMA_SEARCH_PATH:I = 0x1c

.field public static final THROTTLE:I = 0x14

.field public static final TRACE_LEVEL_FILE:I = 0xa

.field public static final TRACE_LEVEL_SYSTEM_OUT:I = 0x9

.field public static final TRACE_MAX_FILE_SIZE:I = 0xb

.field private static final TYPES:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNDO_LOG:I = 0x1d

.field public static final VARIABLE:I = 0x23

.field public static final WRITE_DELAY:I = 0xe


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 241
    invoke-static {}, Lorg/h2/util/New;->arrayList()Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lorg/h2/command/dml/SetTypes;->TYPES:Ljava/util/ArrayList;

    .line 248
    sget-object v0, Lorg/h2/command/dml/SetTypes;->TYPES:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 249
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "IGNORECASE"

    const/4 v2, 0x1

    .line 250
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MAX_LOG_SIZE"

    const/4 v2, 0x2

    .line 251
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MODE"

    const/4 v2, 0x3

    .line 252
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "READONLY"

    const/4 v2, 0x4

    .line 253
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "LOCK_TIMEOUT"

    const/4 v2, 0x5

    .line 254
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DEFAULT_LOCK_TIMEOUT"

    const/4 v2, 0x6

    .line 255
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DEFAULT_TABLE_TYPE"

    const/4 v2, 0x7

    .line 256
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "CACHE_SIZE"

    const/16 v2, 0x8

    .line 257
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "TRACE_LEVEL_SYSTEM_OUT"

    const/16 v2, 0x9

    .line 258
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "TRACE_LEVEL_FILE"

    const/16 v2, 0xa

    .line 259
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "TRACE_MAX_FILE_SIZE"

    const/16 v2, 0xb

    .line 260
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "COLLATION"

    const/16 v2, 0xc

    .line 261
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "CLUSTER"

    const/16 v2, 0xd

    .line 262
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "WRITE_DELAY"

    const/16 v2, 0xe

    .line 263
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DATABASE_EVENT_LISTENER"

    const/16 v2, 0xf

    .line 264
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MAX_MEMORY_ROWS"

    const/16 v2, 0x10

    .line 265
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "LOCK_MODE"

    const/16 v2, 0x11

    .line 266
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "DB_CLOSE_DELAY"

    const/16 v2, 0x12

    .line 267
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "LOG"

    const/16 v2, 0x13

    .line 268
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "THROTTLE"

    const/16 v2, 0x14

    .line 269
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MAX_MEMORY_UNDO"

    const/16 v2, 0x15

    .line 270
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MAX_LENGTH_INPLACE_LOB"

    const/16 v2, 0x16

    .line 271
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "COMPRESS_LOB"

    const/16 v2, 0x17

    .line 272
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "ALLOW_LITERALS"

    const/16 v2, 0x18

    .line 273
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MULTI_THREADED"

    const/16 v2, 0x19

    .line 274
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "SCHEMA"

    const/16 v2, 0x1a

    .line 275
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "OPTIMIZE_REUSE_RESULTS"

    const/16 v2, 0x1b

    .line 276
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "SCHEMA_SEARCH_PATH"

    const/16 v2, 0x1c

    .line 277
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "UNDO_LOG"

    const/16 v2, 0x1d

    .line 278
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "REFERENTIAL_INTEGRITY"

    const/16 v2, 0x1e

    .line 279
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MVCC"

    const/16 v2, 0x1f

    .line 280
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "MAX_OPERATION_MEMORY"

    const/16 v2, 0x20

    .line 281
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "EXCLUSIVE"

    const/16 v2, 0x21

    .line 282
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "CREATE_BUILD"

    const/16 v2, 0x22

    .line 283
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "@"

    const/16 v2, 0x23

    .line 284
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "QUERY_TIMEOUT"

    const/16 v2, 0x24

    .line 285
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "REDO_LOG_BINARY"

    const/16 v2, 0x25

    .line 286
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "BINARY_COLLATION"

    const/16 v2, 0x26

    .line 287
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "JAVA_OBJECT_SERIALIZER"

    const/16 v2, 0x27

    .line 288
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "RETENTION_TIME"

    const/16 v2, 0x28

    .line 289
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "QUERY_STATISTICS"

    const/16 v2, 0x29

    .line 290
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "QUERY_STATISTICS_MAX_ENTRIES"

    const/16 v2, 0x2a

    .line 291
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "ROW_FACTORY"

    const/16 v2, 0x2b

    .line 292
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "BATCH_JOINS"

    const/16 v2, 0x2c

    .line 293
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v1, "FORCE_JOIN_ORDER"

    const/16 v2, 0x2d

    .line 294
    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 304
    :goto_0
    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 305
    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getTypeName(I)Ljava/lang/String;
    .locals 1

    .line 323
    invoke-static {}, Lorg/h2/command/dml/SetTypes;->getTypes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 313
    sget-object v0, Lorg/h2/command/dml/SetTypes;->TYPES:Ljava/util/ArrayList;

    return-object v0
.end method
