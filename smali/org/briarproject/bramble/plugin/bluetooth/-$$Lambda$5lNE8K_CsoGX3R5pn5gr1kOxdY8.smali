.class public final synthetic Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic INSTANCE:Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;

    invoke-direct {v0}, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;-><init>()V

    sput-object v0, Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;->INSTANCE:Lorg/briarproject/bramble/plugin/bluetooth/-$$Lambda$5lNE8K_CsoGX3R5pn5gr1kOxdY8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    return-object v0
.end method
