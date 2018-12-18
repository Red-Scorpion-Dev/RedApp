.class Lorg/h2/jdbc/JdbcBlob$2;
.super Ljava/io/PipedOutputStream;
.source "JdbcBlob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/jdbc/JdbcBlob;->setBinaryStream(J)Ljava/io/OutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/jdbc/JdbcBlob;

.field final synthetic val$task:Lorg/h2/util/Task;


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcBlob;Ljava/io/PipedInputStream;Lorg/h2/util/Task;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lorg/h2/jdbc/JdbcBlob$2;->this$0:Lorg/h2/jdbc/JdbcBlob;

    iput-object p3, p0, Lorg/h2/jdbc/JdbcBlob$2;->val$task:Lorg/h2/util/Task;

    invoke-direct {p0, p2}, Ljava/io/PipedOutputStream;-><init>(Ljava/io/PipedInputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    invoke-super {p0}, Ljava/io/PipedOutputStream;->close()V

    .line 198
    :try_start_0
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob$2;->val$task:Lorg/h2/util/Task;

    invoke-virtual {v0}, Lorg/h2/util/Task;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 200
    invoke-static {v0}, Lorg/h2/message/DbException;->convertToIOException(Ljava/lang/Throwable;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method
