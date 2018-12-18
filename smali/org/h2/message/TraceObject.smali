.class public Lorg/h2/message/TraceObject;
.super Ljava/lang/Object;
.source "TraceObject.java"


# static fields
.field protected static final ARRAY:I = 0x10

.field protected static final BLOB:I = 0x9

.field protected static final CALLABLE_STATEMENT:I = 0x0

.field protected static final CLOB:I = 0xa

.field protected static final CONNECTION:I = 0x1

.field protected static final DATABASE_META_DATA:I = 0x2

.field protected static final DATA_SOURCE:I = 0xc

.field private static final ID:[I

.field private static final LAST:I = 0x11

.field protected static final PARAMETER_META_DATA:I = 0xb

.field private static final PREFIX:[Ljava/lang/String;

.field protected static final PREPARED_STATEMENT:I = 0x3

.field protected static final RESULT_SET:I = 0x4

.field protected static final RESULT_SET_META_DATA:I = 0x5

.field protected static final SAVEPOINT:I = 0x6

.field protected static final STATEMENT:I = 0x8

.field protected static final XA_DATA_SOURCE:I = 0xd

.field protected static final XID:I = 0xf


# instance fields
.field private id:I

.field protected trace:Lorg/h2/message/Trace;

.field private traceType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x11

    .line 94
    new-array v1, v0, [I

    sput-object v1, Lorg/h2/message/TraceObject;->ID:[I

    .line 95
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "call"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "conn"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "dbMeta"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "prep"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "rs"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "rsMeta"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "sp"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "ex"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "stat"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "blob"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "clob"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "pMeta"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "ds"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "xads"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "xares"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "xid"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string v1, "ar"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lorg/h2/message/TraceObject;->PREFIX:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getNextId(I)I
    .locals 3

    .line 141
    sget-object v0, Lorg/h2/message/TraceObject;->ID:[I

    aget v1, v0, p0

    add-int/lit8 v2, v1, 0x1

    aput v2, v0, p0

    return v1
.end method

.method protected static quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 239
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 316
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteBigDecimal(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 291
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new BigDecimal(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteBytes([B)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 304
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "org.h2.util.StringUtils.convertHexToBytes(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lorg/h2/util/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteDate(Ljava/sql/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 278
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Date.valueOf(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/sql/Date;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteIntArray([I)Ljava/lang/String;
    .locals 0

    .line 326
    invoke-static {p0}, Lorg/h2/util/StringUtils;->quoteJavaIntArray([I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteMap(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 339
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "new Map()"

    return-object p0

    .line 342
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "new Map() /* "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " */"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteTime(Ljava/sql/Time;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Time.valueOf(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/sql/Time;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static quoteTimestamp(Ljava/sql/Timestamp;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Timestamp.valueOf(\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected debugCode(Ljava/lang/String;)V
    .locals 3

    .line 227
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected debugCodeAssign(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 173
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lorg/h2/message/TraceObject;->PREFIX:[Ljava/lang/String;

    aget-object p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ";"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected debugCodeCall(Ljava/lang/String;)V
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "();"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected debugCodeCall(Ljava/lang/String;J)V
    .locals 3

    .line 200
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected debugCodeCall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 215
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/h2/message/TraceObject;->getTraceObjectName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/message/TraceObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/h2/message/Trace;->debugCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getTraceId()I
    .locals 1

    .line 124
    iget v0, p0, Lorg/h2/message/TraceObject;->id:I

    return v0
.end method

.method public getTraceObjectName()Ljava/lang/String;
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/h2/message/TraceObject;->PREFIX:[Ljava/lang/String;

    iget v2, p0, Lorg/h2/message/TraceObject;->traceType:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/h2/message/TraceObject;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDebugEnabled()Z
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method protected isInfoEnabled()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    invoke-virtual {v0}, Lorg/h2/message/Trace;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method protected logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;
    .locals 2

    .line 352
    invoke-static {p1}, Lorg/h2/message/DbException;->toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    .line 353
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    if-nez v0, :cond_0

    .line 354
    invoke-static {p1}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {p1}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    const/16 v1, 0x59d8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x5dc0

    if-ge v0, v1, :cond_1

    .line 358
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    const-string v1, "exception"

    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->info(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_1
    iget-object v0, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    const-string v1, "exception"

    invoke-virtual {v0, p1, v1}, Lorg/h2/message/Trace;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method protected setTrace(Lorg/h2/message/Trace;II)V
    .locals 0

    .line 115
    iput-object p1, p0, Lorg/h2/message/TraceObject;->trace:Lorg/h2/message/Trace;

    .line 116
    iput p2, p0, Lorg/h2/message/TraceObject;->traceType:I

    .line 117
    iput p3, p0, Lorg/h2/message/TraceObject;->id:I

    return-void
.end method

.method protected unsupported(Ljava/lang/String;)Ljava/sql/SQLException;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 375
    :try_start_0
    invoke-static {p1}, Lorg/h2/message/DbException;->getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 377
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceObject;->logAndConvert(Ljava/lang/Exception;)Ljava/sql/SQLException;

    move-result-object p1

    return-object p1
.end method
