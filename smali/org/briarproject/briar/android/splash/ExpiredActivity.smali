.class public Lorg/briarproject/briar/android/splash/ExpiredActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "ExpiredActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string p1, "https://briarproject.org/download.html"

    .line 31
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 32
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lorg/briarproject/briar/android/splash/ExpiredActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lorg/briarproject/briar/android/splash/ExpiredActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    invoke-virtual {p0}, Lorg/briarproject/briar/android/splash/ExpiredActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const p1, 0x7f0c0020

    .line 25
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/splash/ExpiredActivity;->setContentView(I)V

    const p1, 0x7f090096

    .line 26
    invoke-virtual {p0, p1}, Lorg/briarproject/briar/android/splash/ExpiredActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
