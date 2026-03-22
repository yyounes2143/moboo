.class Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;


# direct methods
.method public constructor <init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 1
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    .line 2
    .line 3
    invoke-static {p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;

    .line 2
    .line 3
    const-string v0, "none"

    .line 4
    .line 5
    invoke-static {p1, v0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
