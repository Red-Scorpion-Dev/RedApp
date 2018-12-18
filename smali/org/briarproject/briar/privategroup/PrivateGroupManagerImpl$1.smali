.class synthetic Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl$1;
.super Ljava/lang/Object;
.source "PrivateGroupManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$briarproject$briar$api$privategroup$MessageType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 504
    invoke-static {}, Lorg/briarproject/briar/api/privategroup/MessageType;->values()[Lorg/briarproject/briar/api/privategroup/MessageType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl$1;->$SwitchMap$org$briarproject$briar$api$privategroup$MessageType:[I

    :try_start_0
    sget-object v0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl$1;->$SwitchMap$org$briarproject$briar$api$privategroup$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/api/privategroup/MessageType;->JOIN:Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/briarproject/briar/privategroup/PrivateGroupManagerImpl$1;->$SwitchMap$org$briarproject$briar$api$privategroup$MessageType:[I

    sget-object v1, Lorg/briarproject/briar/api/privategroup/MessageType;->POST:Lorg/briarproject/briar/api/privategroup/MessageType;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/MessageType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
