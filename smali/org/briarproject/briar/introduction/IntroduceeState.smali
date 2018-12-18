.class final enum Lorg/briarproject/briar/introduction/IntroduceeState;
.super Ljava/lang/Enum;
.source "IntroduceeState.java"

# interfaces
.implements Lorg/briarproject/briar/introduction/State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/introduction/IntroduceeState;",
        ">;",
        "Lorg/briarproject/briar/introduction/State;"
    }
.end annotation

.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum AWAIT_ACTIVATE:Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum LOCAL_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum LOCAL_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum REMOTE_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum REMOTE_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

.field public static final enum START:Lorg/briarproject/briar/introduction/IntroduceeState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 13
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "AWAIT_RESPONSES"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 14
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "LOCAL_DECLINED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->LOCAL_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 15
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "REMOTE_DECLINED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->REMOTE_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 16
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "LOCAL_ACCEPTED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->LOCAL_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 17
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "REMOTE_ACCEPTED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->REMOTE_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 18
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "AWAIT_AUTH"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    .line 19
    new-instance v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    const-string v1, "AWAIT_ACTIVATE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lorg/briarproject/briar/introduction/IntroduceeState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_ACTIVATE:Lorg/briarproject/briar/introduction/IntroduceeState;

    const/16 v0, 0x8

    .line 8
    new-array v0, v0, [Lorg/briarproject/briar/introduction/IntroduceeState;

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->START:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_RESPONSES:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->LOCAL_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->REMOTE_DECLINED:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v5

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->LOCAL_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v6

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->REMOTE_ACCEPTED:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v7

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_AUTH:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v8

    sget-object v1, Lorg/briarproject/briar/introduction/IntroduceeState;->AWAIT_ACTIVATE:Lorg/briarproject/briar/introduction/IntroduceeState;

    aput-object v1, v0, v9

    sput-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->$VALUES:[Lorg/briarproject/briar/introduction/IntroduceeState;

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
    iput p3, p0, Lorg/briarproject/briar/introduction/IntroduceeState;->value:I

    return-void
.end method

.method static fromValue(I)Lorg/briarproject/briar/introduction/IntroduceeState;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/briarproject/bramble/api/FormatException;
        }
    .end annotation

    .line 33
    invoke-static {}, Lorg/briarproject/briar/introduction/IntroduceeState;->values()[Lorg/briarproject/briar/introduction/IntroduceeState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lorg/briarproject/briar/introduction/IntroduceeState;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 34
    :cond_1
    new-instance p0, Lorg/briarproject/bramble/api/FormatException;

    invoke-direct {p0}, Lorg/briarproject/bramble/api/FormatException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/introduction/IntroduceeState;
    .locals 1

    .line 8
    const-class v0, Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/introduction/IntroduceeState;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/introduction/IntroduceeState;
    .locals 1

    .line 8
    sget-object v0, Lorg/briarproject/briar/introduction/IntroduceeState;->$VALUES:[Lorg/briarproject/briar/introduction/IntroduceeState;

    invoke-virtual {v0}, [Lorg/briarproject/briar/introduction/IntroduceeState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/introduction/IntroduceeState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 29
    iget v0, p0, Lorg/briarproject/briar/introduction/IntroduceeState;->value:I

    return v0
.end method
