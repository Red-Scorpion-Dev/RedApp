.class final enum Lorg/acra/sender/HttpSender$Method$1;
.super Lorg/acra/sender/HttpSender$Method;
.source "HttpSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/sender/HttpSender$Method;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lorg/acra/sender/HttpSender$Method;-><init>(Ljava/lang/String;ILorg/acra/sender/HttpSender$1;)V

    return-void
.end method


# virtual methods
.method createURL(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)Ljava/net/URL;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 79
    new-instance p2, Ljava/net/URL;

    invoke-direct {p2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
