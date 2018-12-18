.class final Lorg/acra/collector/TimeCollector;
.super Lorg/acra/collector/Collector;
.source "TimeCollector.java"


# instance fields
.field private final appStartDate:Ljava/util/Calendar;


# direct methods
.method constructor <init>(Ljava/util/Calendar;)V
    .locals 3

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->USER_APP_START_DATE:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->USER_CRASH_DATE:Lorg/acra/ReportField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 43
    iput-object p1, p0, Lorg/acra/collector/TimeCollector;->appStartDate:Ljava/util/Calendar;

    return-void
.end method

.method private static getTimeString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3

    .line 71
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZZZZZ"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 72
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 0

    .line 55
    sget-object p2, Lorg/acra/collector/TimeCollector$1;->$SwitchMap$org$acra$ReportField:[I

    invoke-virtual {p1}, Lorg/acra/ReportField;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    .line 64
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 60
    :pswitch_0
    new-instance p1, Ljava/util/GregorianCalendar;

    invoke-direct {p1}, Ljava/util/GregorianCalendar;-><init>()V

    goto :goto_0

    .line 57
    :pswitch_1
    iget-object p1, p0, Lorg/acra/collector/TimeCollector;->appStartDate:Ljava/util/Calendar;

    .line 66
    :goto_0
    new-instance p2, Lorg/acra/model/StringElement;

    invoke-static {p1}, Lorg/acra/collector/TimeCollector;->getTimeString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
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

    const/4 p1, 0x1

    return p1
.end method
