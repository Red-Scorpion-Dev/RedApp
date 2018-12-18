.class Lorg/h2/util/SourceCompiler$1;
.super Ljava/lang/ClassLoader;
.source "SourceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/util/SourceCompiler;->getClass(Ljava/lang/String;)Ljava/lang/Class;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/util/SourceCompiler;


# direct methods
.method constructor <init>(Lorg/h2/util/SourceCompiler;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lorg/h2/util/SourceCompiler$1;->this$0:Lorg/h2/util/SourceCompiler;

    invoke-direct {p0, p2}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
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

    .line 138
    iget-object v0, p0, Lorg/h2/util/SourceCompiler$1;->this$0:Lorg/h2/util/SourceCompiler;

    iget-object v0, v0, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lorg/h2/util/SourceCompiler$1;->this$0:Lorg/h2/util/SourceCompiler;

    iget-object v0, v0, Lorg/h2/util/SourceCompiler;->sources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x2e

    .line 142
    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_0

    .line 145
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    .line 146
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 150
    :goto_0
    invoke-static {v1, v2, v0}, Lorg/h2/util/SourceCompiler;->getCompleteSourceCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    sget-object v4, Lorg/h2/util/SourceCompiler;->JAVA_COMPILER:Ljavax/tools/JavaCompiler;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/h2/util/SourceCompiler$1;->this$0:Lorg/h2/util/SourceCompiler;

    iget-boolean v4, v4, Lorg/h2/util/SourceCompiler;->useJavaSystemCompiler:Z

    if-eqz v4, :cond_1

    .line 152
    iget-object v3, p0, Lorg/h2/util/SourceCompiler$1;->this$0:Lorg/h2/util/SourceCompiler;

    invoke-virtual {v3, v1, v2, v0}, Lorg/h2/util/SourceCompiler;->javaxToolsJavac(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 154
    :cond_1
    iget-object v4, p0, Lorg/h2/util/SourceCompiler$1;->this$0:Lorg/h2/util/SourceCompiler;

    invoke-virtual {v4, v1, v2, v0}, Lorg/h2/util/SourceCompiler;->javacCompile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_2

    .line 156
    invoke-virtual {p0, p1}, Lorg/h2/util/SourceCompiler$1;->findSystemClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_1

    .line 158
    :cond_2
    array-length v1, v0

    invoke-virtual {p0, p1, v0, v3, v1}, Lorg/h2/util/SourceCompiler$1;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object v0

    .line 161
    :goto_1
    iget-object v1, p0, Lorg/h2/util/SourceCompiler$1;->this$0:Lorg/h2/util/SourceCompiler;

    iget-object v1, v1, Lorg/h2/util/SourceCompiler;->compiled:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method
