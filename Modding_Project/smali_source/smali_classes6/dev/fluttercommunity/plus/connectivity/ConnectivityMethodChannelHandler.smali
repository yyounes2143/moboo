.class Ldev/fluttercommunity/plus/connectivity/ConnectivityMethodChannelHandler;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ldev/fluttercommunity/plus/connectivity/Connectivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityMethodChannelHandler;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1
    .param p2    # Lio/flutter/plugin/common/MethodChannel$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "check"

    .line 2
    .line 3
    iget-object p1, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityMethodChannelHandler;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    .line 12
    .line 13
    invoke-virtual {p1}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
