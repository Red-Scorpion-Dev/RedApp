.class public Linfo/guardianproject/trustedintents/TrustedIntents;
.super Ljava/lang/Object;
.source "TrustedIntents.java"


# static fields
.field private static instance:Linfo/guardianproject/trustedintents/TrustedIntents;

.field private static pm:Landroid/content/pm/PackageManager;


# instance fields
.field private final pinList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Linfo/guardianproject/trustedintents/ApkSignaturePin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sput-object p1, Linfo/guardianproject/trustedintents/TrustedIntents;->pm:Landroid/content/pm/PackageManager;

    .line 32
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Linfo/guardianproject/trustedintents/TrustedIntents;->pinList:Ljava/util/LinkedHashSet;

    return-void
.end method

.method public static get(Landroid/content/Context;)Linfo/guardianproject/trustedintents/TrustedIntents;
    .locals 1

    .line 36
    sget-object v0, Linfo/guardianproject/trustedintents/TrustedIntents;->instance:Linfo/guardianproject/trustedintents/TrustedIntents;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Linfo/guardianproject/trustedintents/TrustedIntents;

    invoke-direct {v0, p0}, Linfo/guardianproject/trustedintents/TrustedIntents;-><init>(Landroid/content/Context;)V

    sput-object v0, Linfo/guardianproject/trustedintents/TrustedIntents;->instance:Linfo/guardianproject/trustedintents/TrustedIntents;

    .line 38
    :cond_0
    sget-object p0, Linfo/guardianproject/trustedintents/TrustedIntents;->instance:Linfo/guardianproject/trustedintents/TrustedIntents;

    return-object p0
.end method

.method public static getCallingPackageName(Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 136
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Received Intent without sender! The Intent must be sent using startActivityForResult() and received without launchMode singleTask or singleInstance!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method


# virtual methods
.method public addTrustedSigner(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Linfo/guardianproject/trustedintents/ApkSignaturePin;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 170
    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    .line 171
    iget-object v0, p0, Linfo/guardianproject/trustedintents/TrustedIntents;->pinList:Ljava/util/LinkedHashSet;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Linfo/guardianproject/trustedintents/ApkSignaturePin;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 173
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public areSignaturesEqual([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_2

    .line 245
    :cond_0
    array-length v1, p1

    if-eqz v1, :cond_5

    array-length v1, p2

    if-nez v1, :cond_1

    goto :goto_1

    .line 247
    :cond_1
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    .line 249
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 250
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v0
.end method

.method public checkTrustedSigner(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 216
    sget-object v0, Linfo/guardianproject/trustedintents/TrustedIntents;->pm:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 217
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    invoke-virtual {p0, p1}, Linfo/guardianproject/trustedintents/TrustedIntents;->checkTrustedSigner([Landroid/content/pm/Signature;)V

    return-void
.end method

.method public checkTrustedSigner([Landroid/content/pm/Signature;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 227
    array-length v0, p1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 229
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 230
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Certificates cannot be null or empty!"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_1
    iget-object v0, p0, Linfo/guardianproject/trustedintents/TrustedIntents;->pinList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Linfo/guardianproject/trustedintents/ApkSignaturePin;

    .line 235
    invoke-virtual {v1}, Linfo/guardianproject/trustedintents/ApkSignaturePin;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Linfo/guardianproject/trustedintents/TrustedIntents;->areSignaturesEqual([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 238
    :cond_3
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "APK signatures did not match!"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 228
    :cond_4
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "signatures cannot be null or empty!"

    invoke-direct {p1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntentFromTrustedSender(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 3

    .line 105
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 106
    invoke-static {p1}, Linfo/guardianproject/trustedintents/TrustedIntents;->getCallingPackageName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 110
    :cond_0
    invoke-virtual {p0, p1}, Linfo/guardianproject/trustedintents/TrustedIntents;->isPackageNameTrusted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v0

    :cond_1
    return-object v2
.end method

.method public isPackageNameTrusted(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 86
    :try_start_0
    invoke-virtual {p0, p1}, Linfo/guardianproject/trustedintents/TrustedIntents;->checkTrustedSigner(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v0

    :catch_1
    move-exception p1

    .line 88
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v0
.end method
