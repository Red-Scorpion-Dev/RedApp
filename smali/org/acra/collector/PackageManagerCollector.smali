.class final Lorg/acra/collector/PackageManagerCollector;
.super Lorg/acra/collector/Collector;
.source "PackageManagerCollector.java"


# instance fields
.field private final pm:Lorg/acra/util/PackageManagerWrapper;


# direct methods
.method constructor <init>(Lorg/acra/util/PackageManagerWrapper;)V
    .locals 3

    const/4 v0, 0x2

    .line 39
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_NAME:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->APP_VERSION_CODE:Lorg/acra/ReportField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 40
    iput-object p1, p0, Lorg/acra/collector/PackageManagerCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    return-void
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 1

    .line 46
    iget-object p2, p0, Lorg/acra/collector/PackageManagerCollector;->pm:Lorg/acra/util/PackageManagerWrapper;

    invoke-virtual {p2}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 48
    sget-object v0, Lorg/acra/collector/PackageManagerCollector$1;->$SwitchMap$org$acra$ReportField:[I

    invoke-virtual {p1}, Lorg/acra/ReportField;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 52
    :pswitch_0
    new-instance p1, Lorg/acra/model/NumberElement;

    iget p2, p2, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/acra/model/NumberElement;-><init>(Ljava/lang/Number;)V

    return-object p1

    .line 50
    :pswitch_1
    new-instance p1, Lorg/acra/model/StringElement;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p1, p2}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 55
    :cond_0
    :goto_0
    sget-object p1, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
