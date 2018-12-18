.class Lorg/h2/util/SourceCompiler$ClassFileManager$1;
.super Ljava/security/SecureClassLoader;
.source "SourceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/h2/util/SourceCompiler$ClassFileManager;->getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/h2/util/SourceCompiler$ClassFileManager;


# direct methods
.method constructor <init>(Lorg/h2/util/SourceCompiler$ClassFileManager;)V
    .locals 0

    .line 514
    iput-object p1, p0, Lorg/h2/util/SourceCompiler$ClassFileManager$1;->this$0:Lorg/h2/util/SourceCompiler$ClassFileManager;

    invoke-direct {p0}, Ljava/security/SecureClassLoader;-><init>()V

    return-void
.end method


# virtual methods
.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lorg/h2/util/SourceCompiler$ClassFileManager$1;->this$0:Lorg/h2/util/SourceCompiler$ClassFileManager;

    iget-object v0, v0, Lorg/h2/util/SourceCompiler$ClassFileManager;->classObject:Lorg/h2/util/SourceCompiler$JavaClassObject;

    invoke-virtual {v0}, Lorg/h2/util/SourceCompiler$JavaClassObject;->getBytes()[B

    move-result-object v0

    .line 519
    array-length v1, v0

    const/4 v2, 0x0

    invoke-super {p0, p1, v0, v2, v1}, Ljava/security/SecureClassLoader;->defineClass(Ljava/lang/String;[BII)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
