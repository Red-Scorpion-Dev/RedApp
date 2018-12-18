.class final Lorg/acra/collector/ThreadCollector;
.super Lorg/acra/collector/Collector;
.source "ThreadCollector.java"


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    .line 35
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->THREAD_DETAILS:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    return-void
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 3

    .line 46
    invoke-virtual {p2}, Lorg/acra/builder/ReportBuilder;->getUncaughtExceptionThread()Ljava/lang/Thread;

    move-result-object p1

    .line 47
    new-instance p2, Lorg/acra/model/ComplexElement;

    invoke-direct {p2}, Lorg/acra/model/ComplexElement;-><init>()V

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "id"

    .line 50
    invoke-virtual {p1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "name"

    .line 51
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "priority"

    .line 52
    invoke-virtual {p1}, Ljava/lang/Thread;->getPriority()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "groupName"

    .line 54
    invoke-virtual {p1}, Ljava/lang/Thread;->getThreadGroup()Ljava/lang/ThreadGroup;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ThreadGroup;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 57
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p2

    .line 60
    :cond_1
    sget-object p1, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    return-object p1
.end method
