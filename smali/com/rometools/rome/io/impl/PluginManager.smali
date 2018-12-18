.class public abstract Lcom/rometools/rome/io/impl/PluginManager;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final keys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final parentGenerator:Lcom/rometools/rome/io/WireFeedGenerator;

.field private final parentParser:Lcom/rometools/rome/io/WireFeedParser;

.field private pluginsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pluginsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final propertyValues:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, v0, v0}, Lcom/rometools/rome/io/impl/PluginManager;-><init>(Ljava/lang/String;Lcom/rometools/rome/io/WireFeedParser;Lcom/rometools/rome/io/WireFeedGenerator;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Lcom/rometools/rome/io/WireFeedParser;Lcom/rometools/rome/io/WireFeedGenerator;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lcom/rometools/rome/io/impl/PluginManager;->parentParser:Lcom/rometools/rome/io/WireFeedParser;

    .line 55
    iput-object p3, p0, Lcom/rometools/rome/io/impl/PluginManager;->parentGenerator:Lcom/rometools/rome/io/WireFeedGenerator;

    .line 56
    invoke-static {}, Lcom/rometools/rome/io/impl/PropertiesLoader;->getPropertiesLoader()Lcom/rometools/rome/io/impl/PropertiesLoader;

    move-result-object p2

    const-string p3, ", "

    invoke-virtual {p2, p1, p3}, Lcom/rometools/rome/io/impl/PropertiesLoader;->getTokenizedProperty(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/io/impl/PluginManager;->propertyValues:[Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/PluginManager;->loadPlugins()V

    .line 58
    iget-object p1, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    .line 59
    iget-object p1, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsList:Ljava/util/List;

    .line 60
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/rometools/rome/io/impl/PluginManager;->keys:Ljava/util/List;

    return-void
.end method

.method private getClasses()[Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 149
    sget-object v0, Lcom/rometools/rome/feed/impl/ConfigurableClassLoader;->INSTANCE:Lcom/rometools/rome/feed/impl/ConfigurableClassLoader;

    invoke-virtual {v0}, Lcom/rometools/rome/feed/impl/ConfigurableClassLoader;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 151
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "rome.pluginmanager.useloadclass"

    const-string v3, "false"

    .line 153
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 155
    iget-object v3, p0, Lcom/rometools/rome/io/impl/PluginManager;->propertyValues:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    if-eqz v2, :cond_0

    .line 158
    invoke-virtual {v0, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    goto :goto_1

    :cond_0
    const/4 v7, 0x1

    .line 160
    invoke-static {v6, v7, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    .line 162
    :goto_1
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Class;

    .line 166
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0
.end method

.method private loadPlugins()V
    .locals 8

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsList:Ljava/util/List;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    const/4 v1, 0x0

    .line 91
    :try_start_0
    invoke-direct {p0}, Lcom/rometools/rome/io/impl/PluginManager;->getClasses()[Ljava/lang/Class;

    move-result-object v2

    .line 92
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 94
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_2

    .line 95
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 97
    instance-of v5, v1, Lcom/rometools/rome/io/DelegatingModuleParser;

    if-eqz v5, :cond_0

    .line 98
    move-object v5, v1

    check-cast v5, Lcom/rometools/rome/io/DelegatingModuleParser;

    iget-object v7, p0, Lcom/rometools/rome/io/impl/PluginManager;->parentParser:Lcom/rometools/rome/io/WireFeedParser;

    invoke-interface {v5, v7}, Lcom/rometools/rome/io/DelegatingModuleParser;->setFeedParser(Lcom/rometools/rome/io/WireFeedParser;)V

    .line 101
    :cond_0
    instance-of v5, v1, Lcom/rometools/rome/io/DelegatingModuleGenerator;

    if-eqz v5, :cond_1

    .line 102
    move-object v5, v1

    check-cast v5, Lcom/rometools/rome/io/DelegatingModuleGenerator;

    iget-object v7, p0, Lcom/rometools/rome/io/impl/PluginManager;->parentGenerator:Lcom/rometools/rome/io/WireFeedGenerator;

    invoke-interface {v5, v7}, Lcom/rometools/rome/io/DelegatingModuleGenerator;->setFeedGenerator(Lcom/rometools/rome/io/WireFeedGenerator;)V

    .line 105
    :cond_1
    iget-object v5, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    invoke-virtual {p0, v1}, Lcom/rometools/rome/io/impl/PluginManager;->getKey(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v5, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v4, v4, 0x1

    move-object v1, v6

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_4

    .line 112
    :cond_2
    :try_start_2
    iget-object v2, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 113
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 119
    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 120
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 122
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :cond_5
    return-void

    :catch_2
    move-exception v0

    .line 129
    :goto_3
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not instantiate plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_3
    move-exception v0

    .line 127
    :goto_4
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not instantiate plugin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected abstract getKey(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/rometools/rome/io/impl/PluginManager;->keys:Ljava/util/List;

    return-object v0
.end method

.method protected getPlugin(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected getPluginMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getPlugins()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/rometools/rome/io/impl/PluginManager;->pluginsList:Ljava/util/List;

    return-object v0
.end method
