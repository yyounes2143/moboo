.class public Lapp/meedu/flutter_facebook_auth/FacebookAuth;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

    .line 9
    .line 10
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/CallbackManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;-><init>(Lcom/facebook/CallbackManager;)V

    .line 17
    .line 18
    .line 19
    iput-object v2, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/facebook/login/LoginManager;->Wwwwwwww(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AccessToken;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$3;-><init>(Lcom/facebook/AccessToken;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :sswitch_0
    const-string v1, "KATANA_ONLY"

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x4

    .line 23
    goto :goto_0

    .line 24
    :sswitch_1
    const-string v1, "DEVICE_AUTH"

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v0, 0x3

    .line 34
    goto :goto_0

    .line 35
    :sswitch_2
    const-string v1, "WEB_ONLY"

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v0, 0x2

    .line 45
    goto :goto_0

    .line 46
    :sswitch_3
    const-string v1, "NATIVE_ONLY"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_3

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const/4 v0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :sswitch_4
    const-string v1, "DIALOG_ONLY"

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-nez p1, :cond_4

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_4
    const/4 v0, 0x0

    .line 67
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/facebook/login/LoginBehavior;->NATIVE_WITH_FALLBACK:Lcom/facebook/login/LoginBehavior;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :pswitch_0
    sget-object p1, Lcom/facebook/login/LoginBehavior;->KATANA_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :pswitch_1
    sget-object p1, Lcom/facebook/login/LoginBehavior;->DEVICE_AUTH:Lcom/facebook/login/LoginBehavior;

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :pswitch_2
    sget-object p1, Lcom/facebook/login/LoginBehavior;->WEB_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :pswitch_3
    sget-object p1, Lcom/facebook/login/LoginBehavior;->NATIVE_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 83
    .line 84
    goto :goto_1

    .line 85
    :pswitch_4
    sget-object p1, Lcom/facebook/login/LoginBehavior;->DIALOG_ONLY:Lcom/facebook/login/LoginBehavior;

    .line 86
    .line 87
    :goto_1
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Lcom/facebook/login/LoginManager;->Kkkkkkkkkkkkkkkkkkkkk(Lcom/facebook/login/LoginBehavior;)Lcom/facebook/login/LoginManager;

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :sswitch_data_0
    .sparse-switch
        -0x7c8193bd -> :sswitch_4
        -0x158b7d2c -> :sswitch_3
        0x593e1d7 -> :sswitch_2
        0x261781f1 -> :sswitch_1
        0x3eb7c715 -> :sswitch_0
    .end sparse-switch

    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/flutter/plugin/common/MethodChannel$Result;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/facebook/AccessToken;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwww()V

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    .line 13
    .line 14
    invoke-virtual {v0, p3}, Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)Z

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    if-eqz p3, :cond_1

    .line 19
    .line 20
    iget-object p3, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

    .line 21
    .line 22
    invoke-virtual {p3, p1, p2}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/util/Collection;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/AccessToken;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/login/LoginManager;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwww()V

    .line 10
    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/AccessToken;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;

    .line 6
    .line 7
    invoke-direct {v1, p0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$2;-><init>(Lapp/meedu/flutter_facebook_auth/FacebookAuth;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/facebook/GraphRequest;->Wwwwwww(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$GraphJSONObjectCallback;)Lcom/facebook/GraphRequest;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    new-instance v0, Landroid/os/Bundle;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "fields"

    .line 20
    .line 21
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lcom/facebook/GraphRequest;->Kkkkkkkkkkkkkkkkkkkkkkkk(Landroid/os/Bundle;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/facebook/GraphRequest;->Wwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/GraphRequestAsyncTask;

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/facebook/AccessToken;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->Wwwwwwwwwwwwwwwwwwww()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/facebook/AccessToken;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/facebook/AccessToken;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/AccessToken;)Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    invoke-interface {p1, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/facebook/login/LoginManager;->Wwwwwwwwwwwwwwwwwwwww()Lcom/facebook/login/LoginManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;

    .line 6
    .line 7
    invoke-direct {v1, p0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth$1;-><init>(Lapp/meedu/flutter_facebook_auth/FacebookAuth;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Lcom/facebook/login/LoginManager;->Wwww(Landroid/content/Context;Lcom/facebook/LoginStatusCallback;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
