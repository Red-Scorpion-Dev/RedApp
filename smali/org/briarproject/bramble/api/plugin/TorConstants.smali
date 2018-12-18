.class public interface abstract Lorg/briarproject/bramble/api/plugin/TorConstants;
.super Ljava/lang/Object;
.source "TorConstants.java"


# static fields
.field public static final CONNECT_TO_PROXY_TIMEOUT:I = 0x1388

.field public static final CONTROL_PORT:I = 0xe6ab

.field public static final EXTRA_SOCKET_TIMEOUT:I = 0x7530

.field public static final ID:Lorg/briarproject/bramble/api/plugin/TransportId;

.field public static final PREF_TOR_MOBILE:Ljava/lang/String; = "useMobileData"

.field public static final PREF_TOR_NETWORK:Ljava/lang/String; = "network2"

.field public static final PREF_TOR_NETWORK_AUTOMATIC:I = 0x0

.field public static final PREF_TOR_NETWORK_NEVER:I = 0x3

.field public static final PREF_TOR_NETWORK_WITHOUT_BRIDGES:I = 0x1

.field public static final PREF_TOR_NETWORK_WITH_BRIDGES:I = 0x2

.field public static final PREF_TOR_PORT:Ljava/lang/String; = "port"

.field public static final PROP_ONION_V2:Ljava/lang/String; = "onion"

.field public static final PROP_ONION_V3:Ljava/lang/String; = "onion3"

.field public static final SOCKS_PORT:I = 0xe6aa


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lorg/briarproject/bramble/api/plugin/TransportId;

    const-string v1, "org.briarproject.bramble.tor"

    invoke-direct {v0, v1}, Lorg/briarproject/bramble/api/plugin/TransportId;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/briarproject/bramble/api/plugin/TorConstants;->ID:Lorg/briarproject/bramble/api/plugin/TransportId;

    return-void
.end method
