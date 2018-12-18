.class public Lorg/h2/message/DbException;
.super Ljava/lang/RuntimeException;
.source "DbException.java"


# static fields
.field private static final MESSAGES:Ljava/util/Properties;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private source:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    :try_start_0
    const-string v0, "/org/h2/res/_messages_en.prop"

    .line 41
    invoke-static {v0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    sget-object v1, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 46
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "en"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/org/h2/res/_messages_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".prop"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    .line 53
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lorg/h2/util/SortedProperties;->fromLines(Ljava/lang/String;)Lorg/h2/util/SortedProperties;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 57
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v3, "#"

    .line 58
    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    sget-object v3, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    sget-object v3, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    invoke-virtual {v3, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 67
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private constructor <init>(Ljava/sql/SQLException;)V
    .locals 1

    .line 74
    invoke-virtual {p1}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;
    .locals 4

    .line 280
    instance-of v0, p0, Lorg/h2/message/DbException;

    if-eqz v0, :cond_0

    .line 281
    check-cast p0, Lorg/h2/message/DbException;

    return-object p0

    .line 282
    :cond_0
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_1

    .line 283
    new-instance v0, Lorg/h2/message/DbException;

    check-cast p0, Ljava/sql/SQLException;

    invoke-direct {v0, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object v0

    .line 284
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    .line 285
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    .line 286
    :cond_2
    instance-of v0, p0, Ljava/io/IOException;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    const v0, 0x15fac

    .line 287
    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, p0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    .line 288
    :cond_3
    instance-of v0, p0, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_4

    const v0, 0x15ffc

    .line 289
    new-array v1, v2, [Ljava/lang/String;

    invoke-static {v0, p0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    .line 290
    :cond_4
    instance-of v0, p0, Ljava/lang/StackOverflowError;

    const v3, 0xc350

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/LinkageError;

    if-eqz v0, :cond_5

    goto :goto_0

    .line 292
    :cond_5
    instance-of v0, p0, Ljava/lang/Error;

    if-nez v0, :cond_6

    .line 295
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    .line 293
    :cond_6
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 291
    :cond_7
    :goto_0
    new-array v0, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v3, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static convertIOException(Ljava/io/IOException;Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 324
    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    .line 325
    instance-of v2, p1, Lorg/h2/message/DbException;

    if-eqz v2, :cond_0

    .line 326
    check-cast p1, Lorg/h2/message/DbException;

    return-object p1

    :cond_0
    const p1, 0x15fac

    .line 328
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    :cond_1
    const v2, 0x15faf

    const/4 v3, 0x2

    .line 330
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    aput-object p1, v3, v0

    invoke-static {v2, p0, v3}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static convertInvocation(Ljava/lang/reflect/InvocationTargetException;Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 3

    .line 307
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    .line 308
    instance-of v0, p0, Ljava/sql/SQLException;

    if-nez v0, :cond_2

    instance-of v0, p0, Lorg/h2/message/DbException;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 311
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const v0, 0x15ff9

    const/4 v1, 0x1

    .line 312
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, p0, v1}, Lorg/h2/message/DbException;->get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0

    .line 309
    :cond_2
    :goto_1
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 2

    .line 355
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 356
    check-cast p0, Ljava/io/IOException;

    return-object p0

    .line 358
    :cond_0
    instance-of v0, p0, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz v0, :cond_1

    .line 359
    move-object v0, p0

    check-cast v0, Lorg/h2/jdbc/JdbcSQLException;

    .line 360
    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcSQLException;->getOriginalCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 361
    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcSQLException;->getOriginalCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 364
    :cond_1
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static get(I)Lorg/h2/message/DbException;
    .locals 1

    const/4 v0, 0x0

    .line 144
    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static get(ILjava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    const/4 v0, 0x1

    .line 155
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static varargs get(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 1

    .line 168
    new-instance v0, Lorg/h2/message/DbException;

    invoke-static {p0, p1, p2}, Lorg/h2/message/DbException;->getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public static varargs get(I[Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    .line 179
    new-instance v0, Lorg/h2/message/DbException;

    const/4 v1, 0x0

    invoke-static {p0, v1, p1}, Lorg/h2/message/DbException;->getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object v0
.end method

.method public static getInvalidValueException(Ljava/lang/String;Ljava/lang/Object;)Lorg/h2/message/DbException;
    .locals 2

    const/4 v0, 0x2

    .line 228
    new-array v0, v0, [Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const p0, 0x15f98

    invoke-static {p0, v0}, Lorg/h2/message/DbException;->get(I[Ljava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method private static varargs getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;
    .locals 7

    .line 343
    invoke-static {p0}, Lorg/h2/api/ErrorCode;->getState(I)Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v3, p2}, Lorg/h2/message/DbException;->translate(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 345
    new-instance p2, Lorg/h2/jdbc/JdbcSQLException;

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lorg/h2/jdbc/JdbcSQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    return-object p2
.end method

.method public static getSyntaxError(Ljava/lang/String;I)Lorg/h2/message/DbException;
    .locals 0

    .line 190
    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->addAsterisk(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const p1, 0xa410

    .line 191
    invoke-static {p1, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static getSyntaxError(Ljava/lang/String;ILjava/lang/String;)Lorg/h2/message/DbException;
    .locals 2

    .line 204
    invoke-static {p0, p1}, Lorg/h2/util/StringUtils;->addAsterisk(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 205
    new-instance p1, Lorg/h2/message/DbException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p2, v0, p0

    const p0, 0xa411

    const/4 p2, 0x0

    invoke-static {p0, p2, v0}, Lorg/h2/message/DbException;->getJdbcSQLException(ILjava/lang/Throwable;[Ljava/lang/String;)Lorg/h2/jdbc/JdbcSQLException;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object p1
.end method

.method public static getUnsupportedException(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 1

    const v0, 0xc3b4

    .line 216
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    return-object p0
.end method

.method public static throwInternalError()Ljava/lang/RuntimeException;
    .locals 1

    const-string v0, "Unexpected code path"

    .line 255
    invoke-static {v0}, Lorg/h2/message/DbException;->throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static throwInternalError(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    .line 242
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 243
    invoke-static {v0}, Lorg/h2/message/DbException;->traceThrowable(Ljava/lang/Throwable;)V

    .line 244
    throw v0
.end method

.method public static toSQLException(Ljava/lang/Exception;)Ljava/sql/SQLException;
    .locals 1

    .line 265
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_0

    .line 266
    check-cast p0, Ljava/sql/SQLException;

    return-object p0

    .line 268
    :cond_0
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    invoke-virtual {p0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p0

    return-object p0
.end method

.method public static traceThrowable(Ljava/lang/Throwable;)V
    .locals 1

    .line 381
    invoke-static {}, Ljava/sql/DriverManager;->getLogWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method private static varargs translate(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 79
    sget-object v0, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lorg/h2/message/DbException;->MESSAGES:Ljava/util/Properties;

    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(Message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_4

    const/4 p0, 0x0

    .line 87
    :goto_1
    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 88
    aget-object v1, p1, p0

    if-eqz v1, :cond_2

    .line 89
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 90
    invoke-static {v1}, Lorg/h2/util/StringUtils;->quoteIdentifier(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, p0

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    .line 93
    :cond_3
    check-cast p1, [Ljava/lang/Object;

    invoke-static {v0, p1}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public addSQL(Ljava/lang/String;)Lorg/h2/message/DbException;
    .locals 8

    .line 124
    invoke-virtual {p0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v5

    .line 125
    instance-of v0, v5, Lorg/h2/jdbc/JdbcSQLException;

    if-eqz v0, :cond_1

    .line 126
    check-cast v5, Lorg/h2/jdbc/JdbcSQLException;

    .line 127
    invoke-virtual {v5}, Lorg/h2/jdbc/JdbcSQLException;->getSQL()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {v5, p1}, Lorg/h2/jdbc/JdbcSQLException;->setSQL(Ljava/lang/String;)V

    :cond_0
    return-object p0

    .line 132
    :cond_1
    new-instance v7, Lorg/h2/jdbc/JdbcSQLException;

    invoke-virtual {v5}, Ljava/sql/SQLException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/sql/SQLException;->getSQLState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v4

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/h2/jdbc/JdbcSQLException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Throwable;Ljava/lang/String;)V

    .line 134
    new-instance p1, Lorg/h2/message/DbException;

    invoke-direct {p1, v7}, Lorg/h2/message/DbException;-><init>(Ljava/sql/SQLException;)V

    return-object p1
.end method

.method public getErrorCode()I
    .locals 1

    .line 113
    invoke-virtual {p0}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object v0

    invoke-virtual {v0}, Ljava/sql/SQLException;->getErrorCode()I

    move-result v0

    return v0
.end method

.method public getSQLException()Ljava/sql/SQLException;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lorg/h2/message/DbException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/sql/SQLException;

    return-object v0
.end method

.method public getSource()Ljava/lang/Object;
    .locals 1

    .line 368
    iget-object v0, p0, Lorg/h2/message/DbException;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lorg/h2/message/DbException;->source:Ljava/lang/Object;

    return-void
.end method
