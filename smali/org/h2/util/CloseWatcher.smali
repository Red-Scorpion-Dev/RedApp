.class public Lorg/h2/util/CloseWatcher;
.super Ljava/lang/ref/PhantomReference;
.source "CloseWatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/PhantomReference<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static refs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/h2/util/CloseWatcher;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private closeable:Ljava/io/Closeable;

.field private openStackTrace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Lorg/h2/util/CloseWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 33
    invoke-static {}, Lorg/h2/util/CloseWatcher;->createSet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/h2/util/CloseWatcher;->refs:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/io/Closeable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/ref/ReferenceQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/Closeable;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/PhantomReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 50
    iput-object p3, p0, Lorg/h2/util/CloseWatcher;->closeable:Ljava/io/Closeable;

    return-void
.end method

.method private static createSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/h2/util/CloseWatcher;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static pollUnclosed()Lorg/h2/util/CloseWatcher;
    .locals 4

    .line 63
    sget-object v0, Lorg/h2/util/CloseWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 68
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v2

    check-cast v2, Lorg/h2/util/CloseWatcher;

    if-nez v2, :cond_1

    return-object v1

    .line 72
    :cond_1
    sget-object v3, Lorg/h2/util/CloseWatcher;->refs:Ljava/util/Set;

    if-eqz v3, :cond_2

    .line 73
    sget-object v3, Lorg/h2/util/CloseWatcher;->refs:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 75
    :cond_2
    iget-object v3, v2, Lorg/h2/util/CloseWatcher;->closeable:Ljava/io/Closeable;

    if-eqz v3, :cond_0

    return-object v2
.end method

.method public static register(Ljava/lang/Object;Ljava/io/Closeable;Z)Lorg/h2/util/CloseWatcher;
    .locals 2

    .line 93
    sget-object v0, Lorg/h2/util/CloseWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    .line 96
    sput-object v0, Lorg/h2/util/CloseWatcher;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 98
    :cond_0
    new-instance v1, Lorg/h2/util/CloseWatcher;

    invoke-direct {v1, p0, v0, p1}, Lorg/h2/util/CloseWatcher;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;Ljava/io/Closeable;)V

    if-eqz p2, :cond_1

    .line 100
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Open Stack Trace"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance p1, Ljava/io/StringWriter;

    invoke-direct {p1}, Ljava/io/StringWriter;-><init>()V

    .line 102
    new-instance p2, Ljava/io/PrintWriter;

    invoke-direct {p2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p2}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 103
    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lorg/h2/util/CloseWatcher;->openStackTrace:Ljava/lang/String;

    .line 105
    :cond_1
    sget-object p0, Lorg/h2/util/CloseWatcher;->refs:Ljava/util/Set;

    if-nez p0, :cond_2

    .line 106
    invoke-static {}, Lorg/h2/util/CloseWatcher;->createSet()Ljava/util/Set;

    move-result-object p0

    sput-object p0, Lorg/h2/util/CloseWatcher;->refs:Ljava/util/Set;

    .line 108
    :cond_2
    sget-object p0, Lorg/h2/util/CloseWatcher;->refs:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method public static unregister(Lorg/h2/util/CloseWatcher;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lorg/h2/util/CloseWatcher;->closeable:Ljava/io/Closeable;

    .line 119
    sget-object v0, Lorg/h2/util/CloseWatcher;->refs:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getCloseable()Ljava/io/Closeable;
    .locals 1

    .line 132
    iget-object v0, p0, Lorg/h2/util/CloseWatcher;->closeable:Ljava/io/Closeable;

    return-object v0
.end method

.method public getOpenStackTrace()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/h2/util/CloseWatcher;->openStackTrace:Ljava/lang/String;

    return-object v0
.end method
