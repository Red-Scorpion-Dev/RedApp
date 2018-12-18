.class final enum Lorg/briarproject/briar/privategroup/invitation/CreatorState;
.super Ljava/lang/Enum;
.source "CreatorState.java"

# interfaces
.implements Lorg/briarproject/briar/privategroup/invitation/State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/privategroup/invitation/CreatorState;",
        ">;",
        "Lorg/briarproject/briar/privategroup/invitation/State;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/privategroup/invitation/CreatorState;

.field public static final enum DISSOLVED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

.field public static final enum ERROR:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

.field public static final enum INVITED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

.field public static final enum JOINED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

.field public static final enum LEFT:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

.field public static final enum START:Lorg/briarproject/briar/privategroup/invitation/CreatorState;


# instance fields
.field private final value:I

.field private final visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 16
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    const-string v1, "START"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->START:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    .line 17
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    const-string v1, "INVITED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->INVITED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    .line 18
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    const-string v1, "JOINED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->SHARED:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v5, v2}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->JOINED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    .line 19
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    const-string v1, "LEFT"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v6, v2}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->LEFT:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    .line 20
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    const-string v1, "DISSOLVED"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v7, v2}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->DISSOLVED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    .line 21
    new-instance v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    const-string v1, "ERROR"

    sget-object v2, Lorg/briarproject/bramble/api/sync/Group$Visibility;->INVISIBLE:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v8, v2}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;-><init>(Ljava/lang/String;IILorg/briarproject/bramble/api/sync/Group$Visibility;)V

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    const/4 v0, 0x6

    .line 12
    new-array v0, v0, [Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->START:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->INVITED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->JOINED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->LEFT:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->DISSOLVED:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->ERROR:Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    aput-object v1, v0, v8

    sput-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->$VALUES:[Lorg/briarproject/briar/privategroup/invitation/CreatorState;

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

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->value:I

    .line 28
    iput-object p4, p0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-void
.end method

.method static fromValue(I)Lorg/briarproject/briar/privategroup/invitation/CreatorState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 42
    invoke-static {}, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->values()[Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/privategroup/invitation/CreatorState;
    .locals 1

    .line 12
    const-class v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/privategroup/invitation/CreatorState;
    .locals 1

    .line 12
    sget-object v0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->$VALUES:[Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    invoke-virtual {v0}, [Lorg/briarproject/briar/privategroup/invitation/CreatorState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/privategroup/invitation/CreatorState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 33
    iget v0, p0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->value:I

    return v0
.end method

.method public getVisibility()Lorg/briarproject/bramble/api/sync/Group$Visibility;
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/briarproject/briar/privategroup/invitation/CreatorState;->visibility:Lorg/briarproject/bramble/api/sync/Group$Visibility;

    return-object v0
.end method
