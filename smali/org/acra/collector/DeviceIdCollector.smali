.class final Lorg/acra/collector/DeviceIdCollector;
.super Lorg/acra/collector/Collector;
.source "DeviceIdCollector.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final pm:Lorg/acra/util/PackageManagerWrapper;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/acra/util/PackageManagerWrapper;Landroid/content/SharedPreferences;)V
    .locals 3

    const/4 v0, 0x1

    .line 50
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->DEVICE_ID:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 51
    iput-object p1, p0, Lorg/acra/collector/DeviceIdCollector;->context:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lorg/acra/collector/DeviceIdCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    .line 53
    iput-object p3, p0, Lorg/acra/collector/DeviceIdCollector;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private getDeviceId()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HardwareIds"
        }
    .end annotation

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/acra/collector/DeviceIdCollector;->context:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 79
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 81
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t retrieve DeviceId for : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/acra/collector/DeviceIdCollector;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 0

    .line 65
    invoke-direct {p0}, Lorg/acra/collector/DeviceIdCollector;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    new-instance p2, Lorg/acra/model/StringElement;

    invoke-direct {p2, p1}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    :goto_0
    return-object p2
.end method

.method shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/acra/ReportField;",
            ">;",
            "Lorg/acra/ReportField;",
            "Lorg/acra/builder/ReportBuilder;",
            ")Z"
        }
    .end annotation

    .line 58
    invoke-super {p0, p1, p2, p3}, Lorg/acra/collector/Collector;->shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/acra/collector/DeviceIdCollector;->prefs:Landroid/content/SharedPreferences;

    const-string p3, "acra.deviceid.enable"

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/acra/collector/DeviceIdCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    const-string p3, "android.permission.READ_PHONE_STATE"

    .line 59
    invoke-virtual {p1, p3}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
