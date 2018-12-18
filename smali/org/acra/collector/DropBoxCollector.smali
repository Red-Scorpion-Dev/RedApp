.class final Lorg/acra/collector/DropBoxCollector;
.super Lorg/acra/collector/Collector;
.source "DropBoxCollector.java"


# static fields
.field private static final SYSTEM_TAGS:[Ljava/lang/String;


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;

.field private final dateFormat:Ljava/text/SimpleDateFormat;

.field private final pm:Lorg/acra/util/PackageManagerWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xf

    .line 65
    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "system_app_anr"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "system_app_wtf"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "system_app_crash"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "system_server_anr"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "system_server_wtf"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "system_server_crash"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "BATTERY_DISCHARGE_INFO"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "SYSTEM_RECOVERY_LOG"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "SYSTEM_BOOT"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string v1, "SYSTEM_LAST_KMSG"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string v1, "APANIC_CONSOLE"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string v1, "APANIC_THREADS"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string v1, "SYSTEM_RESTART"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string v1, "SYSTEM_TOMBSTONE"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string v1, "data_app_strictmode"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sput-object v0, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Lorg/acra/util/PackageManagerWrapper;)V
    .locals 3

    const/4 v0, 0x1

    .line 59
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->DROPBOX:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 70
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lorg/acra/collector/DropBoxCollector;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 60
    iput-object p1, p0, Lorg/acra/collector/DropBoxCollector;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lorg/acra/collector/DropBoxCollector;->config:Lorg/acra/config/ACRAConfiguration;

    .line 62
    iput-object p3, p0, Lorg/acra/collector/DropBoxCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    return-void
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 12

    .line 82
    :try_start_0
    iget-object p1, p0, Lorg/acra/collector/DropBoxCollector;->context:Landroid/content/Context;

    const-string p2, "dropbox"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/DropBoxManager;

    .line 84
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/16 v0, 0xc

    .line 85
    iget-object v1, p0, Lorg/acra/collector/DropBoxCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v1}, Lorg/acra/config/ACRAConfiguration;->dropboxCollectionMinutes()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Ljava/util/Calendar;->roll(II)V

    .line 86
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 87
    iget-object v2, p0, Lorg/acra/collector/DropBoxCollector;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 89
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    iget-object v3, p0, Lorg/acra/collector/DropBoxCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->includeDropBoxSystemTags()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 91
    sget-object v3, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    iget-object v3, p0, Lorg/acra/collector/DropBoxCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v3}, Lorg/acra/config/ACRAConfiguration;->additionalDropBoxTags()Lorg/acra/collections/ImmutableList;

    move-result-object v3

    .line 94
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 95
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 98
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 99
    sget-object p1, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    return-object p1

    .line 102
    :cond_2
    new-instance v3, Lorg/acra/model/ComplexElement;

    invoke-direct {v3}, Lorg/acra/model/ComplexElement;-><init>()V

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    invoke-virtual {p1, v4, v0, v1}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v6

    const/16 v7, 0xa

    if-nez v6, :cond_3

    const-string v4, "Nothing."

    .line 107
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v6, :cond_5

    .line 111
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v8

    .line 112
    invoke-virtual {p2, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v10, 0x40

    .line 113
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lorg/acra/collector/DropBoxCollector;->dateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v10, 0x1f4

    .line 114
    invoke-virtual {v6, v10}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    const-string v11, "Text: "

    .line 116
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const-string v10, "Not Text!"

    .line 118
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    :goto_2
    invoke-virtual {v6}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 121
    invoke-virtual {p1, v4, v8, v9}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v6

    goto :goto_1

    .line 123
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    return-object v3

    :catch_0
    nop

    .line 128
    sget-boolean p1, Lorg/acra/ACRA;->DEV_LOGGING:Z

    if-eqz p1, :cond_7

    sget-object p1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object p2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v0, "DropBoxManager not available."

    invoke-interface {p1, p2, v0}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_7
    sget-object p1, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    return-object p1
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

    .line 136
    invoke-super {p0, p1, p2, p3}, Lorg/acra/collector/Collector;->shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/acra/collector/DropBoxCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    const-string p2, "android.permission.READ_LOGS"

    invoke-virtual {p1, p2}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
