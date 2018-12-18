.class public Lorg/h2/message/TraceWriterAdapter;
.super Ljava/lang/Object;
.source "TraceWriterAdapter.java"

# interfaces
.implements Lorg/h2/message/TraceWriter;


# instance fields
.field private final logger:Lorg/slf4j/Logger;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "h2database"

    .line 27
    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    return-void
.end method


# virtual methods
.method public isEnabled(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 38
    :pswitch_0
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p1

    return p1

    .line 40
    :pswitch_1
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isInfoEnabled()Z

    move-result p1

    return p1

    .line 42
    :pswitch_2
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1}, Lorg/slf4j/Logger;->isErrorEnabled()Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->name:Ljava/lang/String;

    return-void
.end method

.method public write(IILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    sget-object v0, Lorg/h2/message/Trace;->MODULE_NAMES:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/h2/message/TraceWriterAdapter;->write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public write(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 55
    invoke-virtual {p0, p1}, Lorg/h2/message/TraceWriterAdapter;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lorg/h2/message/TraceWriterAdapter;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/h2/message/TraceWriterAdapter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 63
    :pswitch_0
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 66
    :pswitch_1
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 69
    :pswitch_2
    iget-object p1, p0, Lorg/h2/message/TraceWriterAdapter;->logger:Lorg/slf4j/Logger;

    invoke-interface {p1, p2, p4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
