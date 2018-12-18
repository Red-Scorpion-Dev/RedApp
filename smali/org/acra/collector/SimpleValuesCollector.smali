.class final Lorg/acra/collector/SimpleValuesCollector;
.super Lorg/acra/collector/Collector;
.source "SimpleValuesCollector.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v0, 0xa

    .line 50
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->INSTALLATION_ID:Lorg/acra/ReportField;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->PACKAGE_NAME:Lorg/acra/ReportField;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->PHONE_MODEL:Lorg/acra/ReportField;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->ANDROID_VERSION:Lorg/acra/ReportField;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->BRAND:Lorg/acra/ReportField;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->PRODUCT:Lorg/acra/ReportField;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->FILE_PATH:Lorg/acra/ReportField;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->USER_IP:Lorg/acra/ReportField;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 53
    iput-object p1, p0, Lorg/acra/collector/SimpleValuesCollector;->context:Landroid/content/Context;

    return-void
.end method

.method private getApplicationFilePath()Ljava/lang/String;
    .locals 4

    .line 93
    iget-object v0, p0, Lorg/acra/collector/SimpleValuesCollector;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t retrieve ApplicationFilePath for : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/acra/collector/SimpleValuesCollector;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Couldn\'t retrieve ApplicationFilePath"

    return-object v0
.end method

.method private static getLocalIpAddress()Ljava/lang/String;
    .locals 6

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 108
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 109
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    .line 111
    invoke-virtual {v4}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v2, :cond_2

    const/16 v2, 0xa

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_2
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 121
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 1

    .line 64
    sget-object v0, Lorg/acra/collector/SimpleValuesCollector$1;->$SwitchMap$org$acra$ReportField:[I

    invoke-virtual {p1}, Lorg/acra/ReportField;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 87
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 84
    :pswitch_0
    new-instance p1, Lorg/acra/model/StringElement;

    invoke-static {}, Lorg/acra/collector/SimpleValuesCollector;->getLocalIpAddress()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 82
    :pswitch_1
    new-instance p1, Lorg/acra/model/StringElement;

    invoke-direct {p0}, Lorg/acra/collector/SimpleValuesCollector;->getApplicationFilePath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 80
    :pswitch_2
    new-instance p1, Lorg/acra/model/StringElement;

    sget-object p2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 78
    :pswitch_3
    new-instance p1, Lorg/acra/model/StringElement;

    sget-object p2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 76
    :pswitch_4
    new-instance p1, Lorg/acra/model/StringElement;

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 74
    :pswitch_5
    new-instance p1, Lorg/acra/model/StringElement;

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 72
    :pswitch_6
    new-instance p1, Lorg/acra/model/StringElement;

    iget-object p2, p0, Lorg/acra/collector/SimpleValuesCollector;->context:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 70
    :pswitch_7
    new-instance p1, Lorg/acra/model/StringElement;

    iget-object p2, p0, Lorg/acra/collector/SimpleValuesCollector;->context:Landroid/content/Context;

    invoke-static {p2}, Lorg/acra/util/Installation;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 68
    :pswitch_8
    new-instance p1, Lorg/acra/model/StringElement;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 66
    :pswitch_9
    new-instance p1, Lorg/acra/model/BooleanElement;

    invoke-virtual {p2}, Lorg/acra/builder/ReportBuilder;->isSendSilently()Z

    move-result p2

    invoke-direct {p1, p2}, Lorg/acra/model/BooleanElement;-><init>(Z)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z
    .locals 1
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
    sget-object v0, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    if-eq p2, v0, :cond_1

    sget-object v0, Lorg/acra/ReportField;->REPORT_ID:Lorg/acra/ReportField;

    if-eq p2, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Lorg/acra/collector/Collector;->shouldCollect(Ljava/util/Set;Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
