.class public Lorg/briarproject/bramble/reporting/ReportingModule;
.super Ljava/lang/Object;
.source "ReportingModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/briarproject/bramble/reporting/ReportingModule$EagerSingletons;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideDevReporter(Lorg/briarproject/bramble/reporting/DevReporterImpl;Lorg/briarproject/bramble/api/event/EventBus;)Lorg/briarproject/bramble/api/reporting/DevReporter;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    .line 24
    invoke-interface {p2, p1}, Lorg/briarproject/bramble/api/event/EventBus;->addListener(Lorg/briarproject/bramble/api/event/EventListener;)V

    return-object p1
.end method
