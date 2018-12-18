.class public Lorg/h2/util/DbDriverActivator;
.super Ljava/lang/Object;
.source "DbDriverActivator.java"

# interfaces
.implements Lorg/osgi/framework/BundleActivator;


# static fields
.field private static final DATASOURCE_FACTORY_CLASS:Ljava/lang/String; = "org.osgi.service.jdbc.DataSourceFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lorg/osgi/framework/BundleContext;)V
    .locals 2

    .line 29
    invoke-static {}, Lorg/h2/Driver;->load()Lorg/h2/Driver;

    move-result-object v0

    :try_start_0
    const-string v1, "org.osgi.service.jdbc.DataSourceFactory"

    .line 31
    invoke-static {v1}, Lorg/h2/util/JdbcUtils;->loadUserClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    invoke-static {p1, v0}, Lorg/h2/util/OsgiDataSourceFactory;->registerService(Lorg/osgi/framework/BundleContext;Lorg/h2/Driver;)V

    return-void

    :catch_0
    return-void
.end method

.method public stop(Lorg/osgi/framework/BundleContext;)V
    .locals 0

    .line 49
    invoke-static {}, Lorg/h2/Driver;->unload()V

    return-void
.end method
