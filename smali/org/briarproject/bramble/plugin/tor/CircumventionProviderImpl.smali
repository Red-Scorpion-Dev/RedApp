.class Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;
.super Ljava/lang/Object;
.source "CircumventionProviderImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;


# static fields
.field private static final BLOCKED_IN_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BRIDGES_WORK_IN_COUNTRIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final BRIDGE_FILE_NAME:Ljava/lang/String; = "bridges"


# instance fields
.field private volatile bridges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->BLOCKED:[Ljava/lang/String;

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->BLOCKED_IN_COUNTRIES:Ljava/util/Set;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->BRIDGES:[Ljava/lang/String;

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->BRIDGES_WORK_IN_COUNTRIES:Ljava/util/Set;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->bridges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public doBridgesWork(Ljava/lang/String;)Z
    .locals 1

    .line 40
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->BRIDGES_WORK_IN_COUNTRIES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBridges()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lorg/briarproject/bramble/api/lifecycle/IoExecutor;
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->bridges:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "bridges"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/Scanner;

    invoke-direct {v1, v0}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 54
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#"

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 58
    :cond_2
    invoke-virtual {v1}, Ljava/util/Scanner;->close()V

    .line 59
    iput-object v0, p0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->bridges:Ljava/util/List;

    return-object v0
.end method

.method public isTorProbablyBlocked(Ljava/lang/String;)Z
    .locals 1

    .line 35
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;->BLOCKED_IN_COUNTRIES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
