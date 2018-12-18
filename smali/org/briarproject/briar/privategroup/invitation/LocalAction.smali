.class final enum Lorg/briarproject/briar/privategroup/invitation/LocalAction;
.super Ljava/lang/Enum;
.source "LocalAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/privategroup/invitation/LocalAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/privategroup/invitation/LocalAction;

.field public static final enum INVITE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

.field public static final enum JOIN:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

.field public static final enum LEAVE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

.field public static final enum MEMBER_ADDED:Lorg/briarproject/briar/privategroup/invitation/LocalAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    const-string v1, "INVITE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/briarproject/briar/privategroup/invitation/LocalAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->INVITE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    const-string v1, "JOIN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/briarproject/briar/privategroup/invitation/LocalAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->JOIN:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    const-string v1, "LEAVE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/briarproject/briar/privategroup/invitation/LocalAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    const-string v1, "MEMBER_ADDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/briarproject/briar/privategroup/invitation/LocalAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->MEMBER_ADDED:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->INVITE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->JOIN:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->LEAVE:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->MEMBER_ADDED:Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    aput-object v1, v0, v5

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->$VALUES:[Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/privategroup/invitation/LocalAction;
    .locals 1

    .line 3
    const-class v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/privategroup/invitation/LocalAction;
    .locals 1

    .line 3
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/LocalAction;->$VALUES:[Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    invoke-virtual {v0}, [Lorg/briarproject/briar/privategroup/invitation/LocalAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/privategroup/invitation/LocalAction;

    return-object v0
.end method
