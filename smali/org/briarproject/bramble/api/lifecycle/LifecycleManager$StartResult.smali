.class public final enum Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
.super Ljava/lang/Enum;
.source "LifecycleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/lifecycle/LifecycleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StartResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

.field public static final enum ALREADY_RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

.field public static final enum DATA_TOO_NEW_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

.field public static final enum DATA_TOO_OLD_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

.field public static final enum DB_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

.field public static final enum SERVICE_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

.field public static final enum SUCCESS:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    const-string v1, "ALREADY_RUNNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->ALREADY_RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    .line 24
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    const-string v1, "DB_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DB_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    .line 25
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    const-string v1, "DATA_TOO_OLD_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DATA_TOO_OLD_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    .line 26
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    const-string v1, "DATA_TOO_NEW_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DATA_TOO_NEW_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    .line 27
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    const-string v1, "SERVICE_ERROR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->SERVICE_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    .line 28
    new-instance v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    const-string v1, "SUCCESS"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->SUCCESS:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    const/4 v0, 0x6

    .line 22
    new-array v0, v0, [Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->ALREADY_RUNNING:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DB_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DATA_TOO_OLD_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->DATA_TOO_NEW_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->SERVICE_ERROR:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->SUCCESS:Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    aput-object v1, v0, v7

    sput-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->$VALUES:[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    .locals 1

    .line 22
    const-class v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;
    .locals 1

    .line 22
    sget-object v0, Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->$VALUES:[Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    invoke-virtual {v0}, [Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/bramble/api/lifecycle/LifecycleManager$StartResult;

    return-object v0
.end method
