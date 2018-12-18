.class public final enum Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;
.super Ljava/lang/Enum;
.source "LifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LifecycleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

.field public static final enum COMPACTING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

.field public static final enum MIGRATING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

.field public static final enum RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

.field public static final enum STARTING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

.field public static final enum STARTING_SERVICES:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

.field public static final enum STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 37
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    const-string v1, "STARTING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    const-string v1, "MIGRATING_DATABASE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->MIGRATING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    const-string v1, "COMPACTING_DATABASE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->COMPACTING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    const-string v1, "STARTING_SERVICES"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING_SERVICES:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    .line 38
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    const-string v1, "RUNNING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    const-string v1, "STOPPING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    const/4 v0, 0x6

    .line 35
    new-array v0, v0, [Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->MIGRATING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->COMPACTING_DATABASE:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STARTING_SERVICES:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->STOPPING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    aput-object v1, v0, v7

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->$VALUES:[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;
    .locals 1

    .line 35
    const-class v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;
    .locals 1

    .line 35
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->$VALUES:[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    invoke-virtual {v0}, [Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;

    return-object v0
.end method


# virtual methods
.method public isAfter(Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;)Z
    .locals 1

    .line 41
    invoke-virtual {p0}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$LifecycleState;->ordinal()I

    move-result p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
