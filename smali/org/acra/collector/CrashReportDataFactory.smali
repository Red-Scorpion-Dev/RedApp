.class public final Lorg/acra/collector/CrashReportDataFactory;
.super Ljava/lang/Object;
.source "CrashReportDataFactory.java"


# instance fields
.field private final appStartDate:Ljava/util/Calendar;

.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;

.field private final customParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final initialConfiguration:Lorg/acra/model/Element;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;Ljava/util/Calendar;Lorg/acra/model/Element;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    .line 60
    iput-object p1, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    .line 62
    iput-object p3, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    .line 63
    iput-object p4, p0, Lorg/acra/collector/CrashReportDataFactory;->appStartDate:Ljava/util/Calendar;

    .line 64
    iput-object p5, p0, Lorg/acra/collector/CrashReportDataFactory;->initialConfiguration:Lorg/acra/model/Element;

    return-void
.end method

.method private getCollectorsOrdered()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/acra/collector/Collector;",
            ">;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v1, Lorg/acra/util/PackageManagerWrapper;

    iget-object v2, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 153
    new-instance v2, Lorg/acra/collector/LogCatCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v2, v3, v1}, Lorg/acra/collector/LogCatCollector;-><init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/util/PackageManagerWrapper;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Lorg/acra/collector/DropBoxCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v2, v3, v4, v1}, Lorg/acra/collector/DropBoxCollector;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/util/PackageManagerWrapper;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    new-instance v2, Lorg/acra/collector/StacktraceCollector;

    invoke-direct {v2}, Lorg/acra/collector/StacktraceCollector;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v2, Lorg/acra/collector/TimeCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->appStartDate:Ljava/util/Calendar;

    invoke-direct {v2, v3}, Lorg/acra/collector/TimeCollector;-><init>(Ljava/util/Calendar;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    new-instance v2, Lorg/acra/collector/SimpleValuesCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/acra/collector/SimpleValuesCollector;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v2, Lorg/acra/collector/ConfigurationCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->initialConfiguration:Lorg/acra/model/Element;

    invoke-direct {v2, v3, v4}, Lorg/acra/collector/ConfigurationCollector;-><init>(Landroid/content/Context;Lorg/acra/model/Element;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    new-instance v2, Lorg/acra/collector/MemoryInfoCollector;

    invoke-direct {v2}, Lorg/acra/collector/MemoryInfoCollector;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    new-instance v2, Lorg/acra/collector/ReflectionCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v2, v3, v4}, Lorg/acra/collector/ReflectionCollector;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    new-instance v2, Lorg/acra/collector/DisplayManagerCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/acra/collector/DisplayManagerCollector;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v2, Lorg/acra/collector/CustomDataCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/acra/collector/CustomDataCollector;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v2, Lorg/acra/collector/SharedPreferencesCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    iget-object v5, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v4, v5}, Lorg/acra/collector/SharedPreferencesCollector;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v2, Lorg/acra/collector/DeviceFeaturesCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lorg/acra/collector/DeviceFeaturesCollector;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    new-instance v2, Lorg/acra/collector/SettingsCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v2, v3, v4}, Lorg/acra/collector/SettingsCollector;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v2, Lorg/acra/collector/PackageManagerCollector;

    invoke-direct {v2, v1}, Lorg/acra/collector/PackageManagerCollector;-><init>(Lorg/acra/util/PackageManagerWrapper;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    new-instance v2, Lorg/acra/collector/DeviceIdCollector;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    iget-object v4, p0, Lorg/acra/collector/CrashReportDataFactory;->prefs:Landroid/content/SharedPreferences;

    invoke-direct {v2, v3, v1, v4}, Lorg/acra/collector/DeviceIdCollector;-><init>(Landroid/content/Context;Lorg/acra/util/PackageManagerWrapper;Landroid/content/SharedPreferences;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    new-instance v1, Lorg/acra/collector/LogFileCollector;

    iget-object v2, p0, Lorg/acra/collector/CrashReportDataFactory;->context:Landroid/content/Context;

    iget-object v3, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-direct {v1, v2, v3}, Lorg/acra/collector/LogFileCollector;-><init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v1, Lorg/acra/collector/MediaCodecListCollector;

    invoke-direct {v1}, Lorg/acra/collector/MediaCodecListCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    new-instance v1, Lorg/acra/collector/ThreadCollector;

    invoke-direct {v1}, Lorg/acra/collector/ThreadCollector;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public clearCustomData()V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public createCrashData(Lorg/acra/builder/ReportBuilder;)Lorg/acra/collector/CrashReportData;
    .locals 13

    .line 120
    new-instance v0, Lorg/acra/collector/CrashReportData;

    invoke-direct {v0}, Lorg/acra/collector/CrashReportData;-><init>()V

    .line 122
    :try_start_0
    iget-object v1, p0, Lorg/acra/collector/CrashReportDataFactory;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->reportContent()Lorg/acra/collections/ImmutableSet;

    move-result-object v1

    .line 123
    invoke-direct {p0}, Lorg/acra/collector/CrashReportDataFactory;->getCollectorsOrdered()Ljava/util/List;

    move-result-object v2

    .line 126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/acra/collector/Collector;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 129
    :try_start_1
    invoke-virtual {v3}, Lorg/acra/collector/Collector;->canCollect()[Lorg/acra/ReportField;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v7, v4, v6
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 131
    :try_start_2
    invoke-virtual {v3, v1, v7, p1}, Lorg/acra/collector/Collector;->shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 132
    invoke-virtual {v3, v7, p1}, Lorg/acra/collector/Collector;->collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lorg/acra/collector/CrashReportData;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    .line 135
    :try_start_3
    sget-object v9, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v10, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error while retrieving "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/acra/ReportField;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " data"

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v9, v10, v7, v8}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_1
    move-exception v4

    .line 139
    :try_start_4
    sget-object v5, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v6, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in collector "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v5, v6, v3, v4}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 144
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Error while retrieving crash data"

    invoke-interface {v1, v2, v3, p1}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-object v0
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/acra/collector/CrashReportDataFactory;->customParameters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
