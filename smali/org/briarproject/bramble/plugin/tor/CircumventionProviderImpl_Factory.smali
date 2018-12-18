.class public final Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;
.super Ljava/lang/Object;
.source "CircumventionProviderImpl_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;-><init>()V

    sput-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;->INSTANCE:Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;
    .locals 1

    .line 24
    sget-object v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;->INSTANCE:Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;

    return-object v0
.end method

.method public static newCircumventionProviderImpl()Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;
    .locals 1

    .line 28
    new-instance v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;-><init>()V

    return-object v0
.end method

.method public static provideInstance()Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;
    .locals 1

    .line 20
    new-instance v0, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;->get()Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;
    .locals 1

    .line 16
    invoke-static {}, Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl_Factory;->provideInstance()Lorg/briarproject/bramble/plugin/tor/CircumventionProviderImpl;

    move-result-object v0

    return-object v0
.end method
