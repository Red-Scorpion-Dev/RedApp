.class public Lorg/briarproject/briar/test/TestModule;
.super Ljava/lang/Object;
.source "TestModule.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getTestDataCreator(Lorg/briarproject/briar/test/TestDataCreatorImpl;)Lorg/briarproject/briar/api/test/TestDataCreator;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
