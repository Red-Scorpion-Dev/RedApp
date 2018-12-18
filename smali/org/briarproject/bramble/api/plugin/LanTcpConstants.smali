.class public interface abstract Lorg/briarproject/bramble/api/plugin/LanTcpConstants;
.super Ljava/lang/Object;
.source "LanTcpConstants.java"


# static fields
.field public static final ID:Lorg/briarproject/bramble/api/plugin/TransportId;

.field public static final PREF_LAN_IP_PORTS:Ljava/lang/String; = "ipPorts"

.field public static final PROP_IP_PORTS:Ljava/lang/String; = "ipPorts"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lorg/briarproject/bramble/api/plugin/TransportId;

    const-string v1, "org.briarproject.bramble.lan"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/bramble/api/plugin/LanTcpConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method
