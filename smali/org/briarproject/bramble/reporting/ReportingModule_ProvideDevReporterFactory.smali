.class public final Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;
.super Ljava/lang/Object;
.source "ReportingModule_ProvideDevReporterFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/api/reporting/DevReporter;",
        ">;"
    }
.end annotation


# instance fields
.field private final devReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reporting/DevReporterImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final eventBusProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lorg/briarproject/bramble/reporting/ReportingModule;


# direct methods
.method public constructor <init>(Lorg/briarproject/bramble/reporting/ReportingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/reporting/ReportingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reporting/DevReporterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->module:Lorg/briarproject/bramble/reporting/ReportingModule;

    .line 26
    iput-object p2, p0, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->devReporterProvider:Ljavax/inject/Provider;

    .line 27
    iput-object p3, p0, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->eventBusProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lorg/briarproject/bramble/reporting/ReportingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/reporting/ReportingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reporting/DevReporterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;

    invoke-direct {v0, p0, p1, p2}, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;-><init>(Lorg/briarproject/bramble/reporting/ReportingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lorg/briarproject/bramble/reporting/ReportingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/reporting/DevReporter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/briarproject/bramble/reporting/ReportingModule;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/reporting/DevReporterImpl;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lorg/briarproject/bramble/api/event/EventBus;",
            ">;)",
            "Lorg/briarproject/bramble/api/reporting/DevReporter;"
        }
    .end annotation

    .line 39
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/briarproject/bramble/api/event/EventBus;

    invoke-static {p0, p1, p2}, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->proxyProvideDevReporter(Lorg/briarproject/bramble/reporting/ReportingModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/event/EventBus;)Lorg/briarproject/bramble/api/reporting/DevReporter;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideDevReporter(Lorg/briarproject/bramble/reporting/ReportingModule;Ljava/lang/Object;Lorg/briarproject/bramble/api/event/EventBus;)Lorg/briarproject/bramble/api/reporting/DevReporter;
    .locals 0

    .line 52
    check-cast p1, Lorg/briarproject/bramble/reporting/DevReporterImpl;

    .line 53
    invoke-virtual {p0, p1, p2}, Lorg/briarproject/bramble/reporting/ReportingModule;->provideDevReporter(Lorg/briarproject/bramble/reporting/DevReporterImpl;Lorg/briarproject/bramble/api/event/EventBus;)Lorg/briarproject/bramble/api/reporting/DevReporter;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 52
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/briarproject/bramble/api/reporting/DevReporter;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->get()Lorg/briarproject/bramble/api/reporting/DevReporter;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/api/reporting/DevReporter;
    .locals 3

    .line 32
    iget-object v0, p0, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->module:Lorg/briarproject/bramble/reporting/ReportingModule;

    iget-object v1, p0, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->devReporterProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->eventBusProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1, v2}, Lorg/briarproject/bramble/reporting/ReportingModule_ProvideDevReporterFactory;->provideInstance(Lorg/briarproject/bramble/reporting/ReportingModule;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lorg/briarproject/bramble/api/reporting/DevReporter;

    move-result-object v0

    return-object v0
.end method
