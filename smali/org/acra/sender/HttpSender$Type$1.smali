.class final enum Lorg/acra/sender/HttpSender$Type$1;
.super Lorg/acra/sender/HttpSender$Type;
.source "HttpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/sender/HttpSender$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/acra/sender/HttpSender$Type;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/acra/sender/HttpSender$1;)V

    return-void
.end method


# virtual methods
.method convertReport(Lorg/acra/sender/HttpSender;Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    invoke-virtual {p1, p2}, Lorg/acra/sender/HttpSender;->convertToForm(Lorg/acra/collector/CrashReportData;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lorg/acra/http/HttpUtils;->getParamsAsFormString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
