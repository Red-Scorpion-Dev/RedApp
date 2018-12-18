.class Lorg/h2/jdbc/JdbcClob$1;
.super Lorg/h2/util/Task;
.source "JdbcClob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/jdbc/JdbcClob;->setCharacterStream(J)Ljava/io/Writer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/jdbc/JdbcClob;

.field final synthetic val$c:Lorg/h2/jdbc/JdbcConnection;

.field final synthetic val$in:Ljava/io/PipedInputStream;


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcClob;Lorg/h2/jdbc/JdbcConnection;Ljava/io/PipedInputStream;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/h2/jdbc/JdbcClob$1;->this$0:Lorg/h2/jdbc/JdbcClob;

    iput-object p2, p0, Lorg/h2/jdbc/JdbcClob$1;->val$c:Lorg/h2/jdbc/JdbcConnection;

    iput-object p3, p0, Lorg/h2/jdbc/JdbcClob$1;->val$in:Ljava/io/PipedInputStream;

    invoke-direct {p0}, Lorg/h2/util/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 149
    iget-object v0, p0, Lorg/h2/jdbc/JdbcClob$1;->this$0:Lorg/h2/jdbc/JdbcClob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcClob$1;->val$c:Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcClob$1;->val$in:Ljava/io/PipedInputStream;

    invoke-static {v2}, Lorg/h2/util/IOUtils;->getReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/h2/jdbc/JdbcConnection;->createClob(Ljava/io/Reader;J)Lorg/h2/value/Value;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/jdbc/JdbcClob;->value:Lorg/h2/value/Value;

    return-void
.end method
