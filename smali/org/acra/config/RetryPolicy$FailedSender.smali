.class public Lorg/acra/config/RetryPolicy$FailedSender;
.super Ljava/lang/Object;
.source "RetryPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/acra/config/RetryPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailedSender"
.end annotation


# instance fields
.field private final exception:Lorg/acra/sender/ReportSenderException;

.field private final sender:Lorg/acra/sender/ReportSender;


# direct methods
.method public constructor <init>(Lorg/acra/sender/ReportSender;Lorg/acra/sender/ReportSenderException;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/acra/config/RetryPolicy$FailedSender;->sender:Lorg/acra/sender/ReportSender;

    .line 45
    iput-object p2, p0, Lorg/acra/config/RetryPolicy$FailedSender;->exception:Lorg/acra/sender/ReportSenderException;

    return-void
.end method


# virtual methods
.method public getException()Lorg/acra/sender/ReportSenderException;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/acra/config/RetryPolicy$FailedSender;->exception:Lorg/acra/sender/ReportSenderException;

    return-object v0
.end method

.method public getSender()Lorg/acra/sender/ReportSender;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/acra/config/RetryPolicy$FailedSender;->sender:Lorg/acra/sender/ReportSender;

    return-object v0
.end method
