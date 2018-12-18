.class public final enum Lorg/briarproject/bramble/api/sync/ValidationManager$State;
.super Ljava/lang/Enum;
.source "ValidationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/bramble/api/sync/ValidationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/bramble/api/sync/ValidationManager$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/bramble/api/sync/ValidationManager$State;

.field public static final enum DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

.field public static final enum INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

.field public static final enum PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

.field public static final enum UNKNOWN:Lorg/briarproject/bramble/api/sync/ValidationManager$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 19
    new-instance v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->UNKNOWN:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    new-instance v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    const-string v1, "INVALID"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    new-instance v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    const-string v1, "PENDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    new-instance v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    const-string v1, "DELIVERED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    const/4 v0, 0x4

    .line 17
    new-array v0, v0, [Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->UNKNOWN:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->INVALID:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->PENDING:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->DELIVERED:Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->$VALUES:[Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->value:I

    return-void
.end method

.method public static fromValue(I)Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .locals 5

    .line 32
    invoke-static {}, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->values()[Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .locals 1

    .line 17
    const-class v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/bramble/api/sync/ValidationManager$State;
    .locals 1

    .line 17
    sget-object v0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->$VALUES:[Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    invoke-virtual {v0}, [Lorg/briarproject/bramble/api/sync/ValidationManager$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/bramble/api/sync/ValidationManager$State;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 28
    iget v0, p0, Lorg/briarproject/bramble/api/sync/ValidationManager$State;->value:I

    return v0
.end method
