.class public Lorg/h2/store/LobStorageBackend$LobInputStream;
.super Ljava/io/InputStream;
.source "LobStorageBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/store/LobStorageBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LobInputStream"
.end annotation


# instance fields
.field private buffer:[B

.field private bufferPos:I

.field private final lobMapBlocks:[J

.field private lobMapIndex:I

.field private remainingBytes:J

.field final synthetic this$0:Lorg/h2/store/LobStorageBackend;


# direct methods
.method public constructor <init>(Lorg/h2/store/LobStorageBackend;JJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 659
    iput-object p1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->this$0:Lorg/h2/store/LobStorageBackend;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 663
    iget-object v0, p1, Lorg/h2/store/LobStorageBackend;->conn:Lorg/h2/jdbc/JdbcConnection;

    invoke-virtual {v0}, Lorg/h2/jdbc/JdbcConnection;->getSession()Lorg/h2/engine/SessionInterface;

    move-result-object v0

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertHoldsLock(Ljava/lang/Object;)V

    .line 664
    iget-object v0, p1, Lorg/h2/store/LobStorageBackend;->database:Lorg/h2/engine/Database;

    invoke-static {v0}, Lorg/h2/store/LobStorageBackend;->assertHoldsLock(Ljava/lang/Object;)V

    const v0, 0x15fac

    const/4 v1, 0x1

    const-wide/16 v2, -0x1

    cmp-long v4, p4, v2

    if-nez v4, :cond_1

    const-string p4, "SELECT BYTE_COUNT FROM INFORMATION_SCHEMA.LOBS WHERE ID = ?"

    .line 668
    invoke-virtual {p1, p4}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p5

    .line 669
    invoke-interface {p5, v1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 670
    invoke-interface {p5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 671
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    .line 676
    invoke-virtual {p1, p4, p5}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    move-wide p4, v2

    goto :goto_0

    .line 672
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing lob entry: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1

    .line 678
    :cond_1
    :goto_0
    iput-wide p4, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    const-string p4, "SELECT COUNT(*) FROM INFORMATION_SCHEMA.LOB_MAP WHERE LOB = ?"

    .line 681
    invoke-virtual {p1, p4}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p5

    .line 682
    invoke-interface {p5, v1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 683
    invoke-interface {p5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object v2

    .line 684
    invoke-interface {v2}, Ljava/sql/ResultSet;->next()Z

    .line 685
    invoke-interface {v2, v1}, Ljava/sql/ResultSet;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 690
    invoke-virtual {p1, p4, p5}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    .line 692
    new-array p4, v2, [J

    iput-object p4, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapBlocks:[J

    const-string p4, "SELECT BLOCK FROM INFORMATION_SCHEMA.LOB_MAP WHERE LOB = ? ORDER BY SEQ"

    .line 695
    invoke-virtual {p1, p4}, Lorg/h2/store/LobStorageBackend;->prepare(Ljava/lang/String;)Ljava/sql/PreparedStatement;

    move-result-object p5

    .line 696
    invoke-interface {p5, v1, p2, p3}, Ljava/sql/PreparedStatement;->setLong(IJ)V

    .line 697
    invoke-interface {p5}, Ljava/sql/PreparedStatement;->executeQuery()Ljava/sql/ResultSet;

    move-result-object p2

    const/4 p3, 0x0

    .line 699
    :goto_1
    invoke-interface {p2}, Ljava/sql/ResultSet;->next()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 700
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapBlocks:[J

    invoke-interface {p2, v1}, Ljava/sql/ResultSet;->getLong(I)J

    move-result-wide v2

    aput-wide v2, v0, p3

    add-int/2addr p3, v1

    goto :goto_1

    .line 703
    :cond_2
    invoke-virtual {p1, p4, p5}, Lorg/h2/store/LobStorageBackend;->reuse(Ljava/lang/String;Ljava/sql/PreparedStatement;)V

    return-void

    .line 687
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing lob entry: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/h2/message/DbException;->get(ILjava/lang/String;)Lorg/h2/message/DbException;

    move-result-object p1

    invoke-virtual {p1}, Lorg/h2/message/DbException;->getSQLException()Ljava/sql/SQLException;

    move-result-object p1

    throw p1
.end method

.method private fillBuffer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 786
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    return-void

    .line 789
    :cond_0
    iget-wide v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    .line 792
    :cond_1
    iget v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapIndex:I

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapBlocks:[J

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 793
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "halt!"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 796
    :cond_2
    :try_start_0
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->this$0:Lorg/h2/store/LobStorageBackend;

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapBlocks:[J

    iget v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapIndex:I

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Lorg/h2/store/LobStorageBackend;->readBlock(J)[B

    move-result-object v0

    iput-object v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    .line 797
    iget v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapIndex:I

    const/4 v0, 0x0

    .line 798
    iput v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 800
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private readFully([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 769
    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend$LobInputStream;->fillBuffer()V

    .line 770
    iget-wide v1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_1

    goto :goto_1

    :cond_1
    int-to-long v1, p3

    .line 773
    iget-wide v3, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v1, v1

    .line 774
    iget-object v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    array-length v2, v2

    iget v3, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 775
    iget-object v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    iget v3, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    invoke-static {v2, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 776
    iget v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    add-int/2addr v0, v1

    .line 778
    iget-wide v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :cond_3
    return v0
.end method

.method private skipSmall(J)I
    .locals 4

    .line 739
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    iget-object v1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 740
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    array-length v0, v0

    iget v1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {p1, p2}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result p1

    .line 741
    iget p2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    add-int/2addr p2, p1

    iput p2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    .line 742
    iget-wide v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 750
    iget-wide v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    invoke-static {v0, v1}, Lorg/h2/util/MathUtils;->convertLongToInt(J)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 708
    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend$LobInputStream;->fillBuffer()V

    .line 709
    iget-wide v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, -0x1

    return v0

    .line 712
    :cond_0
    iget-wide v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    .line 713
    iget-object v0, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    iget v1, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 755
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lorg/h2/store/LobStorageBackend$LobInputStream;->readFully([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 760
    invoke-direct {p0, p1, p2, p3}, Lorg/h2/store/LobStorageBackend$LobInputStream;->readFully([BII)I

    move-result p1

    return p1
.end method

.method public skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    .line 722
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/h2/store/LobStorageBackend$LobInputStream;->skipSmall(J)I

    move-result v0

    int-to-long v0, v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    :goto_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    sub-long/2addr v0, v2

    .line 726
    iget-wide v4, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    sub-long/2addr v4, v2

    iput-wide v4, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->remainingBytes:J

    .line 727
    iget v4, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapIndex:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->lobMapIndex:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 729
    iput v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->bufferPos:I

    const/4 v2, 0x0

    .line 730
    iput-object v2, p0, Lorg/h2/store/LobStorageBackend$LobInputStream;->buffer:[B

    .line 732
    :cond_2
    invoke-direct {p0}, Lorg/h2/store/LobStorageBackend$LobInputStream;->fillBuffer()V

    .line 733
    invoke-direct {p0, v0, v1}, Lorg/h2/store/LobStorageBackend$LobInputStream;->skipSmall(J)I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 734
    invoke-super {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    sub-long/2addr p1, v0

    return-wide p1
.end method
