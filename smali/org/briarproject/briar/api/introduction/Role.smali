.class public final enum Lorg/briarproject/briar/api/introduction/Role;
.super Ljava/lang/Enum;
.source "Role.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/api/introduction/Role;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/api/introduction/Role;

.field public static final enum INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

.field public static final enum INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 12
    new-instance v0, Lorg/briarproject/briar/api/introduction/Role;

    const-string v1, "INTRODUCER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/briar/api/introduction/Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    new-instance v0, Lorg/briarproject/briar/api/introduction/Role;

    const-string v1, "INTRODUCEE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/briar/api/introduction/Role;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Lorg/briarproject/briar/api/introduction/Role;

    sget-object v1, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCER:Lorg/briarproject/briar/api/introduction/Role;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/api/introduction/Role;->INTRODUCEE:Lorg/briarproject/briar/api/introduction/Role;

    aput-object v1, v0, v3

    sput-object v0, Lorg/briarproject/briar/api/introduction/Role;->$VALUES:[Lorg/briarproject/briar/api/introduction/Role;

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
    iput p3, p0, Lorg/briarproject/briar/api/introduction/Role;->value:I

    return-void
.end method

.method public static fromValue(I)Lorg/briarproject/briar/api/introduction/Role;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 25
    invoke-static {}, Lorg/briarproject/briar/api/introduction/Role;->values()[Lorg/briarproject/briar/api/introduction/Role;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/api/introduction/Role;->value:I

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

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/api/introduction/Role;
    .locals 1

    .line 8
    const-class v0, Lorg/briarproject/briar/api/introduction/Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/introduction/Role;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/api/introduction/Role;
    .locals 1

    .line 8
    sget-object v0, Lorg/briarproject/briar/api/introduction/Role;->$VALUES:[Lorg/briarproject/briar/api/introduction/Role;

    invoke-virtual {v0}, [Lorg/briarproject/briar/api/introduction/Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/api/introduction/Role;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 21
    iget v0, p0, Lorg/briarproject/briar/api/introduction/Role;->value:I

    return v0
.end method
