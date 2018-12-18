.class public interface abstract Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;
.super Ljava/lang/Object;
.source "CircumventionProvider.java"


# static fields
.field public static final BLOCKED:[Ljava/lang/String;

.field public static final BRIDGES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    .line 17
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "CN"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "IR"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "EG"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "BY"

    const/4 v5, 0x3

    aput-object v1, v0, v5

    const-string v1, "TR"

    const/4 v6, 0x4

    aput-object v1, v0, v6

    const-string v1, "SY"

    const/4 v7, 0x5

    aput-object v1, v0, v7

    const-string v1, "VE"

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;->BLOCKED:[Ljava/lang/String;

    .line 23
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "EG"

    aput-object v1, v0, v2

    const-string v1, "BY"

    aput-object v1, v0, v3

    const-string v1, "TR"

    aput-object v1, v0, v4

    const-string v1, "SY"

    aput-object v1, v0, v5

    const-string v1, "VE"

    aput-object v1, v0, v6

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;->BRIDGES:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract doBridgesWork(Ljava/lang/String;)Z
.end method

.method public abstract getBridges()Ljava/util/List;
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
.end method

.method public abstract isTorProbablyBlocked(Ljava/lang/String;)Z
.end method
