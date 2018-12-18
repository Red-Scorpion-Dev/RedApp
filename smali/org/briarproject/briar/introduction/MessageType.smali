.class final enum Lorg/briarproject/briar/introduction/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/introduction/MessageType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/introduction/MessageType;

.field public static final enum ABORT:Lorg/briarproject/briar/introduction/MessageType;

.field public static final enum ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

.field public static final enum ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

.field public static final enum AUTH:Lorg/briarproject/briar/introduction/MessageType;

.field public static final enum DECLINE:Lorg/briarproject/briar/introduction/MessageType;

.field public static final enum REQUEST:Lorg/briarproject/briar/introduction/MessageType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lorg/briarproject/briar/introduction/MessageType;

    const-string v1, "REQUEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/briar/introduction/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    new-instance v0, Lorg/briarproject/briar/introduction/MessageType;

    const-string v1, "ACCEPT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/briar/introduction/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    new-instance v0, Lorg/briarproject/briar/introduction/MessageType;

    const-string v1, "DECLINE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/briarproject/briar/introduction/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/MessageType;->DECLINE:Lorg/briarproject/briar/introduction/MessageType;

    new-instance v0, Lorg/briarproject/briar/introduction/MessageType;

    const-string v1, "AUTH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/briarproject/briar/introduction/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/MessageType;->AUTH:Lorg/briarproject/briar/introduction/MessageType;

    new-instance v0, Lorg/briarproject/briar/introduction/MessageType;

    const-string v1, "ACTIVATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/briarproject/briar/introduction/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/MessageType;->ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

    new-instance v0, Lorg/briarproject/briar/introduction/MessageType;

    const-string v1, "ABORT"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/briarproject/briar/introduction/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/MessageType;->ABORT:Lorg/briarproject/briar/introduction/MessageType;

    const/4 v0, 0x6

    .line 8
    new-array v0, v0, [Lorg/briarproject/briar/introduction/MessageType;

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->DECLINE:Lorg/briarproject/briar/introduction/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->AUTH:Lorg/briarproject/briar/introduction/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ABORT:Lorg/briarproject/briar/introduction/MessageType;

    aput-object v1, v0, v7

    sput-object v0, Lorg/briarproject/briar/introduction/MessageType;->$VALUES:[Lorg/briarproject/briar/introduction/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lorg/briarproject/briar/introduction/MessageType;->value:I

    return-void
.end method

.method static fromValue(I)Lorg/briarproject/briar/introduction/MessageType;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 25
    invoke-static {}, Lorg/briarproject/briar/introduction/MessageType;->values()[Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/introduction/MessageType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 26
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/introduction/MessageType;
    .locals 1

    .line 8
    const-class v0, Lorg/briarproject/briar/introduction/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/introduction/MessageType;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/introduction/MessageType;
    .locals 1

    .line 8
    sget-object v0, Lorg/briarproject/briar/introduction/MessageType;->$VALUES:[Lorg/briarproject/briar/introduction/MessageType;

    invoke-virtual {v0}, [Lorg/briarproject/briar/introduction/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/introduction/MessageType;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/briarproject/briar/introduction/MessageType;->value:I

    return v0
.end method
