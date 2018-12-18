.class public final Lorg/acra/sender/EmailIntentSenderFactory;
.super Ljava/lang/Object;
.source "EmailIntentSenderFactory.java"

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

    .line 16
    new-instance p1, Lorg/acra/sender/EmailIntentSender;

    invoke-direct {p1, p2}, Lorg/acra/sender/EmailIntentSender;-><init>(Lorg/acra/config/ACRAConfiguration;)V

    return-object p1
.end method
