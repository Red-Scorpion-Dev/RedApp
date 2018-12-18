.class final enum Lorg/briarproject/briar/sharing/State;
.super Ljava/lang/Enum;
.source "State.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/sharing/State;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/sharing/State;

.field public static final enum LOCAL_INVITED:Lorg/briarproject/briar/sharing/State;

.field public static final enum LOCAL_LEFT:Lorg/briarproject/briar/sharing/State;

.field public static final enum REMOTE_HANGING:Lorg/briarproject/briar/sharing/State;

.field public static final enum REMOTE_INVITED:Lorg/briarproject/briar/sharing/State;

.field public static final enum SHARING:Lorg/briarproject/briar/sharing/State;

.field public static final enum START:Lorg/briarproject/briar/sharing/State;


# instance fields
.field private final value:I

.field private final visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 17
    new-instance v0, Lorg/briarproject/briar/sharing/State;

    const-string v1, "START"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/briarproject/briar/sharing/State;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    .line 18
    new-instance v0, Lorg/briarproject/briar/sharing/State;

    const-string v1, "LOCAL_INVITED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/briarproject/briar/sharing/State;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/sharing/State;->LOCAL_INVITED:Lorg/briarproject/briar/sharing/State;

    .line 19
    new-instance v0, Lorg/briarproject/briar/sharing/State;

    const-string v1, "REMOTE_INVITED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->VISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/briarproject/briar/sharing/State;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/sharing/State;->REMOTE_INVITED:Lorg/briarproject/briar/sharing/State;

    .line 20
    new-instance v0, Lorg/briarproject/briar/sharing/State;

    const-string v1, "SHARING"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/briarproject/briar/sharing/State;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/sharing/State;->SHARING:Lorg/briarproject/briar/sharing/State;

    .line 21
    new-instance v0, Lorg/briarproject/briar/sharing/State;

    const-string v1, "LOCAL_LEFT"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/briarproject/briar/sharing/State;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/sharing/State;->LOCAL_LEFT:Lorg/briarproject/briar/sharing/State;

    .line 22
    new-instance v0, Lorg/briarproject/briar/sharing/State;

    const-string v1, "REMOTE_HANGING"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v8, v2}, Lorg/briarproject/briar/sharing/State;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/sharing/State;->REMOTE_HANGING:Lorg/briarproject/briar/sharing/State;

    const/4 v0, 0x6

    .line 13
    new-array v0, v0, [Lorg/briarproject/briar/sharing/State;

    sget-object v1, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/sharing/State;->LOCAL_INVITED:Lorg/briarproject/briar/sharing/State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/sharing/State;->REMOTE_INVITED:Lorg/briarproject/briar/sharing/State;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/briar/sharing/State;->SHARING:Lorg/briarproject/briar/sharing/State;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/briar/sharing/State;->LOCAL_LEFT:Lorg/briarproject/briar/sharing/State;

    aput-object v1, v0, v7

    sget-object v1, Lorg/briarproject/briar/sharing/State;->REMOTE_HANGING:Lorg/briarproject/briar/sharing/State;

    aput-object v1, v0, v8

    sput-object v0, Lorg/briarproject/briar/sharing/State;->$VALUES:[Lorg/briarproject/briar/sharing/State;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lorg/briarproject/briar/sharing/State;->value:I

    .line 29
    iput-object p4, p0, Lorg/briarproject/briar/sharing/State;->visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-void
.end method

.method static fromValue(I)Lorg/briarproject/briar/sharing/State;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 45
    invoke-static {}, Lorg/briarproject/briar/sharing/State;->values()[Lorg/briarproject/briar/sharing/State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/sharing/State;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 46
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/sharing/State;
    .locals 1

    .line 13
    const-class v0, Lorg/briarproject/briar/sharing/State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/sharing/State;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/sharing/State;
    .locals 1

    .line 13
    sget-object v0, Lorg/briarproject/briar/sharing/State;->$VALUES:[Lorg/briarproject/briar/sharing/State;

    invoke-virtual {v0}, [Lorg/briarproject/briar/sharing/State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/sharing/State;

    return-object v0
.end method


# virtual methods
.method public canInvite()Z
    .locals 1

    .line 41
    sget-object v0, Lorg/briarproject/briar/sharing/State;->START:Lorg/briarproject/briar/sharing/State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getValue()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/briarproject/briar/sharing/State;->value:I

    return v0
.end method

.method public getVisibility()Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/briarproject/briar/sharing/State;->visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-object v0
.end method
