.class Lorg/briarproject/bramble/system/AndroidLocationUtils;
.super Ljava/lang/Object;
.source "AndroidLocationUtils.java"

# interfaces
.implements Lorg/briarproject/bramble/api/system/LocationUtils;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private final appContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lorg/briarproject/bramble/system/AndroidLocationUtils;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/bramble/system/AndroidLocationUtils;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lorg/briarproject/bramble/system/AndroidLocationUtils;->appContext:Landroid/content/Context;

    return-void
.end method

.method private getCountryFromPhoneNetwork()Ljava/lang/String;
    .locals 2

    .line 62
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidLocationUtils;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 63
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 64
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCountryFromSimCard()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/briarproject/bramble/system/AndroidLocationUtils;->appContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 70
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCurrentCountry()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lorg/briarproject/bramble/system/AndroidLocationUtils;->getCountryFromPhoneNetwork()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    sget-object v0, Lorg/briarproject/bramble/system/AndroidLocationUtils;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Falling back to SIM card country"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 55
    invoke-direct {p0}, Lorg/briarproject/bramble/system/AndroidLocationUtils;->getCountryFromSimCard()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 57
    :cond_1
    sget-object v0, Lorg/briarproject/bramble/system/AndroidLocationUtils;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Falling back to user-defined locale"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
