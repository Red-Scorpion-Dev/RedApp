.class public Lorg/briarproject/briar/android/Localizer;
.super Ljava/lang/Object;
.source "Localizer.java"


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# static fields
.field private static INSTANCE:Lorg/briarproject/briar/android/Localizer;


# instance fields
.field private final locale:Ljava/util/Locale;

.field private final systemLocale:Ljava/util/Locale;


# direct methods
.method private constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 3

    .line 27
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "pref_key_language"

    const-string v2, "default"

    .line 28
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lorg/briarproject/briar/android/Localizer;->getLocaleFromTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/briarproject/briar/android/Localizer;-><init>(Ljava/util/Locale;Ljava/util/Locale;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Locale;Ljava/util/Locale;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/briarproject/briar/android/Localizer;->systemLocale:Ljava/util/Locale;

    if-nez p2, :cond_0

    .line 33
    iput-object p1, p0, Lorg/briarproject/briar/android/Localizer;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 34
    :cond_0
    iput-object p2, p0, Lorg/briarproject/briar/android/Localizer;->locale:Ljava/util/Locale;

    :goto_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lorg/briarproject/briar/android/Localizer;
    .locals 3

    const-class v0, Lorg/briarproject/briar/android/Localizer;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lorg/briarproject/briar/android/Localizer;->INSTANCE:Lorg/briarproject/briar/android/Localizer;

    if-eqz v1, :cond_0

    .line 53
    sget-object v1, Lorg/briarproject/briar/android/Localizer;->INSTANCE:Lorg/briarproject/briar/android/Localizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Localizer not initialized"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    .line 50
    monitor-exit v0

    throw v1
.end method

.method public static getLocaleFromTag(Ljava/lang/String;)Ljava/util/Locale;
    .locals 3

    const-string v0, "default"

    .line 59
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 62
    invoke-static {p0}, Ljava/util/Locale;->forLanguageTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "-"

    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "-"

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 66
    new-instance v0, Ljava/util/Locale;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object p0, p0, v2

    invoke-direct {v0, v1, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 68
    :cond_2
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/SharedPreferences;)V
    .locals 2

    const-class v0, Lorg/briarproject/briar/android/Localizer;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lorg/briarproject/briar/android/Localizer;->INSTANCE:Lorg/briarproject/briar/android/Localizer;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lorg/briarproject/briar/android/Localizer;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/Localizer;-><init>(Landroid/content/SharedPreferences;)V

    sput-object v1, Lorg/briarproject/briar/android/Localizer;->INSTANCE:Lorg/briarproject/briar/android/Localizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized reinitialize()V
    .locals 4

    const-class v0, Lorg/briarproject/briar/android/Localizer;

    monitor-enter v0

    .line 45
    :try_start_0
    sget-object v1, Lorg/briarproject/briar/android/Localizer;->INSTANCE:Lorg/briarproject/briar/android/Localizer;

    if-eqz v1, :cond_0

    .line 46
    new-instance v1, Lorg/briarproject/briar/android/Localizer;

    sget-object v2, Lorg/briarproject/briar/android/Localizer;->INSTANCE:Lorg/briarproject/briar/android/Localizer;

    iget-object v2, v2, Lorg/briarproject/briar/android/Localizer;->systemLocale:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/briarproject/briar/android/Localizer;-><init>(Ljava/util/Locale;Ljava/util/Locale;)V

    sput-object v1, Lorg/briarproject/briar/android/Localizer;->INSTANCE:Lorg/briarproject/briar/android/Localizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 44
    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public setLocale(Landroid/content/Context;)Landroid/content/Context;
    .locals 4

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 76
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 77
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    goto :goto_0

    .line 79
    :cond_0
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 80
    :goto_0
    iget-object v3, p0, Lorg/briarproject/briar/android/Localizer;->locale:Ljava/util/Locale;

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object p1

    .line 82
    :cond_1
    iget-object v2, p0, Lorg/briarproject/briar/android/Localizer;->locale:Ljava/util/Locale;

    invoke-static {v2}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 83
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_2

    .line 84
    iget-object v2, p0, Lorg/briarproject/briar/android/Localizer;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 85
    invoke-virtual {p1, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    goto :goto_1

    .line 87
    :cond_2
    iget-object v2, p0, Lorg/briarproject/briar/android/Localizer;->locale:Ljava/util/Locale;

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 89
    :goto_1
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object p1
.end method
