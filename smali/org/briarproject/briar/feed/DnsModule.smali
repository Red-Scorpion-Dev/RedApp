.class public Lorg/briarproject/briar/feed/DnsModule;
.super Ljava/lang/Object;
.source "DnsModule.java"


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
.method provideDns(Lorg/briarproject/briar/feed/NoDns;)Lokhttp3/Dns;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    return-object p1
.end method
