.class public final Lorg/acra/security/KeyStoreHelper;
.super Ljava/lang/Object;
.source "KeyStoreHelper.java"


# static fields
.field private static final ASSET_PREFIX:Ljava/lang/String; = "asset://"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getKeyStore(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Ljava/security/KeyStore;
    .locals 3

    .line 48
    new-instance v0, Lorg/acra/util/InstanceCreator;

    invoke-direct {v0}, Lorg/acra/util/InstanceCreator;-><init>()V

    .line 49
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->keyStoreFactoryClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Lorg/acra/security/NoKeyStoreFactory;

    invoke-direct {v2}, Lorg/acra/security/NoKeyStoreFactory;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/acra/util/InstanceCreator;->create(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/acra/security/KeyStoreFactory;

    invoke-interface {v0, p0}, Lorg/acra/security/KeyStoreFactory;->create(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->resCertificate()I

    move-result v1

    .line 53
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->certificatePath()Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->certificateType()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_0

    .line 56
    new-instance v0, Lorg/acra/security/ResourceKeyStoreFactory;

    invoke-direct {v0, p1, v1}, Lorg/acra/security/ResourceKeyStoreFactory;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, p0}, Lorg/acra/security/ResourceKeyStoreFactory;->create(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v0, "asset://"

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    new-instance v0, Lorg/acra/security/AssetKeyStoreFactory;

    const-string v1, "asset://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/acra/security/AssetKeyStoreFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/acra/security/AssetKeyStoreFactory;->create(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_1
    new-instance v0, Lorg/acra/security/FileKeyStoreFactory;

    invoke-direct {v0, p1, v2}, Lorg/acra/security/FileKeyStoreFactory;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/acra/security/FileKeyStoreFactory;->create(Landroid/content/Context;)Ljava/security/KeyStore;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method
