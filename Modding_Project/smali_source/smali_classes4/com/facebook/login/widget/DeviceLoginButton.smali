.class public final Lcom/facebook/login/widget/DeviceLoginButton;
.super Lcom/facebook/login/widget/LoginButton;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001:\u0001\u000eR$\u0010\t\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u0018\u0010\r\u001a\u00060\nR\u00020\u00018TX\u0094\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/facebook/login/widget/DeviceLoginButton;",
        "Lcom/facebook/login/widget/LoginButton;",
        "Landroid/net/Uri;",
        "Kkkkkkkkkkkkkkkkkkkkkkkkk",
        "Landroid/net/Uri;",
        "getDeviceRedirectUri",
        "()Landroid/net/Uri;",
        "setDeviceRedirectUri",
        "(Landroid/net/Uri;)V",
        "deviceRedirectUri",
        "Lcom/facebook/login/widget/LoginButton$LoginClickListener;",
        "getNewLoginClickListener",
        "()Lcom/facebook/login/widget/LoginButton$LoginClickListener;",
        "newLoginClickListener",
        "DeviceLoginClickListener",
        "facebook-login_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public Kkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# virtual methods
.method public final getDeviceRedirectUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/widget/DeviceLoginButton;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNewLoginClickListener()Lcom/facebook/login/widget/LoginButton$LoginClickListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/facebook/login/widget/DeviceLoginButton$DeviceLoginClickListener;-><init>(Lcom/facebook/login/widget/DeviceLoginButton;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final setDeviceRedirectUri(Landroid/net/Uri;)V
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/facebook/login/widget/DeviceLoginButton;->Kkkkkkkkkkkkkkkkkkkkkkkkk:Landroid/net/Uri;

    .line 2
    .line 3
    return-void
.end method
