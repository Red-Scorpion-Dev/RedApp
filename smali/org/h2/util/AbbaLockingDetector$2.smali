.class synthetic Lorg/h2/util/AbbaLockingDetector$2;
.super Ljava/lang/Object;
.source "AbbaLockingDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/AbbaLockingDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$java$lang$Thread$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 236
    invoke-static {}, Ljava/lang/Thread$State;->values()[Ljava/lang/Thread$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/h2/util/AbbaLockingDetector$2;->$SwitchMap$java$lang$Thread$State:[I

    :try_start_0
    sget-object v0, Lorg/h2/util/AbbaLockingDetector$2;->$SwitchMap$java$lang$Thread$State:[I

    sget-object v1, Ljava/lang/Thread$State;->BLOCKED:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/h2/util/AbbaLockingDetector$2;->$SwitchMap$java$lang$Thread$State:[I

    sget-object v1, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lorg/h2/util/AbbaLockingDetector$2;->$SwitchMap$java$lang$Thread$State:[I

    sget-object v1, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    invoke-virtual {v1}, Ljava/lang/Thread$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
