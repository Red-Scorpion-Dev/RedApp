.class synthetic Lorg/acra/security/BaseKeyStoreFactory$1;
.super Ljava/lang/Object;
.source "BaseKeyStoreFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/security/BaseKeyStoreFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$acra$security$BaseKeyStoreFactory$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 92
    invoke-static {}, Lorg/acra/security/BaseKeyStoreFactory$Type;->values()[Lorg/acra/security/BaseKeyStoreFactory$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/acra/security/BaseKeyStoreFactory$1;->$SwitchMap$org$acra$security$BaseKeyStoreFactory$Type:[I

    :try_start_0
    sget-object v0, Lorg/acra/security/BaseKeyStoreFactory$1;->$SwitchMap$org$acra$security$BaseKeyStoreFactory$Type:[I

    sget-object v1, Lorg/acra/security/BaseKeyStoreFactory$Type;->CERTIFICATE:Lorg/acra/security/BaseKeyStoreFactory$Type;

    invoke-virtual {v1}, Lorg/acra/security/BaseKeyStoreFactory$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lorg/acra/security/BaseKeyStoreFactory$1;->$SwitchMap$org$acra$security$BaseKeyStoreFactory$Type:[I

    sget-object v1, Lorg/acra/security/BaseKeyStoreFactory$Type;->KEYSTORE:Lorg/acra/security/BaseKeyStoreFactory$Type;

    invoke-virtual {v1}, Lorg/acra/security/BaseKeyStoreFactory$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
