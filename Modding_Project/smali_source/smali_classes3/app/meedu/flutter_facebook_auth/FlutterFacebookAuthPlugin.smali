.class public Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 5
    .line 6
    invoke-direct {v0}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    iget-object v1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 4
    .line 5
    iget-object v1, v1, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 12
    .line 13
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 2
    .line 3
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 4
    .line 5
    iget-object v0, v0, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookLoginResultDelegate;

    .line 6
    .line 7
    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v1, "app.meedu/flutter_facebook_auth"

    .line 8
    .line 9
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 3
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    sparse-switch v2, :sswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :sswitch_0
    const-string v2, "getUserData"

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v1, 0x4

    .line 25
    goto :goto_0

    .line 26
    :sswitch_1
    const-string v2, "expressLogin"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x3

    .line 36
    goto :goto_0

    .line 37
    :sswitch_2
    const-string v2, "login"

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v1, 0x2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_3
    const-string v2, "logOut"

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 v1, 0x1

    .line 58
    goto :goto_0

    .line 59
    :sswitch_4
    const-string v2, "getAccessToken"

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_4

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    const/4 v1, 0x0

    .line 69
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 70
    .line 71
    .line 72
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :pswitch_0
    const-string v0, "fields"

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/lang/String;

    .line 83
    .line 84
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 85
    .line 86
    invoke-virtual {v0, p1, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_1
    iget-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 91
    .line 92
    iget-object v0, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 93
    .line 94
    invoke-interface {v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 99
    .line 100
    .line 101
    return-void

    .line 102
    :pswitch_2
    const-string v0, "permissions"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Ljava/util/List;

    .line 109
    .line 110
    const-string v1, "loginBehavior"

    .line 111
    .line 112
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/lang/String;

    .line 117
    .line 118
    iget-object v1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 119
    .line 120
    invoke-virtual {v1, p1}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 124
    .line 125
    iget-object v1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 126
    .line 127
    invoke-interface {v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {p1, v1, v0, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Landroid/app/Activity;Ljava/util/List;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :pswitch_3
    iget-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :pswitch_4
    iget-object p1, p0, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lapp/meedu/flutter_facebook_auth/FacebookAuth;

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Lapp/meedu/flutter_facebook_auth/FacebookAuth;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :sswitch_data_0
    .sparse-switch
        -0x644fe641 -> :sswitch_4
        -0x41686296 -> :sswitch_3
        0x625ef69 -> :sswitch_2
        0x42c895d9 -> :sswitch_1
        0x6bf0af8b -> :sswitch_0
    .end sparse-switch

    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 0
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lapp/meedu/flutter_facebook_auth/FlutterFacebookAuthPlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
