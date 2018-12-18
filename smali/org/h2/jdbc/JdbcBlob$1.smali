.class Lorg/h2/jdbc/JdbcBlob$1;
.super Lorg/h2/util/Task;
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

.field final synthetic val$c:Lorg/h2/jdbc/JdbcConnection;

.field final synthetic val$in:Ljava/io/PipedInputStream;


# direct methods
.method constructor <init>(Lorg/h2/jdbc/JdbcBlob;Lorg/h2/jdbc/JdbcConnection;Ljava/io/PipedInputStream;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lorg/h2/jdbc/JdbcBlob$1;->this$0:Lorg/h2/jdbc/JdbcBlob;

    iput-object p2, p0, Lorg/h2/jdbc/JdbcBlob$1;->val$c:Lorg/h2/jdbc/JdbcConnection;

    iput-object p3, p0, Lorg/h2/jdbc/JdbcBlob$1;->val$in:Ljava/io/PipedInputStream;

    invoke-direct {p0}, Lorg/h2/util/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 5

    .line 190
    iget-object v0, p0, Lorg/h2/jdbc/JdbcBlob$1;->this$0:Lorg/h2/jdbc/JdbcBlob;

    iget-object v1, p0, Lorg/h2/jdbc/JdbcBlob$1;->val$c:Lorg/h2/jdbc/JdbcConnection;

    iget-object v2, p0, Lorg/h2/jdbc/JdbcBlob$1;->val$in:Ljava/io/PipedInputStream;

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lorg/h2/jdbc/JdbcConnection;->createBlob(Ljava/io/InputStream;J)Lorg/h2/value/Value;

    move-result-object v1

    iput-object v1, v0, Lorg/h2/jdbc/JdbcBlob;->value:Lorg/h2/value/Value;

    return-void
.end method
