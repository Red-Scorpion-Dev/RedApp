.class Lorg/briarproject/bramble/plugin/BackoffFactoryImpl;
.super Ljava/lang/Object;
.source "BackoffFactoryImpl.java"

# interfaces
.implements Lorg/briarproject/bramble/api/plugin/BackoffFactory;


# annotations
.annotation runtime Lorg/briarproject/bramble/api/nullsafety/NotNullByDefault;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createBackoff(IID)Lorg/briarproject/bramble/api/plugin/Backoff;
    .locals 1

    .line 16
    new-instance v0, Lorg/briarproject/bramble/plugin/BackoffImpl;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/briarproject/bramble/plugin/BackoffImpl;-><init>(IID)V

    return-object v0
.end method
