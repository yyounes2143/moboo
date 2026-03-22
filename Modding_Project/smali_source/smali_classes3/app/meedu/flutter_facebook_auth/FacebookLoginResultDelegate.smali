.class Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/facebook/FacebookCallback;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback<",
        "Lcom/facebook/login/LoginResult;",
        ">;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/CallbackManager;


# direct methods
.method public constructor <init>(Lcom/facebook/CallbackManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/CallbackManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "The method login was called while another Facebook operation was in progress."

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "OPERATION_IN_PROGRESS"

    .line 9
    .line 10
    invoke-interface {p1, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_0
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    return p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginResult;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/facebook/login/LoginResult;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-interface {v0, p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v1, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/FacebookException;)V
    .locals 1

    .line 1
    const-string v0, "FAILED"

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p0, v0, p1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/CallbackManager;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public onCancel()V
    .locals 2

    .line 1
    const-string v0, "CANCELLED"

    .line 2
    .line 3
    const-string v1, "User has cancelled login with facebook"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/facebook/login/LoginResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/login/LoginResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
