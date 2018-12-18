.class public final Lorg/acra/sender/HttpSenderFactory;
.super Ljava/lang/Object;
.source "HttpSenderFactory.java"

# interfaces
.implements Lorg/acra/sender/ReportSenderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;)Lorg/acra/sender/ReportSender;
    .locals 2

    .line 16
    new-instance p1, Lorg/acra/sender/HttpSender;

    invoke-virtual {p2}, Lorg/acra/config/ACRAConfiguration;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v0

    invoke-virtual {p2}, Lorg/acra/config/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/config/ACRAConfiguration;Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;)V

    return-object p1
.end method
