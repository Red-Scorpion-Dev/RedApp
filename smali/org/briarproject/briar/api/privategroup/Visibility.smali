.class public final enum Lorg/briarproject/briar/api/privategroup/Visibility;
.super Ljava/lang/Enum;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/api/privategroup/Visibility;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/api/privategroup/Visibility;

.field public static final enum INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

.field public static final enum REVEALED_BY_CONTACT:Lorg/briarproject/briar/api/privategroup/Visibility;

.field public static final enum REVEALED_BY_US:Lorg/briarproject/briar/api/privategroup/Visibility;

.field public static final enum VISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lorg/briarproject/briar/api/privategroup/Visibility;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/briar/api/privategroup/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    .line 13
    new-instance v0, Lorg/briarproject/briar/api/privategroup/Visibility;

    const-string v1, "VISIBLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/briar/api/privategroup/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/Visibility;->VISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    .line 14
    new-instance v0, Lorg/briarproject/briar/api/privategroup/Visibility;

    const-string v1, "REVEALED_BY_US"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/briarproject/briar/api/privategroup/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_US:Lorg/briarproject/briar/api/privategroup/Visibility;

    .line 15
    new-instance v0, Lorg/briarproject/briar/api/privategroup/Visibility;

    const-string v1, "REVEALED_BY_CONTACT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/briarproject/briar/api/privategroup/Visibility;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_CONTACT:Lorg/briarproject/briar/api/privategroup/Visibility;

    const/4 v0, 0x4

    .line 8
    new-array v0, v0, [Lorg/briarproject/briar/api/privategroup/Visibility;

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->VISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_US:Lorg/briarproject/briar/api/privategroup/Visibility;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_CONTACT:Lorg/briarproject/briar/api/privategroup/Visibility;

    aput-object v1, v0, v5

    sput-object v0, Lorg/briarproject/briar/api/privategroup/Visibility;->$VALUES:[Lorg/briarproject/briar/api/privategroup/Visibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput p3, p0, Lorg/briarproject/briar/api/privategroup/Visibility;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 24
    invoke-static {}, Lorg/briarproject/briar/api/privategroup/Visibility;->values()[Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/api/privategroup/Visibility;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1

    .line 8
    const-class v0, Lorg/briarproject/briar/api/privategroup/Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/privategroup/Visibility;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/api/privategroup/Visibility;
    .locals 1

    .line 8
    sget-object v0, Lorg/briarproject/briar/api/privategroup/Visibility;->$VALUES:[Lorg/briarproject/briar/api/privategroup/Visibility;

    invoke-virtual {v0}, [Lorg/briarproject/briar/api/privategroup/Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/api/privategroup/Visibility;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/briarproject/briar/api/privategroup/Visibility;->value:I

    return v0
.end method
