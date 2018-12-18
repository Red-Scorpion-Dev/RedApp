.class public Lorg/briarproject/briar/android/BriarApplicationImpl;
.super Landroid/app/Application;
.source "BriarApplicationImpl.java"

# interfaces
.implements Lorg/briarproject/briar/android/BriarApplication;


# annotations
.annotation runtime Lorg/acra/annotation/ReportsCrashes;
    customReportContent = {
        .enum Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->BUILD_CONFIG:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->CUSTOM_DATA:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->STACK_TRACE:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->CRASH_CONFIGURATION:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->DISPLAY:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;,
        .enum Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;
    }
    deleteOldUnsentReportsOnApplicationStart = false
    logcatArguments = {
        "-d",
        "-v",
        "time",
        "*:I"
    }
    mode = .enum Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;
    reportDialogClass = Lorg/briarproject/briar/android/reporting/DevReportActivity;
    reportPrimerClass = Lorg/briarproject/briar/android/reporting/BriarReportPrimer;
    reportSenderFactoryClasses = {
        Lorg/briarproject/briar/android/reporting/BriarReportSenderFactory;
    }
    resDialogOkToast = 0x7f11008b
.end annotation


# static fields
.field private static final LOG:Ljava/util/logging/Logger;


# instance fields
.field private applicationComponent:Lorg/briarproject/briar/android/AndroidComponent;

.field private final logHandler:Lorg/briarproject/briar/android/logging/CachingLogHandler;

.field private volatile prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    const-class v0, Lorg/briarproject/briar/android/BriarApplicationImpl;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/briarproject/briar/android/BriarApplicationImpl;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 80
    new-instance v0, Lorg/briarproject/briar/android/logging/CachingLogHandler;

    invoke-direct {v0}, Lorg/briarproject/briar/android/logging/CachingLogHandler;-><init>()V

    iput-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->logHandler:Lorg/briarproject/briar/android/logging/CachingLogHandler;

    return-void
.end method

.method private enableStrictMode()V
    .locals 1

    .line 150
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 151
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 152
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 153
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 154
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    .line 155
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 156
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    .line 157
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    return-void
.end method

.method private setTheme(Landroid/content/Context;Landroid/content/SharedPreferences;)V
    .locals 2

    const-string v0, "pref_key_theme"

    const/4 v1, 0x0

    .line 139
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const v0, 0x7f11017e

    .line 142
    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/BriarApplicationImpl;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const-string v1, "pref_key_theme"

    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 146
    :cond_0
    invoke-static {p1, v0}, Lorg/briarproject/briar/android/util/UiUtils;->setTheme(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1

    .line 87
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->prefs:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 88
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->prefs:Landroid/content/SharedPreferences;

    .line 90
    :cond_0
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->prefs:Landroid/content/SharedPreferences;

    invoke-static {v0}, Lorg/briarproject/briar/android/Localizer;->initialize(Landroid/content/SharedPreferences;)V

    .line 92
    invoke-static {}, Lorg/briarproject/briar/android/Localizer;->getInstance()Lorg/briarproject/briar/android/Localizer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/briarproject/briar/android/Localizer;->setLocale(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 91
    invoke-super {p0, v0}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {p0, p1, v0}, Lorg/briarproject/briar/android/BriarApplicationImpl;->setTheme(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 94
    invoke-static {p0}, Lorg/acra/ACRA;->init(Landroid/app/Application;)V

    return-void
.end method

.method protected createApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;
    .locals 2

    .line 120
    invoke-static {}, Lorg/briarproject/briar/android/DaggerAndroidComponent;->builder()Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;

    move-result-object v0

    new-instance v1, Lorg/briarproject/briar/android/AppModule;

    invoke-direct {v1, p0}, Lorg/briarproject/briar/android/AppModule;-><init>(Landroid/app/Application;)V

    .line 121
    invoke-virtual {v0, v1}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->appModule(Lorg/briarproject/briar/android/AppModule;)Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Lorg/briarproject/briar/android/DaggerAndroidComponent$Builder;->build()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v0

    .line 126
    invoke-static {v0}, Lorg/briarproject/bramble/BrambleCoreModule;->initEagerSingletons(Lorg/briarproject/bramble/BrambleCoreEagerSingletons;)V

    .line 127
    invoke-static {v0}, Lorg/briarproject/briar/BriarCoreModule;->initEagerSingletons(Lorg/briarproject/briar/BriarCoreEagerSingletons;)V

    .line 128
    invoke-static {v0}, Lorg/briarproject/briar/android/AndroidEagerSingletons;->initEagerSingletons(Lorg/briarproject/briar/android/AndroidComponent;)V

    return-object v0
.end method

.method public getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->applicationComponent:Lorg/briarproject/briar/android/AndroidComponent;

    return-object v0
.end method

.method public getDefaultSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 172
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->prefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public getRecentLogRecords()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->logHandler:Lorg/briarproject/briar/android/logging/CachingLogHandler;

    invoke-virtual {v0}, Lorg/briarproject/briar/android/logging/CachingLogHandler;->getRecentLogRecords()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-static {}, Lorg/briarproject/briar/android/Localizer;->getInstance()Lorg/briarproject/briar/android/Localizer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/briarproject/briar/android/Localizer;->setLocale(Landroid/content/Context;)Landroid/content/Context;

    return-void
.end method

.method public onCreate()V
    .locals 5

    .line 99
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const-string v0, ""

    .line 103
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Ljava/util/logging/Logger;->getHandlers()[Ljava/util/logging/Handler;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 107
    invoke-virtual {v0, v4}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->logHandler:Lorg/briarproject/briar/android/logging/CachingLogHandler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    .line 111
    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    .line 113
    sget-object v0, Lorg/briarproject/briar/android/BriarApplicationImpl;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Created"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lorg/briarproject/briar/android/BriarApplicationImpl;->createApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object v0

    iput-object v0, p0, Lorg/briarproject/briar/android/BriarApplicationImpl;->applicationComponent:Lorg/briarproject/briar/android/AndroidComponent;

    .line 116
    new-instance v0, Lcom/vanniktech/emoji/google/GoogleEmojiProvider;

    invoke-direct {v0}, Lcom/vanniktech/emoji/google/GoogleEmojiProvider;-><init>()V

    invoke-static {v0}, Lcom/vanniktech/emoji/EmojiManager;->install(Lcom/vanniktech/emoji/EmojiProvider;)V

    return-void
.end method
