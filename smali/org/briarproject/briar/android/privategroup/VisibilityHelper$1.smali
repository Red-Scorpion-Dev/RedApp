.class synthetic Lorg/briarproject/briar/android/privategroup/VisibilityHelper$1;
.super Ljava/lang/Object;
.source "VisibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/briarproject/briar/android/privategroup/VisibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$briarproject$briar$api$privategroup$Visibility:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 15
    invoke-static {}, Lorg/briarproject/briar/api/privategroup/Visibility;->values()[Lorg/briarproject/briar/api/privategroup/Visibility;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/briarproject/briar/android/privategroup/VisibilityHelper$1;->$SwitchMap$org$briarproject$briar$api$privategroup$Visibility:[I

    :try_start_0
    sget-object v0, Lorg/briarproject/briar/android/privategroup/VisibilityHelper$1;->$SwitchMap$org$briarproject$briar$api$privategroup$Visibility:[I

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->VISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/briarproject/briar/android/privategroup/VisibilityHelper$1;->$SwitchMap$org$briarproject$briar$api$privategroup$Visibility:[I

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_US:Lorg/briarproject/briar/api/privategroup/Visibility;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/briarproject/briar/android/privategroup/VisibilityHelper$1;->$SwitchMap$org$briarproject$briar$api$privategroup$Visibility:[I

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->REVEALED_BY_CONTACT:Lorg/briarproject/briar/api/privategroup/Visibility;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v0, Lorg/briarproject/briar/android/privategroup/VisibilityHelper$1;->$SwitchMap$org$briarproject$briar$api$privategroup$Visibility:[I

    sget-object v1, Lorg/briarproject/briar/api/privategroup/Visibility;->INVISIBLE:Lorg/briarproject/briar/api/privategroup/Visibility;

    invoke-virtual {v1}, Lorg/briarproject/briar/api/privategroup/Visibility;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
