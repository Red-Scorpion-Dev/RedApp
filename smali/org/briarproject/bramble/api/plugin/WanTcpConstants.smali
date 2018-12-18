.class public interface abstract Lorg/briarproject/bramble/api/plugin/WanTcpConstants;
.super Ljava/lang/Object;
.source "WanTcpConstants.java"


# static fields
.field public static final ID:Lorg/briarproject/bramble/api/plugin/TransportId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lorg/briarproject/bramble/api/plugin/TransportId;

    const-string v1, "org.briarproject.bramble.wan"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/bramble/api/plugin/WanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method
