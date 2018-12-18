.class public Lorg/briarproject/briar/client/BriarClientModule;
.super Ljava/lang/Object;
.source "BriarClientModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method provideMessageTracker(Lorg/briarproject/briar/client/MessageTrackerImpl;)Lorg/briarproject/briar/api/client/MessageTracker;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
