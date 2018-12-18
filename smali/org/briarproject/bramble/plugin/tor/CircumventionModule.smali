.class public Lorg/briarproject/bramble/plugin/tor/CircumventionModule;
.super Ljava/lang/Object;
.source "CircumventionModule.java"


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
.method provideCircumventionProvider(Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;)Lorg/briarproject/bramble/plugin/tor/CircumventionProvider;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
