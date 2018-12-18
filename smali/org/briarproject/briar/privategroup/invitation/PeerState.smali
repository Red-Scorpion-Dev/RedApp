.class final enum Lorg/briarproject/briar/privategroup/invitation/PeerState;
.super Ljava/lang/Enum;
.source "PeerState.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/privategroup/invitation/PeerState;",
        ">;",
        "Lorg/briarproject/briar/privategroup/invitation/State;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/privategroup/invitation/PeerState;

.field public static final enum AWAIT_MEMBER:Lorg/briarproject/briar/privategroup/invitation/PeerState;

.field public static final enum BOTH_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

.field public static final enum ERROR:Lorg/briarproject/briar/privategroup/invitation/PeerState;

.field public static final enum LOCAL_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

.field public static final enum LOCAL_LEFT:Lorg/briarproject/briar/privategroup/invitation/PeerState;

.field public static final enum NEITHER_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

.field public static final enum START:Lorg/briarproject/briar/privategroup/invitation/PeerState;


# instance fields
.field private final value:I

.field private final visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const-string v1, "START"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->START:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    .line 18
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const-string v1, "AWAIT_MEMBER"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->AWAIT_MEMBER:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    .line 19
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const-string v1, "NEITHER_JOINED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->NEITHER_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    .line 20
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const-string v1, "LOCAL_JOINED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->LOCAL_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    .line 21
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const-string v1, "BOTH_JOINED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->BOTH_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    .line 22
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const-string v1, "LOCAL_LEFT"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v8, v2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->LOCAL_LEFT:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    .line 23
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const-string v1, "ERROR"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v9, v2}, Lorg/briarproject/briar/privategroup/invitation/PeerState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    const/4 v0, 0x7

    .line 13
    new-array v0, v0, [Lorg/briarproject/briar/privategroup/invitation/PeerState;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->START:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->AWAIT_MEMBER:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->NEITHER_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->LOCAL_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->BOTH_JOINED:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->LOCAL_LEFT:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    aput-object v1, v0, v8

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/PeerState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/PeerState;

    aput-object v1, v0, v9

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->$VALUES:[Lorg/briarproject/briar/privategroup/invitation/PeerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/briarproject/bramble/api/sync/Group$Visibility;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->value:I

    .line 30
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-void
.end method

.method static fromValue(I)Lorg/briarproject/briar/privategroup/invitation/PeerState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 44
    invoke-static {}, Lorg/briarproject/briar/privategroup/invitation/PeerState;->values()[Lorg/briarproject/briar/privategroup/invitation/PeerState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/privategroup/invitation/PeerState;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/privategroup/invitation/PeerState;
    .locals 1

    .line 13
    const-class v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/privategroup/invitation/PeerState;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/privategroup/invitation/PeerState;
    .locals 1

    .line 13
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->$VALUES:[Lorg/briarproject/briar/privategroup/invitation/PeerState;

    invoke-virtual {v0}, [Lorg/briarproject/briar/privategroup/invitation/PeerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/privategroup/invitation/PeerState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->value:I

    return v0
.end method

.method public getVisibility()Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/PeerState;->visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-object v0
.end method
