.class public Lorg/briarproject/briar/android/reporting/BriarReportSenderFactory;
.super Ljava/lang/Object;
.source "BriarReportSenderFactory.java"

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
    .locals 0

    .line 18
    check-cast p1, Lorg/briarproject/briar/android/BriarApplication;

    .line 19
    new-instance p2, Lorg/briarproject/briar/android/reporting/BriarReportSender;

    invoke-interface {p1}, Lorg/briarproject/briar/android/BriarApplication;->getApplicationComponent()Lorg/briarproject/briar/android/AndroidComponent;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/briarproject/briar/android/reporting/BriarReportSender;-><init>(Lorg/briarproject/briar/android/AndroidComponent;)V

    return-object p2
.end method
