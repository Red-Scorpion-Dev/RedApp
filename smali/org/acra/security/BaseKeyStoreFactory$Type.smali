.class public final enum Lorg/acra/security/BaseKeyStoreFactory$Type;
.super Ljava/lang/Enum;
.source "BaseKeyStoreFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/security/BaseKeyStoreFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/acra/security/BaseKeyStoreFactory$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/acra/security/BaseKeyStoreFactory$Type;

.field public static final enum CERTIFICATE:Lorg/acra/security/BaseKeyStoreFactory$Type;

.field public static final enum KEYSTORE:Lorg/acra/security/BaseKeyStoreFactory$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 48
    new-instance v0, Lorg/acra/security/BaseKeyStoreFactory$Type;

    const-string v1, "CERTIFICATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/acra/security/BaseKeyStoreFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/security/BaseKeyStoreFactory$Type;->CERTIFICATE:Lorg/acra/security/BaseKeyStoreFactory$Type;

    .line 49
    new-instance v0, Lorg/acra/security/BaseKeyStoreFactory$Type;

    const-string v1, "KEYSTORE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/acra/security/BaseKeyStoreFactory$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/acra/security/BaseKeyStoreFactory$Type;->KEYSTORE:Lorg/acra/security/BaseKeyStoreFactory$Type;

    const/4 v0, 0x2

    .line 47
    new-array v0, v0, [Lorg/acra/security/BaseKeyStoreFactory$Type;

    sget-object v1, Lorg/acra/security/BaseKeyStoreFactory$Type;->CERTIFICATE:Lorg/acra/security/BaseKeyStoreFactory$Type;

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/security/BaseKeyStoreFactory$Type;->KEYSTORE:Lorg/acra/security/BaseKeyStoreFactory$Type;

    aput-object v1, v0, v3

    sput-object v0, Lorg/acra/security/BaseKeyStoreFactory$Type;->$VALUES:[Lorg/acra/security/BaseKeyStoreFactory$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/acra/security/BaseKeyStoreFactory$Type;
    .locals 1

    .line 47
    const-class v0, Lorg/acra/security/BaseKeyStoreFactory$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/acra/security/BaseKeyStoreFactory$Type;

    return-object p0
.end method

.method public static values()[Lorg/acra/security/BaseKeyStoreFactory$Type;
    .locals 1

    .line 47
    sget-object v0, Lorg/acra/security/BaseKeyStoreFactory$Type;->$VALUES:[Lorg/acra/security/BaseKeyStoreFactory$Type;

    invoke-virtual {v0}, [Lorg/acra/security/BaseKeyStoreFactory$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/acra/security/BaseKeyStoreFactory$Type;

    return-object v0
.end method
