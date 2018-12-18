.class synthetic Lorg/briarproject/briar/introduction/IntroductionValidator$1;
.super Ljava/lang/Object;
.source "IntroductionValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/introduction/IntroductionValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$briarproject$briar$introduction$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 51
    invoke-static {}, Lorg/briarproject/briar/introduction/MessageType;->values()[Lorg/briarproject/briar/introduction/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    :try_start_0
    sget-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->REQUEST:Lorg/briarproject/briar/introduction/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ACCEPT:Lorg/briarproject/briar/introduction/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->AUTH:Lorg/briarproject/briar/introduction/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ACTIVATE:Lorg/briarproject/briar/introduction/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->DECLINE:Lorg/briarproject/briar/introduction/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v0, Lorg/briarproject/briar/introduction/IntroductionValidator$1;->$SwitchMap$org$briarproject$briar$introduction$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/introduction/MessageType;->ABORT:Lorg/briarproject/briar/introduction/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/introduction/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    return-void
.end method
