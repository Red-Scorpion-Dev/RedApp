.class final Lorg/h2/util/SourceCompiler$GroovyCompiler;
.super Ljava/lang/Object;
.source "SourceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/SourceCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GroovyCompiler"
.end annotation


# static fields
.field private static final INIT_FAIL_EXCEPTION:Ljava/lang/Throwable;

.field private static final LOADER:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "org.codehaus.groovy.control.customizers.ImportCustomizer"

    .line 402
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "org.codehaus.groovy.control.customizers.ImportCustomizer"

    const/4 v3, 0x0

    .line 404
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v4, 0x5

    .line 407
    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "java.sql.Connection"

    aput-object v5, v4, v3

    const-string v5, "java.sql.Types"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "java.sql.ResultSet"

    const/4 v7, 0x2

    aput-object v5, v4, v7

    const/4 v5, 0x3

    const-string v8, "groovy.sql.Sql"

    aput-object v8, v4, v5

    const/4 v5, 0x4

    const-string v8, "org.h2.tools.SimpleResultSet"

    aput-object v8, v4, v5

    const-string v5, "addImports"

    .line 414
    new-array v8, v6, [Ljava/lang/Object;

    aput-object v4, v8, v3

    invoke-static {v2, v5, v8}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 420
    invoke-static {v1, v3, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    const-string v2, "org.codehaus.groovy.control.CompilerConfiguration"

    .line 421
    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v2, v4}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v4, "addCompilationCustomizers"

    .line 423
    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v2, v4, v5}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-class v1, Lorg/h2/util/SourceCompiler$GroovyCompiler;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v4, "groovy.lang.GroovyClassLoader"

    .line 427
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v1, v5, v3

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_0

    :catch_0
    move-exception v1

    .line 432
    :goto_0
    sput-object v0, Lorg/h2/util/SourceCompiler$GroovyCompiler;->LOADER:Ljava/lang/Object;

    .line 433
    sput-object v1, Lorg/h2/util/SourceCompiler$GroovyCompiler;->INIT_FAIL_EXCEPTION:Ljava/lang/Throwable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 438
    sget-object v0, Lorg/h2/util/SourceCompiler$GroovyCompiler;->LOADER:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "groovy.lang.GroovyCodeSource"

    const/4 v1, 0x3

    .line 443
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".groovy"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const/4 p0, 0x2

    const-string v3, "UTF-8"

    aput-object v3, v1, p0

    invoke-static {v0, v1}, Lorg/h2/util/Utils;->newInstance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "setCachable"

    .line 445
    new-array v1, p1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    sget-object v0, Lorg/h2/util/SourceCompiler$GroovyCompiler;->LOADER:Ljava/lang/Object;

    const-string v1, "parseClass"

    new-array p1, p1, [Ljava/lang/Object;

    aput-object p0, p1, v2

    invoke-static {v0, v1, p1}, Lorg/h2/util/Utils;->callMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 450
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 439
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    sget-object p1, Lorg/h2/util/SourceCompiler$GroovyCompiler;->INIT_FAIL_EXCEPTION:Ljava/lang/Throwable;

    const-string v0, "Compile fail: no Groovy jar in the classpath"

    invoke-direct {p0, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method
