.class final Lorg/acra/collector/DeviceFeaturesCollector;
.super Lorg/acra/collector/Collector;
.source "DeviceFeaturesCollector.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    .line 40
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->DEVICE_FEATURES:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 41
    iput-object p1, p0, Lorg/acra/collector/DeviceFeaturesCollector;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 4

    .line 54
    new-instance p1, Lorg/acra/model/ComplexElement;

    invoke-direct {p1}, Lorg/acra/model/ComplexElement;-><init>()V

    .line 56
    :try_start_0
    iget-object p2, p0, Lorg/acra/collector/DeviceFeaturesCollector;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 57
    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;

    move-result-object p2

    .line 58
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 59
    iget-object v3, v2, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 61
    invoke-virtual {p1, v3, v2}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v3, "glEsVersion"

    .line 63
    invoke-virtual {v2}, Landroid/content/pm/FeatureInfo;->getGlEsVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 67
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve DeviceFeatures for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/acra/collector/DeviceFeaturesCollector;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2, p2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object p1
.end method
