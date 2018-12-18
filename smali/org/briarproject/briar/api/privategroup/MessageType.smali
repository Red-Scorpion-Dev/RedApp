.class public final enum Lorg/briarproject/briar/api/privategroup/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/api/privategroup/MessageType;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/api/privategroup/MessageType;

.field public static final enum JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

.field public static final enum POST:Lorg/briarproject/briar/api/privategroup/MessageType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lorg/briarproject/briar/api/privategroup/MessageType;

    const-string v1, "JOIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/briar/api/privategroup/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    .line 12
    new-instance v0, Lorg/briarproject/briar/api/privategroup/MessageType;

    const-string v1, "POST"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/briar/api/privategroup/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lorg/briarproject/briar/api/privategroup/MessageType;

    sget-object v1, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/briarproject/briar/api/privategroup/MessageType;->$VALUES:[Lorg/briarproject/briar/api/privategroup/MessageType;

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
    iput p3, p0, Lorg/briarproject/briar/api/privategroup/MessageType;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/briarproject/briar/api/privategroup/MessageType;
    .locals 5

    .line 21
    invoke-static {}, Lorg/briarproject/briar/api/privategroup/MessageType;->values()[Lorg/briarproject/briar/api/privategroup/MessageType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/api/privategroup/MessageType;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/api/privategroup/MessageType;
    .locals 1

    .line 7
    const-class v0, Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/privategroup/MessageType;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/api/privategroup/MessageType;
    .locals 1

    .line 7
    sget-object v0, Lorg/briarproject/briar/api/privategroup/MessageType;->$VALUES:[Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v0}, [Lorg/briarproject/briar/api/privategroup/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/api/privategroup/MessageType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 26
    iget v0, p0, Lorg/briarproject/briar/api/privategroup/MessageType;->value:I

    return v0
.end method
