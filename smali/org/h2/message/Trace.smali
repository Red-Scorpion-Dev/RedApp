.class public Lorg/h2/message/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# static fields
.field public static final COMMAND:I = 0x0

.field public static final CONSTRAINT:I = 0x1

.field public static final DATABASE:I = 0x2

.field public static final FILE_LOCK:I = 0x4

.field public static final FUNCTION:I = 0x3

.field public static final INDEX:I = 0x5

.field public static final JDBC:I = 0x6

.field public static final JDBCX:I = 0xf

.field public static final LOCK:I = 0x7

.field public static final MODULE_NAMES:[Ljava/lang/String;

.field public static final PAGE_STORE:I = 0xe

.field public static final SCHEMA:I = 0x8

.field public static final SEQUENCE:I = 0x9

.field public static final SETTING:I = 0xa

.field public static final TABLE:I = 0xb

.field public static final TRIGGER:I = 0xc

.field public static final USER:I = 0xd


# instance fields
.field private final lineSeparator:Ljava/lang/String;

.field private final module:Ljava/lang/String;

.field private traceLevel:I

.field private final traceWriter:Lorg/h2/message/TraceWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x10

    .line 105
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "command"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "constraint"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "database"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "function"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "fileLock"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "index"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "jdbc"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "lock"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "schema"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "sequence"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "setting"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "table"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "trigger"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "user"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "pageStore"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string v1, "JDBCX"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/h2/message/TraceWriter;I)V
    .locals 1

    .line 130
    sget-object v0, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-direct {p0, p1, p2}, Lorg/h2/message/Trace;-><init>(Lorg/h2/message/TraceWriter;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lorg/h2/message/TraceWriter;Ljava/lang/String;)V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lorg/h2/message/Trace;->traceLevel:I

    .line 134
    iput-object p1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    .line 135
    iput-object p2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    .line 136
    sget-object p1, Lorg/h2/engine/SysProperties;->LINE_SEPARATOR:Ljava/lang/String;

    iput-object p1, p0, Lorg/h2/message/Trace;->lineSeparator:Ljava/lang/String;

    return-void
.end method

.method public static formatParams(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "+",
            "Lorg/h2/expression/ParameterInterface;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 247
    :cond_0
    new-instance v0, Lorg/h2/util/StatementBuilder;

    invoke-direct {v0}, Lorg/h2/util/StatementBuilder;-><init>()V

    .line 250
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/h2/expression/ParameterInterface;

    .line 251
    invoke-interface {v3}, Lorg/h2/expression/ParameterInterface;->isValueSet()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_2

    const-string v1, " {"

    .line 253
    invoke-virtual {v0, v1}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    const/4 v1, 0x1

    :cond_2
    const-string v4, ", "

    .line 256
    invoke-virtual {v0, v4}, Lorg/h2/util/StatementBuilder;->appendExceptFirst(Ljava/lang/String;)V

    .line 257
    invoke-interface {v3}, Lorg/h2/expression/ParameterInterface;->getParamValue()Lorg/h2/value/Value;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    int-to-long v4, v2

    .line 258
    invoke-virtual {v0, v4, v5}, Lorg/h2/util/StatementBuilder;->append(J)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lorg/h2/value/Value;->getTraceSQL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/h2/util/StatementBuilder;->append(Ljava/lang/String;)Lorg/h2/util/StatementBuilder;

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/16 p0, 0x7d

    .line 262
    invoke-virtual {v0, p0}, Lorg/h2/util/StatementBuilder;->append(C)Lorg/h2/util/StatementBuilder;

    .line 264
    :cond_4
    invoke-virtual {v0}, Lorg/h2/util/StatementBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isEnabled(I)Z
    .locals 2

    .line 150
    iget v0, p0, Lorg/h2/message/Trace;->traceLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    invoke-interface {v0, p1}, Lorg/h2/message/TraceWriter;->isEnabled(I)Z

    move-result p1

    return p1

    .line 153
    :cond_0
    iget v0, p0, Lorg/h2/message/Trace;->traceLevel:I

    if-gt p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x3

    .line 330
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    iget-object v1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x3

    .line 318
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 320
    iget-object p2, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v1, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, p1, v2}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public debug(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    .line 341
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p2, p1}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method debugCode(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x3

    .line 365
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/h2/message/Trace;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/**/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    .line 181
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p2, p1}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs error(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 196
    iget-object p3, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v1, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    invoke-interface {p3, v0, v1, p2, p1}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public info(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x2

    .line 206
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public varargs info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x2

    .line 218
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {p1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 220
    iget-object p2, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v1, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p2, v0, v1, p1, v2}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method info(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    .line 231
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    invoke-interface {v1, v0, v2, p2, p1}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public infoCode(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x2

    .line 353
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object v2, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/h2/message/Trace;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/**/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, p1, v3}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public infoSQL(Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 7

    const/4 v0, 0x2

    .line 276
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 280
    iget-object v2, p0, Lorg/h2/message/Trace;->lineSeparator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/*SQL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 282
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lez v3, :cond_1

    const-string v2, " l:"

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_1
    if-lez p3, :cond_2

    const-string v2, " #:"

    .line 294
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_2
    const-wide/16 v5, 0x0

    cmp-long p3, p4, v5

    if-lez p3, :cond_3

    const-string p3, " t:"

    .line 298
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    const/16 p3, 0x20

    .line 301
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    const-string p3, "*/"

    .line 303
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lorg/h2/util/StringUtils;->javaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lorg/h2/util/StringUtils;->javaEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3b

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 308
    iget-object p2, p0, Lorg/h2/message/Trace;->traceWriter:Lorg/h2/message/TraceWriter;

    iget-object p3, p0, Lorg/h2/message/Trace;->module:Ljava/lang/String;

    const/4 p4, 0x0

    invoke-interface {p2, v0, p3, p1, p4}, Lorg/h2/message/TraceWriter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x3

    .line 171
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    const/4 v0, 0x2

    .line 162
    invoke-direct {p0, v0}, Lorg/h2/message/Trace;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public setLevel(I)V
    .locals 0

    .line 146
    iput p1, p0, Lorg/h2/message/Trace;->traceLevel:I

    return-void
.end method
