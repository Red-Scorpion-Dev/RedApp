.class public final Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;
.super Ljava/lang/Object;
.source "BriarReportSender_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lorg/briarproject/briar/android/reporting/BriarReportSender;",
        ">;"
    }
.end annotation


# instance fields
.field private final reporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevReporter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevReporter;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;->reporterProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/reporting/DevReporter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lorg/briarproject/briar/android/reporting/BriarReportSender;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;

    invoke-direct {v0, p0}, Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectReporter(Lorg/briarproject/briar/android/reporting/BriarReportSender;Lorg/briarproject/bramble/api/reporting/DevReporter;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lorg/briarproject/briar/android/reporting/BriarReportSender;->reporter:Lorg/briarproject/bramble/api/reporting/DevReporter;

    return-void
.end method


# virtual methods
.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0

    .line 8
    check-cast p1, Lorg/briarproject/briar/android/reporting/BriarReportSender;

    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;->injectMembers(Lorg/briarproject/briar/android/reporting/BriarReportSender;)V

    return-void
.end method

.method public injectMembers(Lorg/briarproject/briar/android/reporting/BriarReportSender;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;->reporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/briarproject/bramble/api/reporting/DevReporter;

    invoke-static {p1, v0}, Lorg/briarproject/briar/android/reporting/BriarReportSender_MembersInjector;->injectReporter(Lorg/briarproject/briar/android/reporting/BriarReportSender;Lorg/briarproject/bramble/api/reporting/DevReporter;)V

    return-void
.end method
