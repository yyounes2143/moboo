.class public final Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0017\u0010\u000c\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\u000bJ\u001f\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0006J\u0017\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0013H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0015J\u000f\u0010\u0018\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0006J\u0017\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001a\u001a\u00020\u0019H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010%\u001a\u00020\"8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0018\u0010)\u001a\u0004\u0018\u00010&8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\'\u0010(\u00a8\u0006*"
    }
    d2 = {
        "Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;",
        "<init>",
        "()V",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "binding",
        "",
        "onAttachedToEngine",
        "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V",
        "onDetachedFromEngine",
        "Lio/flutter/plugin/common/MethodCall;",
        "call",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "result",
        "onMethodCall",
        "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "onAttachedToActivity",
        "(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V",
        "onDetachedFromActivityForConfigChanges",
        "onReattachedToActivityForConfigChanges",
        "onDetachedFromActivity",
        "Landroid/content/Intent;",
        "intent",
        "",
        "onNewIntent",
        "(Landroid/content/Intent;)Z",
        "Lio/flutter/plugin/common/MethodChannel;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lio/flutter/plugin/common/MethodChannel;",
        "mChannel",
        "Lcom/changdu/mobovideo/googleengage/EngageServiceManager;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lcom/changdu/mobovideo/googleengage/EngageServiceManager;",
        "mEngageServiceManager",
        "Landroid/app/Activity;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Landroid/app/Activity;",
        "mActivity",
        "app_outsideRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lio/flutter/plugin/common/MethodChannel$Result;ZLjava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 2
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 11
    .line 12
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string v1, "com.changdu.mobovideo.googleengage"

    .line 19
    .line 20
    invoke-direct {v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 3
    .line 4
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    move-object p1, v0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1    # Lio/flutter/plugin/common/MethodCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_d

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    const-class v3, Lcom/changdu/mobovideo/googleengage/data/ContentModel;

    .line 11
    .line 12
    sparse-switch v2, :sswitch_data_0

    .line 13
    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :sswitch_0
    const-string p1, "checkInitAction"

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :cond_0
    iget-object p1, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 28
    .line 29
    if-eqz p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_3

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    const/4 p2, 0x0

    .line 44
    const/4 v0, 0x2

    .line 45
    const-string v2, "moboreelsgoogleengage"

    .line 46
    .line 47
    invoke-static {p1, v2, p2, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 p2, 0x1

    .line 52
    if-ne p1, p2, :cond_3

    .line 53
    .line 54
    iget-object p1, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 55
    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    move-object p1, v1

    .line 59
    :cond_1
    iget-object p2, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 60
    .line 61
    if-eqz p2, :cond_2

    .line 62
    .line 63
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-eqz p2, :cond_2

    .line 68
    .line 69
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-eqz p2, :cond_2

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :cond_2
    const-string p2, "invokeGoogleEngageAction"

    .line 80
    .line 81
    invoke-virtual {p1, p2, v1}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void

    .line 85
    :sswitch_1
    const-string p1, "checkConnect"

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_4

    .line 92
    .line 93
    goto/16 :goto_4

    .line 94
    .line 95
    :cond_4
    iget-object p1, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 96
    .line 97
    if-nez p1, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    move-object v1, p1

    .line 101
    :goto_0
    new-instance p1, Lcom/changdu/mobovideo/googleengage/Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    .line 102
    .line 103
    invoke-direct {p1, p2}, Lcom/changdu/mobovideo/googleengage/Wwwwwwwwwwwwwwwwwwwwwwwwwww;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, p1}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lkotlin/jvm/functions/Function2;)V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :sswitch_2
    const-string v2, "updateContinuationData"

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-nez v0, :cond_6

    .line 117
    .line 118
    goto/16 :goto_4

    .line 119
    .line 120
    :cond_6
    sget-object p2, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 121
    .line 122
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p2, p1, v3}, Lcom/changdu/mobovideo/utils/GsonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lcom/changdu/mobovideo/googleengage/data/ContentModel;

    .line 133
    .line 134
    if-eqz p1, :cond_c

    .line 135
    .line 136
    iget-object p2, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 137
    .line 138
    if-nez p2, :cond_7

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_7
    move-object v1, p2

    .line 142
    :goto_1
    sget-object p2, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/ContentModel;->getDataList()Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v1, p2, p1}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :sswitch_3
    const-string v2, "updateRecommendData"

    .line 157
    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_8
    iget-object p2, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 166
    .line 167
    invoke-static {p2}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    sget-object p2, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 171
    .line 172
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {p2, p1, v3}, Lcom/changdu/mobovideo/utils/GsonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    check-cast p1, Lcom/changdu/mobovideo/googleengage/data/ContentModel;

    .line 183
    .line 184
    if-eqz p1, :cond_c

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    iget-object p2, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 190
    .line 191
    if-nez p2, :cond_9

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_9
    move-object v1, p2

    .line 195
    :goto_2
    sget-object p2, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/ContentModel;->getDataList()Ljava/util/ArrayList;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {v1, p2, p1}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 206
    .line 207
    .line 208
    return-void

    .line 209
    :sswitch_4
    const-string v2, "updatePublishData"

    .line 210
    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-nez v0, :cond_a

    .line 216
    .line 217
    goto :goto_4

    .line 218
    :cond_a
    sget-object p2, Lcom/changdu/mobovideo/utils/GsonUtil;->INSTANCE:Lcom/changdu/mobovideo/utils/GsonUtil;

    .line 219
    .line 220
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->arguments:Ljava/lang/Object;

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-virtual {p2, p1, v3}, Lcom/changdu/mobovideo/utils/GsonUtil;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    check-cast p1, Lcom/changdu/mobovideo/googleengage/data/ContentModel;

    .line 231
    .line 232
    if-eqz p1, :cond_c

    .line 233
    .line 234
    iget-object p2, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/changdu/mobovideo/googleengage/EngageServiceManager;

    .line 235
    .line 236
    if-nez p2, :cond_b

    .line 237
    .line 238
    goto :goto_3

    .line 239
    :cond_b
    move-object v1, p2

    .line 240
    :goto_3
    sget-object p2, Lcom/changdu/mobovideo/VideoApplication;->Companion:Lcom/changdu/mobovideo/VideoApplication$Companion;

    .line 241
    .line 242
    invoke-virtual {p2}, Lcom/changdu/mobovideo/VideoApplication$Companion;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lcom/changdu/mobovideo/VideoApplication;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-virtual {p1}, Lcom/changdu/mobovideo/googleengage/data/ContentModel;->getDataList()Ljava/util/ArrayList;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {v1, p2, p1}, Lcom/changdu/mobovideo/googleengage/EngageServiceManager;->Wwwwwwwwwwwwwwwwwww(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 251
    .line 252
    .line 253
    :cond_c
    return-void

    .line 254
    :cond_d
    :goto_4
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    nop

    .line 259
    :sswitch_data_0
    .sparse-switch
        -0x6898d730 -> :sswitch_4
        -0x473b03c3 -> :sswitch_3
        -0x16654e96 -> :sswitch_2
        0x3516f2c2 -> :sswitch_1
        0x378ada8e -> :sswitch_0
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    const-string v2, "moboreelsgoogleengage"

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    const/4 v4, 0x0

    .line 12
    invoke-static {v0, v2, v1, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-ne v0, v2, :cond_2

    .line 18
    .line 19
    iget-object v0, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lio/flutter/plugin/common/MethodChannel;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    move-object v0, v4

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    :cond_1
    const-string p1, "invokeGoogleEngageAction"

    .line 35
    .line 36
    invoke-virtual {v0, p1, v4}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return v1
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 1
    .param p1    # Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/changdu/mobovideo/googleengage/GoogleEngagePlugin;->Wwwwwwwwwwwwwwwwwwwwwww:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-interface {p1, p0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
