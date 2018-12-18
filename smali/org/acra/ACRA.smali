.class public final Lorg/acra/ACRA;
.super Ljava/lang/Object;
.source "ACRA.java"


# static fields
.field private static final ACRA_PRIVATE_PROCESS_NAME:Ljava/lang/String; = ":acra"

.field public static DEV_LOGGING:Z = false

.field public static final LOG_TAG:Ljava/lang/String; = "ACRA"

.field public static final PREF_ALWAYS_ACCEPT:Ljava/lang/String; = "acra.alwaysaccept"

.field public static final PREF_DISABLE_ACRA:Ljava/lang/String; = "acra.disable"

.field public static final PREF_ENABLE_ACRA:Ljava/lang/String; = "acra.enable"

.field public static final PREF_ENABLE_DEVICE_ID:Ljava/lang/String; = "acra.deviceid.enable"

.field public static final PREF_ENABLE_SYSTEM_LOGS:Ljava/lang/String; = "acra.syslog.enable"

.field public static final PREF_LAST_VERSION_NR:Ljava/lang/String; = "acra.lastVersionNr"

.field public static final PREF_USER_EMAIL_ADDRESS:Ljava/lang/String; = "acra.user.email"

.field private static configProxy:Lorg/acra/config/ACRAConfiguration;

.field private static errorReporterSingleton:Lorg/acra/ErrorReporter;

.field public static log:Lorg/acra/log/ACRALog;

.field private static mApplication:Landroid/app/Application;

.field private static mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Lorg/acra/log/AndroidLogDelegate;

    invoke-direct {v0}, Lorg/acra/log/AndroidLogDelegate;-><init>()V

    sput-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/SharedPreferences;)Z
    .locals 0

    .line 51
    invoke-static {p0}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result p0

    return p0
.end method

.method public static getACRASharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .line 351
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Lorg/acra/prefs/SharedPreferencesFactory;

    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    sget-object v2, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v0, v1, v2}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v0}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    .line 352
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call ACRA.getACRASharedPreferences() before ACRA.init()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getConfig()Lorg/acra/config/ACRAConfiguration;
    .locals 2

    .line 365
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    if-eqz v0, :cond_0

    .line 368
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    return-object v0

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call ACRA.getConfig() before ACRA.init()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getCurrentProcessName()Ljava/lang/String;
    .locals 2

    .line 303
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    const-string v1, "/proc/self/cmdline"

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/acra/util/IOUtils;->streamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getErrorReporter()Lorg/acra/ErrorReporter;
    .locals 2

    .line 315
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    if-eqz v0, :cond_0

    .line 318
    sget-object v0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    return-object v0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot access ErrorReporter before ACRA#init"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static init(Landroid/app/Application;)V
    .locals 4

    .line 135
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/acra/annotation/ReportsCrashes;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/acra/annotation/ReportsCrashes;

    if-nez v0, :cond_0

    .line 137
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACRA#init(Application) called but no ReportsCrashes annotation on Application "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 140
    :cond_0
    new-instance v0, Lorg/acra/config/ConfigurationBuilder;

    invoke-direct {v0, p0}, Lorg/acra/config/ConfigurationBuilder;-><init>(Landroid/app/Application;)V

    invoke-static {p0, v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/ConfigurationBuilder;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;)V
    .locals 1

    const/4 v0, 0x1

    .line 193
    invoke-static {p0, p1, v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Z)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Z)V
    .locals 12

    .line 210
    invoke-static {}, Lorg/acra/ACRA;->isACRASenderServiceProcess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Not initialising ACRA to listen for uncaught Exceptions as this is the SendWorker process and we only send reports, we don\'t capture them to avoid infinite loops"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    :goto_0
    if-nez v10, :cond_2

    .line 218
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v5, "ACRA 4.7.0+ requires Froyo or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {v1, v2, v5}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_2
    sget-object v1, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-eqz v1, :cond_3

    .line 222
    sget-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "ACRA#init called more than once. Won\'t do anything more."

    invoke-interface {p0, p1, p2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 225
    :cond_3
    sput-object p0, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    if-nez p1, :cond_4

    .line 229
    sget-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string p2, "ACRA#init called but no ACRAConfiguration provided"

    invoke-interface {p0, p1, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 232
    :cond_4
    sput-object p1, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    .line 234
    new-instance v1, Lorg/acra/prefs/SharedPreferencesFactory;

    sget-object v2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    sget-object v5, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v1, v2, v5}, Lorg/acra/prefs/SharedPreferencesFactory;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-virtual {v1}, Lorg/acra/prefs/SharedPreferencesFactory;->create()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 236
    new-instance v2, Lorg/acra/legacy/LegacyFileHandler;

    invoke-direct {v2, p0, v1}, Lorg/acra/legacy/LegacyFileHandler;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-virtual {v2}, Lorg/acra/legacy/LegacyFileHandler;->updateToCurrentVersionIfNecessary()V

    if-eqz v10, :cond_5

    .line 239
    invoke-static {v1}, Lorg/acra/ACRA;->shouldDisableACRA(Landroid/content/SharedPreferences;)Z

    move-result p0

    if-nez p0, :cond_5

    const/4 v3, 0x1

    :cond_5
    if-nez v0, :cond_7

    .line 242
    sget-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACRA is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_6

    const-string v5, "enabled"

    goto :goto_1

    :cond_6
    const-string v5, "disabled"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-virtual {v5}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", initializing..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v2, v4}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_7
    new-instance p0, Lorg/acra/ErrorReporter;

    sget-object v6, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    sget-object v7, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    xor-int/lit8 v11, v0, 0x1

    move-object v5, p0

    move-object v8, v1

    move v9, v3

    invoke-direct/range {v5 .. v11}, Lorg/acra/ErrorReporter;-><init>(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;ZZZ)V

    sput-object p0, Lorg/acra/ACRA;->errorReporterSingleton:Lorg/acra/ErrorReporter;

    if-eqz p2, :cond_a

    if-nez v0, :cond_a

    .line 249
    new-instance p0, Lorg/acra/util/ApplicationStartupProcessor;

    sget-object p2, Lorg/acra/ACRA;->mApplication:Landroid/app/Application;

    invoke-direct {p0, p2, p1}, Lorg/acra/util/ApplicationStartupProcessor;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    .line 250
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 251
    invoke-virtual {p0}, Lorg/acra/util/ApplicationStartupProcessor;->deleteUnsentReportsFromOldAppVersion()V

    .line 253
    :cond_8
    invoke-virtual {p1}, Lorg/acra/config/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 254
    invoke-virtual {p0}, Lorg/acra/util/ApplicationStartupProcessor;->deleteAllUnapprovedReportsBarOne()V

    :cond_9
    if-eqz v3, :cond_a

    .line 257
    invoke-virtual {p0}, Lorg/acra/util/ApplicationStartupProcessor;->sendApprovedReports()V

    .line 264
    :cond_a
    new-instance p0, Lorg/acra/ACRA$1;

    invoke-direct {p0}, Lorg/acra/ACRA$1;-><init>()V

    sput-object p0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 278
    sget-object p0, Lorg/acra/ACRA;->mPrefListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/config/ConfigurationBuilder;)V
    .locals 1

    const/4 v0, 0x1

    .line 157
    invoke-static {p0, p1, v0}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/ConfigurationBuilder;Z)V

    return-void
.end method

.method public static init(Landroid/app/Application;Lorg/acra/config/ConfigurationBuilder;Z)V
    .locals 2

    .line 173
    :try_start_0
    invoke-virtual {p1}, Lorg/acra/config/ConfigurationBuilder;->build()Lorg/acra/config/ACRAConfiguration;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lorg/acra/ACRA;->init(Landroid/app/Application;Lorg/acra/config/ACRAConfiguration;Z)V
    :try_end_0
    .catch Lorg/acra/config/ACRAConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Configuration Error - ACRA not started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/acra/config/ACRAConfigurationException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static isACRASenderServiceProcess()Z
    .locals 5

    .line 294
    invoke-static {}, Lorg/acra/ACRA;->getCurrentProcessName()Ljava/lang/String;

    move-result-object v0

    .line 295
    sget-boolean v1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz v1, :cond_0

    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACRA processName=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ":acra"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isInitialised()Z
    .locals 1

    .line 286
    sget-object v0, Lorg/acra/ACRA;->configProxy:Lorg/acra/config/ACRAConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setLog(Lorg/acra/log/ACRALog;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 376
    sput-object p0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    return-void

    .line 374
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "ACRALog cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static shouldDisableACRA(Landroid/content/SharedPreferences;)Z
    .locals 3

    :try_start_0
    const-string v0, "acra.enable"

    const/4 v1, 0x1

    .line 336
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "acra.disable"

    xor-int/2addr v0, v1

    .line 337
    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
