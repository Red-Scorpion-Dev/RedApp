.class public Lorg/h2/util/SourceCompiler;
.super Ljava/lang/Object;
.source "SourceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/h2/util/SourceCompiler$ClassFileManager;,
        Lorg/h2/util/SourceCompiler$JavaClassObject;,
        Lorg/h2/util/SourceCompiler$StringJavaFileObject;,
        Lorg/h2/util/SourceCompiler$GroovyCompiler;
    }
.end annotation


# static fields
.field private static final COMPILE_DIR:Ljava/lang/String;

.field private static final JAVAC_SUN:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final JAVA_COMPILER:Ljavax/tools/JavaCompiler;


# instance fields
.field final compiled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field final sources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field useJavaSystemCompiler:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "java.io.tmpdir"

    const-string v1, "."

    .line 57
    invoke-static {v0, v1}, Lorg/h2/util/Utils;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const/4 v0, 0x0

    .line 78
    :try_start_0
    invoke-static {}, Ljavax/tools/ToolProvider;->getSystemJavaCompiler()Ljavax/tools/JavaCompiler;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 83
    :goto_0
    sput-object v1, Lorg/h2/util/SourceCompiler;->JAVA_COMPILER:Ljavax/tools/JavaCompiler;

    :try_start_1
    const-string v1, "com.sun.tools.javac.Main"

    .line 86
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 90
    :catch_1
    sput-object v0, Lorg/h2/util/SourceCompiler;->JAVAC_SUN:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/SourceCompiler;->sources:Ljava/util/HashMap;

    .line 68
    invoke-static {}, Lorg/h2/util/New;->hashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    .line 73
    sget-boolean v0, Lorg/h2/engine/SysProperties;->JAVA_SYSTEM_COMPILER:Z

    iput-boolean v0, p0, Lorg/h2/util/SourceCompiler;->useJavaSystemCompiler:Z

    return-void
.end method

.method private static copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 333
    new-instance v0, Lorg/h2/util/SourceCompiler$2;

    invoke-direct {v0, p0, p1}, Lorg/h2/util/SourceCompiler$2;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/h2/util/SourceCompiler$2;->execute()Lorg/h2/util/Task;

    return-void
.end method

.method private static varargs exec([Ljava/lang/String;)I
    .locals 4

    .line 310
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 312
    :try_start_0
    new-instance v1, Ljava/lang/ProcessBuilder;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    move-result-object v2

    const-string v3, "JAVA_TOOL_OPTIONS"

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    invoke-virtual {v1, p0}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    .line 320
    invoke-virtual {v1}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/util/SourceCompiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/h2/util/SourceCompiler;->copyInThread(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    .line 324
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v2, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 325
    invoke-static {v1}, Lorg/h2/util/SourceCompiler;->handleSyntaxError(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 328
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method static getCompleteSourceCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "package "

    .line 247
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_1

    const-string v1, "package "

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p0, "@CODE"

    .line 254
    invoke-virtual {p2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const-string v1, "import java.util.*;\nimport java.math.*;\nimport java.sql.*;\n"

    if-ltz p0, :cond_2

    const/4 v1, 0x0

    .line 260
    invoke-virtual {p2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@CODE"

    .line 261
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 263
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "public class "

    .line 264
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " {\n    public static "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n}\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static handleSyntaxError(Ljava/lang/String;)V
    .locals 4

    .line 367
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 369
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "Note:"

    .line 370
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "warning:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x1

    :catch_0
    :cond_2
    if-nez v1, :cond_3

    return-void

    .line 382
    :cond_3
    sget-object v0, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lorg/h2/util/StringUtils;->replaceAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const v0, 0xa410

    .line 383
    invoke-static {v0, p0}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
.end method

.method private static isGroovySource(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "//groovy"

    .line 170
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "@groovy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static javacProcess(Ljava/io/File;)V
    .locals 3

    const/16 v0, 0x8

    .line 302
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "javac"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "-sourcepath"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "-d"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "-encoding"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "UTF-8"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x7

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/h2/util/SourceCompiler;->exec([Ljava/lang/String;)I

    return-void
.end method

.method private static declared-synchronized javacSun(Ljava/io/File;)V
    .locals 10

    const-class v0, Lorg/h2/util/SourceCompiler;

    monitor-enter v0

    .line 342
    :try_start_0
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    .line 343
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 344
    new-instance v3, Ljava/io/PrintStream;

    invoke-direct {v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 346
    :try_start_1
    invoke-static {v3}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 348
    sget-object v3, Lorg/h2/util/SourceCompiler;->JAVAC_SUN:Ljava/lang/Class;

    const-string v4, "compile"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 349
    sget-object v4, Lorg/h2/util/SourceCompiler;->JAVAC_SUN:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .line 350
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    const-string v9, "-sourcepath"

    aput-object v9, v7, v8

    sget-object v9, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    aput-object v9, v7, v5

    const/4 v5, 0x2

    const-string v9, "-d"

    aput-object v9, v7, v5

    const/4 v5, 0x3

    sget-object v9, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    aput-object v9, v7, v5

    const/4 v5, 0x4

    const-string v9, "-encoding"

    aput-object v9, v7, v5

    const/4 v5, 0x5

    const-string v9, "UTF-8"

    aput-object v9, v7, v5

    const/4 v5, 0x6

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v7, v5

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    sget-object v3, Lorg/h2/engine/Constants;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 357
    invoke-static {p0}, Lorg/h2/util/SourceCompiler;->handleSyntaxError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 361
    :try_start_2
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 363
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 359
    :try_start_3
    invoke-static {p0}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p0

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 361
    :goto_0
    :try_start_4
    invoke-static {v1}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 341
    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    return-object v0

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/h2/util/SourceCompiler;->sources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    invoke-static {v0}, Lorg/h2/util/SourceCompiler;->isGroovySource(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    invoke-static {v0, p1}, Lorg/h2/util/SourceCompiler$GroovyCompiler;->parseClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 134
    :cond_1
    new-instance v0, Lorg/h2/util/SourceCompiler$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/h2/util/SourceCompiler$1;-><init>(Lorg/h2/util/SourceCompiler;Ljava/lang/ClassLoader;)V

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public getMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0, p1}, Lorg/h2/util/SourceCompiler;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object p1

    .line 182
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 183
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 184
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 185
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "_"

    .line 186
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "main"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method javacCompile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    .line 205
    new-instance v0, Ljava/io/File;

    sget-object v1, Lorg/h2/util/SourceCompiler;->COMPILE_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 207
    new-instance v1, Ljava/io/File;

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/h2/store/fs/FileUtils;->createDirectories(Ljava/lang/String;)V

    move-object v0, v1

    .line 210
    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".java"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 211
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".class"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/h2/store/fs/FileUtils;->newOutputStream(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object p2

    .line 214
    invoke-static {p2}, Lorg/h2/util/IOUtils;->getBufferedWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object p2

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 216
    invoke-virtual {p2, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Ljava/io/Writer;->close()V

    .line 218
    sget-object p2, Lorg/h2/util/SourceCompiler;->JAVAC_SUN:Ljava/lang/Class;

    if-eqz p2, :cond_1

    .line 219
    invoke-static {p1}, Lorg/h2/util/SourceCompiler;->javacSun(Ljava/io/File;)V

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {p1}, Lorg/h2/util/SourceCompiler;->javacProcess(Ljava/io/File;)V

    .line 223
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide p2

    long-to-int p2, p2

    new-array p2, p2, [B

    .line 224
    new-instance p3, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p3, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 225
    invoke-virtual {p3, p2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 226
    invoke-virtual {p3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 229
    :try_start_1
    invoke-static {p2}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p2

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :goto_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 232
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    throw p2
.end method

.method javaxToolsJavac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 281
    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    .line 282
    new-instance v7, Lorg/h2/util/SourceCompiler$ClassFileManager;

    sget-object v0, Lorg/h2/util/SourceCompiler;->JAVA_COMPILER:Ljavax/tools/JavaCompiler;

    const/4 v8, 0x0

    invoke-interface {v0, v8, v8, v8}, Ljavax/tools/JavaCompiler;->getStandardFileManager(Ljavax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Ljavax/tools/StandardJavaFileManager;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/h2/util/SourceCompiler$ClassFileManager;-><init>(Ljavax/tools/StandardJavaFileManager;)V

    .line 285
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 286
    new-instance v0, Lorg/h2/util/SourceCompiler$StringJavaFileObject;

    invoke-direct {v0, p1, p3}, Lorg/h2/util/SourceCompiler$StringJavaFileObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    sget-object p3, Lorg/h2/util/SourceCompiler;->JAVA_COMPILER:Ljavax/tools/JavaCompiler;

    monitor-enter p3

    .line 289
    :try_start_0
    sget-object v0, Lorg/h2/util/SourceCompiler;->JAVA_COMPILER:Ljavax/tools/JavaCompiler;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Ljavax/tools/JavaCompiler;->getTask(Ljava/io/Writer;Ljavax/tools/JavaFileManager;Ljavax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljavax/tools/JavaCompiler$CompilationTask;

    move-result-object v0

    invoke-interface {v0}, Ljavax/tools/JavaCompiler$CompilationTask;->call()Ljava/lang/Boolean;

    .line 291
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    .line 293
    invoke-static {p2}, Lorg/h2/util/SourceCompiler;->handleSyntaxError(Ljava/lang/String;)V

    .line 295
    :try_start_1
    invoke-interface {v7, v8}, Ljavax/tools/JavaFileManager;->getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 297
    invoke-static {p1}, Lorg/h2/message/DbException;->convert(Ljava/lang/Throwable;)Lorg/h2/message/DbException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 291
    :try_start_2
    monitor-exit p3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public setJavaSystemCompiler(Z)V
    .locals 0

    .line 111
    iput-boolean p1, p0, Lorg/h2/util/SourceCompiler;->useJavaSystemCompiler:Z

    return-void
.end method

.method public setSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/h2/util/SourceCompiler;->sources:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object p1, p0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method
