.class public Lnet/freehaven/tor/control/TorControlConnection;
.super Ljava/lang/Object;
.source "TorControlConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;,
        Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;,
        Lnet/freehaven/tor/control/TorControlConnection$Waiter;
    }
.end annotation


# instance fields
.field private volatile debugOutput:Ljava/io/PrintWriter;

.field private volatile handler:Lnet/freehaven/tor/control/EventHandler;

.field private final input:Ljava/io/BufferedReader;

.field private final output:Ljava/io/Writer;

.field private volatile parseThreadException:Ljava/io/IOException;

.field private thread:Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;

.field private final waiters:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/freehaven/tor/control/TorControlConnection$Waiter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1

    .line 88
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Ljava/io/OutputStreamWriter;

    invoke-direct {p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {p0, v0, p1}, Lnet/freehaven/tor/control/TorControlConnection;-><init>(Ljava/io/Reader;Ljava/io/Writer;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Ljava/io/Writer;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p2, p0, Lnet/freehaven/tor/control/TorControlConnection;->output:Ljava/io/Writer;

    .line 93
    instance-of p2, p1, Ljava/io/BufferedReader;

    if-eqz p2, :cond_0

    .line 94
    check-cast p1, Ljava/io/BufferedReader;

    iput-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->input:Ljava/io/BufferedReader;

    goto :goto_0

    .line 96
    :cond_0
    new-instance p2, Ljava/io/BufferedReader;

    invoke-direct {p2, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object p2, p0, Lnet/freehaven/tor/control/TorControlConnection;->input:Ljava/io/BufferedReader;

    .line 97
    :goto_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>(Ljava/net/Socket;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lnet/freehaven/tor/control/TorControlConnection;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$002(Lnet/freehaven/tor/control/TorControlConnection;Ljava/io/IOException;)Ljava/io/IOException;
    .locals 0

    .line 28
    iput-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->parseThreadException:Ljava/io/IOException;

    return-object p1
.end method

.method protected static final quote(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 120
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x22

    if-ge v1, v2, :cond_1

    .line 122
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0xa

    const/16 v5, 0x5c

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    if-eq v2, v3, :cond_0

    if-eq v2, v5, :cond_0

    goto :goto_1

    .line 129
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 131
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addOnion(Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 786
    invoke-virtual {p0, p1, p2, v0}, Lnet/freehaven/tor/control/TorControlConnection;->addOnion(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public addOnion(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3a

    .line 815
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_5

    if-eqz p2, :cond_4

    .line 817
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ADD_ONION "

    .line 820
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_0

    .line 821
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    const-string p1, " Flags="

    .line 822
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    .line 824
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 825
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    goto :goto_0

    .line 829
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 830
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 831
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v2, " Port="

    .line 832
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    .line 833
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_1

    const-string p3, ","

    .line 834
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p1, "\r\n"

    .line 836
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/freehaven/tor/control/TorControlConnection;->sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 838
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string p3, "onionAddress"

    const/4 v0, 0x0

    .line 839
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;

    iget-object v0, v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    const-string v2, "="

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-le p3, v3, :cond_3

    const-string p3, "onionPrivKey"

    .line 841
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;

    iget-object p1, p1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    const-string v0, "="

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p2

    .line 818
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must provide at least one port line"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 816
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid privKey"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addOnion(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "NEW:BEST"

    const/4 v1, 0x0

    .line 763
    invoke-virtual {p0, v0, p1, v1}, Lnet/freehaven/tor/control/TorControlConnection;->addOnion(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public authenticate([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AUTHENTICATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/freehaven/tor/control/Bytes;->hex([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 492
    invoke-virtual {p0, p1, v0}, Lnet/freehaven/tor/control/TorControlConnection;->sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method protected declared-synchronized checkThread()V
    .locals 1

    monitor-enter p0

    .line 308
    :try_start_0
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->thread:Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 309
    invoke-virtual {p0, v0}, Lnet/freehaven/tor/control/TorControlConnection;->launchThread(Z)Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 307
    monitor-exit p0

    throw v0
.end method

.method public getInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 648
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 649
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {p0, v0}, Lnet/freehaven/tor/control/TorControlConnection;->getInfo(Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    .line 651
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getInfo(Ljava/util/Collection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 620
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "GETINFO"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 621
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 622
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string p1, "\r\n"

    .line 624
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/freehaven/tor/control/TorControlConnection;->sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 626
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 627
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;

    .line 629
    iget-object v2, v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_3

    .line 632
    :cond_1
    iget-object v3, v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 634
    iget-object v4, v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->rest:Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 635
    iget-object v1, v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->rest:Ljava/lang/String;

    goto :goto_2

    .line 637
    :cond_2
    iget-object v1, v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 639
    :goto_2
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    :goto_3
    return-object v0
.end method

.method protected handleEvent(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;",
            ">;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 216
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;

    .line 217
    iget-object v1, v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 218
    iget-object v2, v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 219
    iget-object v0, v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CIRC"

    .line 220
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-eqz v1, :cond_3

    .line 221
    invoke-static {v6, v0}, Lnet/freehaven/tor/control/Bytes;->splitStr(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "LAUNCHED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    .line 226
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, ""

    .line 222
    :goto_2
    invoke-interface {v1, v2, v3, v0}, Lnet/freehaven/tor/control/EventHandler;->circuitStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "STREAM"

    .line 227
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 228
    invoke-static {v6, v0}, Lnet/freehaven/tor/control/Bytes;->splitStr(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 231
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    invoke-interface {v1, v2, v3, v0}, Lnet/freehaven/tor/control/EventHandler;->streamStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string v1, "ORCONN"

    .line 233
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 234
    invoke-static {v6, v0}, Lnet/freehaven/tor/control/Bytes;->splitStr(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lnet/freehaven/tor/control/EventHandler;->orConnStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "BW"

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 237
    invoke-static {v6, v0}, Lnet/freehaven/tor/control/Bytes;->splitStr(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    .line 239
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v4, v0

    .line 238
    invoke-interface {v1, v2, v3, v4, v5}, Lnet/freehaven/tor/control/EventHandler;->bandwidthUsed(JJ)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "NEWDESC"

    .line 240
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 241
    invoke-static {v6, v0}, Lnet/freehaven/tor/control/Bytes;->splitStr(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    invoke-interface {v1, v0}, Lnet/freehaven/tor/control/EventHandler;->newDescriptors(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    const-string v1, "DEBUG"

    .line 243
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "INFO"

    .line 244
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "NOTICE"

    .line 245
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "WARN"

    .line 246
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "ERR"

    .line 247
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    .line 250
    :cond_8
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    invoke-interface {v1, v2, v0}, Lnet/freehaven/tor/control/EventHandler;->unrecognized(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 248
    :cond_9
    :goto_3
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    invoke-interface {v1, v2, v0}, Lnet/freehaven/tor/control/EventHandler;->message(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public declared-synchronized launchThread(Z)Ljava/lang/Thread;
    .locals 1

    monitor-enter p0

    .line 287
    :try_start_0
    new-instance v0, Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;

    invoke-direct {v0, p0}, Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;-><init>(Lnet/freehaven/tor/control/TorControlConnection;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 289
    invoke-virtual {v0, p1}, Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;->setDaemon(Z)V

    .line 290
    :cond_0
    invoke-virtual {v0}, Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;->start()V

    .line 291
    iput-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->thread:Lnet/freehaven/tor/control/TorControlConnection$ControlParseThread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    .line 286
    monitor-exit p0

    throw p1
.end method

.method protected react()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    :goto_0
    invoke-virtual {p0}, Lnet/freehaven/tor/control/TorControlConnection;->readReply()Ljava/util/ArrayList;

    move-result-object v0

    .line 316
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    monitor-enter v1

    .line 319
    :try_start_0
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/freehaven/tor/control/TorControlConnection$Waiter;

    .line 321
    invoke-virtual {v2}, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->interrupt()V

    goto :goto_1

    .line 324
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 325
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Tor is no longer running"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 324
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    const/4 v1, 0x0

    .line 327
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;

    iget-object v1, v1, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->status:Ljava/lang/String;

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 328
    invoke-virtual {p0, v0}, Lnet/freehaven/tor/control/TorControlConnection;->handleEvent(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    monitor-enter v1

    .line 331
    :try_start_2
    iget-object v2, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 334
    iget-object v2, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/freehaven/tor/control/TorControlConnection$Waiter;

    .line 335
    invoke-virtual {v2, v0}, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->setResponse(Ljava/util/List;)V

    .line 337
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method protected final readReply()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :cond_0
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->input:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 150
    :cond_1
    new-instance v0, Lnet/freehaven/tor/control/TorControlSyntaxError;

    const-string v1, "Connection to Tor  broke down while receiving reply!"

    invoke-direct {v0, v1}, Lnet/freehaven/tor/control/TorControlSyntaxError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    iget-object v2, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v2, :cond_3

    .line 154
    iget-object v2, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_8

    const/4 v2, 0x0

    const/4 v4, 0x3

    .line 157
    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 159
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_7

    .line 162
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 164
    :goto_0
    iget-object v3, p0, Lnet/freehaven/tor/control/TorControlConnection;->input:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 165
    iget-object v6, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v6, :cond_4

    .line 166
    iget-object v6, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<< "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    const-string v6, "."

    .line 167
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    const-string v6, "."

    .line 169
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    .line 170
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 171
    :cond_6
    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0xa

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 175
    :cond_7
    :goto_1
    new-instance v5, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;

    invoke-direct {v5, v2, v1, v3}, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x20

    if-ne v4, v1, :cond_0

    return-object v0

    .line 156
    :cond_8
    new-instance v0, Lnet/freehaven/tor/control/TorControlSyntaxError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Line (\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\") too short"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/freehaven/tor/control/TorControlSyntaxError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public resetConf(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "RESETCONF"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, " "

    .line 406
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string p1, "\r\n"

    .line 408
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 409
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/freehaven/tor/control/TorControlConnection;->sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method protected declared-synchronized sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->parseThreadException:Ljava/io/IOException;

    if-nez v0, :cond_4

    .line 184
    invoke-virtual {p0}, Lnet/freehaven/tor/control/TorControlConnection;->checkThread()V

    .line 185
    new-instance v0, Lnet/freehaven/tor/control/TorControlConnection$Waiter;

    invoke-direct {v0}, Lnet/freehaven/tor/control/TorControlConnection$Waiter;-><init>()V

    .line 186
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 188
    :cond_0
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 189
    :try_start_1
    iget-object v2, p0, Lnet/freehaven/tor/control/TorControlConnection;->output:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 191
    invoke-virtual {p0, p2}, Lnet/freehaven/tor/control/TorControlConnection;->writeEscaped(Ljava/lang/String;)V

    .line 192
    :cond_1
    iget-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->output:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 193
    iget-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 194
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    :try_start_2
    invoke-virtual {v0}, Lnet/freehaven/tor/control/TorControlConnection$Waiter;->getResponse()Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;

    .line 203
    iget-object v1, v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->status:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 204
    :cond_2
    new-instance p1, Lnet/freehaven/tor/control/TorControlError;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error reply: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lnet/freehaven/tor/control/TorControlConnection$ReplyLine;->msg:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/freehaven/tor/control/TorControlError;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 206
    :cond_3
    monitor-exit p0

    return-object p1

    .line 199
    :catch_0
    :try_start_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Interrupted"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_0
    move-exception p1

    .line 194
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    .line 183
    :cond_4
    iget-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->parseThreadException:Ljava/io/IOException;

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    .line 182
    monitor-exit p0

    throw p1
.end method

.method public setConf(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {p0, v0}, Lnet/freehaven/tor/control/TorControlConnection;->setConf(Ljava/util/Collection;)V

    return-void
.end method

.method public setConf(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 384
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SETCONF"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 385
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x20

    .line 387
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const-string v3, " "

    .line 389
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v3, " "

    .line 390
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    .line 391
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/freehaven/tor/control/TorControlConnection;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string p1, "\r\n"

    .line 393
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/freehaven/tor/control/TorControlConnection;->sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method public setEventHandler(Lnet/freehaven/tor/control/EventHandler;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->handler:Lnet/freehaven/tor/control/EventHandler;

    return-void
.end method

.method public setEvents(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 461
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SETEVENTS"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " "

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string p1, "\r\n"

    .line 465
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/freehaven/tor/control/TorControlConnection;->sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method public shutdownTor(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIGNAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 521
    new-instance v0, Lnet/freehaven/tor/control/TorControlConnection$Waiter;

    invoke-direct {v0}, Lnet/freehaven/tor/control/TorControlConnection$Waiter;-><init>()V

    .line 522
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 524
    :cond_0
    iget-object v0, p0, Lnet/freehaven/tor/control/TorControlConnection;->waiters:Ljava/util/LinkedList;

    monitor-enter v0

    .line 525
    :try_start_0
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->output:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 526
    iget-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->output:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 527
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public takeOwnership()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "TAKEOWNERSHIP\r\n"

    const/4 v1, 0x0

    .line 752
    invoke-virtual {p0, v0, v1}, Lnet/freehaven/tor/control/TorControlConnection;->sendAndWaitForResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    return-void
.end method

.method protected final writeEscaped(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "\n"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 103
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    const-string v1, "."

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v1, "\r"

    .line 106
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 109
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    :goto_1
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 112
    :cond_2
    iget-object v1, p0, Lnet/freehaven/tor/control/TorControlConnection;->output:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->output:Ljava/io/Writer;

    const-string v0, ".\r\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    if-eqz p1, :cond_4

    .line 116
    iget-object p1, p0, Lnet/freehaven/tor/control/TorControlConnection;->debugOutput:Ljava/io/PrintWriter;

    const-string v0, ">> .\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
