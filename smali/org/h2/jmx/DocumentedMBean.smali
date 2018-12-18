.class public Lorg/h2/jmx/DocumentedMBean;
.super Ljavax/management/StandardMBean;
.source "DocumentedMBean.java"


# instance fields
.field private final interfaceName:Ljava/lang/String;

.field private resources:Ljava/util/Properties;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/management/NotCompliantMBeanException;
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljavax/management/StandardMBean;-><init>(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MBean"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/h2/jmx/DocumentedMBean;->interfaceName:Ljava/lang/String;

    return-void
.end method

.method private getResources()Ljava/util/Properties;
    .locals 3

    .line 33
    iget-object v0, p0, Lorg/h2/jmx/DocumentedMBean;->resources:Ljava/util/Properties;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/h2/jmx/DocumentedMBean;->resources:Ljava/util/Properties;

    const-string v0, "/org/h2/res/javadoc.properties"

    .line 37
    :try_start_0
    invoke-static {v0}, Lorg/h2/util/Utils;->getResource(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v1, p0, Lorg/h2/jmx/DocumentedMBean;->resources:Ljava/util/Properties;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :catch_0
    :cond_0
    iget-object v0, p0, Lorg/h2/jmx/DocumentedMBean;->resources:Ljava/util/Properties;

    return-object v0
.end method


# virtual methods
.method protected getDescription(Ljavax/management/MBeanAttributeInfo;)Ljava/lang/String;
    .locals 4

    .line 62
    invoke-virtual {p1}, Ljavax/management/MBeanAttributeInfo;->isIs()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "is"

    goto :goto_0

    :cond_0
    const-string v0, "get"

    .line 63
    :goto_0
    invoke-direct {p0}, Lorg/h2/jmx/DocumentedMBean;->getResources()Ljava/util/Properties;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/h2/jmx/DocumentedMBean;->interfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/management/MBeanAttributeInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 65
    invoke-super {p0, p1}, Ljavax/management/StandardMBean;->getDescription(Ljavax/management/MBeanAttributeInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected getDescription(Ljavax/management/MBeanInfo;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-direct {p0}, Lorg/h2/jmx/DocumentedMBean;->getResources()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lorg/h2/jmx/DocumentedMBean;->interfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 51
    invoke-super {p0, p1}, Ljavax/management/StandardMBean;->getDescription(Ljavax/management/MBeanInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getDescription(Ljavax/management/MBeanOperationInfo;)Ljava/lang/String;
    .locals 3

    .line 56
    invoke-direct {p0}, Lorg/h2/jmx/DocumentedMBean;->getResources()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/h2/jmx/DocumentedMBean;->interfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljavax/management/MBeanOperationInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-super {p0, p1}, Ljavax/management/StandardMBean;->getDescription(Ljavax/management/MBeanOperationInfo;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getImpact(Ljavax/management/MBeanOperationInfo;)I
    .locals 1

    .line 70
    invoke-virtual {p1}, Ljavax/management/MBeanOperationInfo;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
