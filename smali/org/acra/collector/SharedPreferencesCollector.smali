.class final Lorg/acra/collector/SharedPreferencesCollector;
.super Lorg/acra/collector/Collector;
.source "SharedPreferencesCollector.java"


# instance fields
.field private final config:Lorg/acra/config/ACRAConfiguration;

.field private final context:Landroid/content/Context;

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/acra/config/ACRAConfiguration;Landroid/content/SharedPreferences;)V
    .locals 3

    const/4 v0, 0x2

    .line 53
    new-array v0, v0, [Lorg/acra/ReportField;

    sget-object v1, Lorg/acra/ReportField;->USER_EMAIL:Lorg/acra/ReportField;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/acra/ReportField;->SHARED_PREFERENCES:Lorg/acra/ReportField;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lorg/acra/collector/Collector;-><init>([Lorg/acra/ReportField;)V

    .line 54
    iput-object p1, p0, Lorg/acra/collector/SharedPreferencesCollector;->context:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lorg/acra/collector/SharedPreferencesCollector;->config:Lorg/acra/config/ACRAConfiguration;

    .line 56
    iput-object p3, p0, Lorg/acra/collector/SharedPreferencesCollector;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private collect()Lorg/acra/model/Element;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/acra/model/ComplexElement;

    invoke-direct {v0}, Lorg/acra/model/ComplexElement;-><init>()V

    .line 73
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    const-string v2, "default"

    .line 74
    iget-object v3, p0, Lorg/acra/collector/SharedPreferencesCollector;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v2, p0, Lorg/acra/collector/SharedPreferencesCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v2}, Lorg/acra/config/ACRAConfiguration;->additionalSharedPreferences()Lorg/acra/collections/ImmutableList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/collections/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    iget-object v4, p0, Lorg/acra/collector/SharedPreferencesCollector;->context:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 84
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SharedPreferences;

    .line 86
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 89
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "empty"

    .line 90
    invoke-virtual {v0, v3, v2}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 92
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {p0, v5}, Lorg/acra/collector/SharedPreferencesCollector;->filteredKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 94
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 97
    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v3, v4}, Lorg/acra/model/ComplexElement;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private filteredKey(Ljava/lang/String;)Z
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/acra/collector/SharedPreferencesCollector;->config:Lorg/acra/config/ACRAConfiguration;

    invoke-virtual {v0}, Lorg/acra/config/ACRAConfiguration;->excludeMatchingSharedPreferencesKeys()Lorg/acra/collections/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/collections/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method collect(Lorg/acra/ReportField;Lorg/acra/builder/ReportBuilder;)Lorg/acra/model/Element;
    .locals 2

    .line 123
    sget-object p2, Lorg/acra/collector/SharedPreferencesCollector$1;->$SwitchMap$org$acra$ReportField:[I

    invoke-virtual {p1}, Lorg/acra/ReportField;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    .line 136
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 129
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lorg/acra/collector/SharedPreferencesCollector;->collect()Lorg/acra/model/Element;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 131
    sget-object p2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v0, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Could not collect shared preferences"

    invoke-interface {p2, v0, v1, p1}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    sget-object p1, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    return-object p1

    .line 125
    :pswitch_1
    iget-object p1, p0, Lorg/acra/collector/SharedPreferencesCollector;->prefs:Landroid/content/SharedPreferences;

    const-string p2, "acra.user.email"

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    new-instance p2, Lorg/acra/model/StringElement;

    invoke-direct {p2, p1}, Lorg/acra/model/StringElement;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/acra/ACRAConstants;->NOT_AVAILABLE:Lorg/acra/model/Element;

    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
