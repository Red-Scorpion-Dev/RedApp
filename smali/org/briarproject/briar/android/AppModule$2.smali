.class Lorg/briarproject/briar/android/AppModule$2;
.super Ljava/lang/Object;
.source "AppModule.java"

# interfaces
.implements Lorg/briarproject/bramble/api/reporting/DevConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/briarproject/briar/android/AppModule;->provideDevConfig(Landroid/app/Application;Lorg/briarproject/bramble/api/crypto/CryptoComponent;)Lorg/briarproject/bramble/api/reporting/DevConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/briarproject/briar/android/AppModule;

.field final synthetic val$app:Landroid/app/Application;

.field final synthetic val$crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;


# direct methods
.method constructor <init>(Lorg/briarproject/briar/android/AppModule;Lorg/briarproject/bramble/api/crypto/CryptoComponent;Landroid/app/Application;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lorg/briarproject/briar/android/AppModule$2;->this$0:Lorg/briarproject/briar/android/AppModule;

    iput-object p2, p0, Lorg/briarproject/briar/android/AppModule$2;->val$crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    iput-object p3, p0, Lorg/briarproject/briar/android/AppModule$2;->val$app:Landroid/app/Application;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDevOnionAddress()Ljava/lang/String;
    .locals 1

    const-string v0, "cwqmubyvnig3wag3.onion"

    return-object v0
.end method

.method public getDevPublicKey()Lorg/briarproject/bramble/api/crypto/PublicKey;
    .locals 2

    .line 151
    :try_start_0
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule$2;->val$crypto:Lorg/briarproject/bramble/api/crypto/CryptoComponent;

    invoke-interface {v0}, Lorg/briarproject/bramble/api/crypto/CryptoComponent;->getMessageKeyParser()Lorg/briarproject/bramble/api/crypto/KeyParser;

    move-result-object v0

    const-string v1, "0457AD1619FBD433D5E13D55606970546E8FC5F4EF83A8C18718E8BF59BB601FE20CCB233F06714A1BED370141A04C81808CF2EE95C7323CDEE5999670BD11741F65ED691F355518E1A7E5E54BDDCA4CB86BD8DB8842BBFD706EBD9708DB8C044FF006F215D83A66B3AEBAD674C4C1C4218121A38FA1FDD4A51E77588D90BD9652"

    .line 152
    invoke-static {v1}, Lorg/briarproject/bramble/util/StringUtils;->fromHexString(Ljava/lang/String;)[B

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Lorg/briarproject/bramble/api/crypto/KeyParser;->parsePublicKey([B)Lorg/briarproject/bramble/api/crypto/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReportDir()Ljava/io/File;
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/briarproject/briar/android/AppModule$2;->val$app:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lorg/briarproject/bramble/util/AndroidUtils;->getReportDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
