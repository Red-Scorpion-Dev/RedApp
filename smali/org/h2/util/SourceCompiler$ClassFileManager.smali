.class Lorg/h2/util/SourceCompiler$ClassFileManager;
.super Ljavax/tools/ForwardingJavaFileManager;
.source "SourceCompiler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/util/SourceCompiler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassFileManager"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavax/tools/ForwardingJavaFileManager<",
        "Ljavax/tools/StandardJavaFileManager;",
        ">;"
    }
.end annotation


# instance fields
.field classObject:Lorg/h2/util/SourceCompiler$JavaClassObject;


# direct methods
.method public constructor <init>(Ljavax/tools/StandardJavaFileManager;)V
    .locals 0

    .line 509
    invoke-direct {p0, p1}, Ljavax/tools/ForwardingJavaFileManager;-><init>(Ljavax/tools/JavaFileManager;)V

    return-void
.end method


# virtual methods
.method public getClassLoader(Ljavax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;
    .locals 0

    .line 514
    new-instance p1, Lorg/h2/util/SourceCompiler$ClassFileManager$1;

    invoke-direct {p1, p0}, Lorg/h2/util/SourceCompiler$ClassFileManager$1;-><init>(Lorg/h2/util/SourceCompiler$ClassFileManager;)V

    return-object p1
.end method

.method public getJavaFileForOutput(Ljavax/tools/JavaFileManager$Location;Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;Ljavax/tools/FileObject;)Ljavax/tools/JavaFileObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 528
    new-instance p1, Lorg/h2/util/SourceCompiler$JavaClassObject;

    invoke-direct {p1, p2, p3}, Lorg/h2/util/SourceCompiler$JavaClassObject;-><init>(Ljava/lang/String;Ljavax/tools/JavaFileObject$Kind;)V

    iput-object p1, p0, Lorg/h2/util/SourceCompiler$ClassFileManager;->classObject:Lorg/h2/util/SourceCompiler$JavaClassObject;

    .line 529
    iget-object p1, p0, Lorg/h2/util/SourceCompiler$ClassFileManager;->classObject:Lorg/h2/util/SourceCompiler$JavaClassObject;

    return-object p1
.end method
