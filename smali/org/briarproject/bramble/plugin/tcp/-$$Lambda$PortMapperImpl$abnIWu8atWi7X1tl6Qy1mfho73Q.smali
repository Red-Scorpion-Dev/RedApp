.class public final synthetic Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$PortMapperImpl$abnIWu8atWi7X1tl6Qy1mfho73Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$PortMapperImpl$abnIWu8atWi7X1tl6Qy1mfho73Q;->f$0:Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;

    iput p2, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$PortMapperImpl$abnIWu8atWi7X1tl6Qy1mfho73Q;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$PortMapperImpl$abnIWu8atWi7X1tl6Qy1mfho73Q;->f$0:Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;

    iget v1, p0, Lorg/briarproject/bramble/plugin/tcp/-$$Lambda$PortMapperImpl$abnIWu8atWi7X1tl6Qy1mfho73Q;->f$1:I

    invoke-static {v0, v1}, Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;->lambda$map$0(Lorg/briarproject/bramble/plugin/tcp/PortMapperImpl;I)V

    return-void
.end method
