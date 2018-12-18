.class public final enum Lorg/briarproject/briar/api/blog/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/briarproject/briar/api/blog/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/briarproject/briar/api/blog/MessageType;

.field public static final enum COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

.field public static final enum POST:Lorg/briarproject/briar/api/blog/MessageType;

.field public static final enum WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

.field public static final enum WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lorg/briarproject/briar/api/blog/MessageType;

    const-string v1, "POST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lorg/briarproject/briar/api/blog/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    .line 6
    new-instance v0, Lorg/briarproject/briar/api/blog/MessageType;

    const-string v1, "COMMENT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lorg/briarproject/briar/api/blog/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    .line 7
    new-instance v0, Lorg/briarproject/briar/api/blog/MessageType;

    const-string v1, "WRAPPED_POST"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lorg/briarproject/briar/api/blog/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    .line 8
    new-instance v0, Lorg/briarproject/briar/api/blog/MessageType;

    const-string v1, "WRAPPED_COMMENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lorg/briarproject/briar/api/blog/MessageType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    const/4 v0, 0x4

    .line 3
    new-array v0, v0, [Lorg/briarproject/briar/api/blog/MessageType;

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/briarproject/briar/api/blog/MessageType;->$VALUES:[Lorg/briarproject/briar/api/blog/MessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lorg/briarproject/briar/api/blog/MessageType;->value:I

    return-void
.end method

.method public static valueOf(I)Lorg/briarproject/briar/api/blog/MessageType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 27
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 25
    :pswitch_0
    sget-object p0, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    return-object p0

    .line 23
    :pswitch_1
    sget-object p0, Lorg/briarproject/briar/api/blog/MessageType;->WRAPPED_POST:Lorg/briarproject/briar/api/blog/MessageType;

    return-object p0

    .line 21
    :pswitch_2
    sget-object p0, Lorg/briarproject/briar/api/blog/MessageType;->COMMENT:Lorg/briarproject/briar/api/blog/MessageType;

    return-object p0

    .line 19
    :pswitch_3
    sget-object p0, Lorg/briarproject/briar/api/blog/MessageType;->POST:Lorg/briarproject/briar/api/blog/MessageType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/briarproject/briar/api/blog/MessageType;
    .locals 1

    .line 3
    const-class v0, Lorg/briarproject/briar/api/blog/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/briarproject/briar/api/blog/MessageType;

    return-object p0
.end method

.method public static values()[Lorg/briarproject/briar/api/blog/MessageType;
    .locals 1

    .line 3
    sget-object v0, Lorg/briarproject/briar/api/blog/MessageType;->$VALUES:[Lorg/briarproject/briar/api/blog/MessageType;

    invoke-virtual {v0}, [Lorg/briarproject/briar/api/blog/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/briarproject/briar/api/blog/MessageType;

    return-object v0
.end method


# virtual methods
.method public getInt()I
    .locals 1

    .line 32
    iget v0, p0, Lorg/briarproject/briar/api/blog/MessageType;->value:I

    return v0
.end method
